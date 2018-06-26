Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fXhkF-0001x9-BE
 for barebox@lists.infradead.org; Tue, 26 Jun 2018 06:46:33 +0000
Date: Tue, 26 Jun 2018 08:46:18 +0200
From: Sascha Hauer <sha@pengutronix.de>
Message-ID: <20180626064618.j6mjqjpmff46hqwd@pengutronix.de>
References: <20180622163012.1590-1-nikita.yoush@cogentembedded.com>
 <20180625123433.jo75zl77bovldzc2@pengutronix.de>
 <1ef31458-200c-b132-5b86-fabdc92a810d@cogentembedded.com>
 <20180626060034.75o36ndv2bdawwk2@pengutronix.de>
 <ed26a296-8bf4-f328-c900-2606be033506@cogentembedded.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ed26a296-8bf4-f328-c900-2606be033506@cogentembedded.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] net: avoid assigning ethaddr to wrong devices
To: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org, Chris Healy <cphealy@gmail.com>

On Tue, Jun 26, 2018 at 09:04:02AM +0300, Nikita Yushchenko wrote:
> >>>> It can happen that device tree contains ethernetN alias pointing to
> >>>> valid device, but that device is not supported by [running instance of]
> >>>> barebox. Then ethN remains unassigned, and can be later captured by
> >>>> dynamically registered device such as usbnet.
> >>>>
> >>>> For such "stranger" device, ethaddr preconfigured for ethN should not be
> >>>> assigned. Also, ethaddr of such device should not be written to
> >>>> ethernetN node of device tree passed to kernel being booted.
> >>>>
> >>>
> >>> There's only one usecase for matching edev->dev.id against the ethernetx
> >>> alias which has been introduced with:
> >>>
> >>> | commit a78431c7fc42193be252417bf06f7cc61765a51e
> >>> | Author: Renaud Barbier <renaud.barbier@ge.com>
> >>> | Date:   Wed Sep 4 08:37:03 2013 +0200
> >>> | 
> >>> |     net, of: fixup MAC address by alias
> >>> |     
> >>> |     If a network device has not been registered from the devicetree, we may
> >>> |     still find it by its alias in the devicetree. This way also platform based
> >>> |     network devices can obtain a valid MAC address in the devicetree.
> >>> |     
> >>> |     Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
> >>> |     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> >>>
> >>> Your eth_is_stranger() returns true for the devices that Renaud wanted
> >>> to support, so instead of applying your patch we could equally well
> >>> revert that from Renaud.
> >>>
> >>> I don't have a good idea right now how to fix this. Maybe we have to
> >>> make sure that ethernet devices from dynamic buses never get an id
> >>> asigned that is also present in the aliases node.
> >>
> >> eth_is_stranger() for ethN returns true only if ethernetN alias exists
> >> AND ethN either does not have device tree node, or has node different
> >> from what is pointed by alias.
> >>
> >> My assumption was that if under linux ethdevice is configured via device
> >> tree node with ethernetX alias, then under barebox it should also be
> >> configured via device tree node with same alias.
> >>
> >> You mean, there is hardware that breaks this assumption?
> >> Which hardware it is?
> > 
> > It's PowerPC hardware which on barebox is not probed from devicetree, so
> > indeed there is no device node.
> 
> But if no device tree, then
>   alias = of_find_node_by_alias(of_get_root_node(), eth);
> should return NULL, and eth_is_stranger() should return false, thus
> making my patch no-op?

Ok, you are right. I misread the code. You call of_find_node_by_alias()
on the internal device tree, not the one the Kernel is started with, so
indeed eth_is_stranger() should return false.

Nevertheless I do not like this patch very much as it adds more code to
a place that is already hard to understand in all of its consequences.

I would like to explore the route that we assign these dynamic devices
an id that is not present in any alias node. That could be done by
searching for the highest alias number and give the dynamic devices one
number higher. Would that be doable?

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

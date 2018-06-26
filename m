Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fXiLV-0008A0-L6
 for barebox@lists.infradead.org; Tue, 26 Jun 2018 07:25:10 +0000
Date: Tue, 26 Jun 2018 09:24:48 +0200
From: Sascha Hauer <sha@pengutronix.de>
Message-ID: <20180626072448.smynzauggpjcyknd@pengutronix.de>
References: <20180622163012.1590-1-nikita.yoush@cogentembedded.com>
 <20180625123433.jo75zl77bovldzc2@pengutronix.de>
 <1ef31458-200c-b132-5b86-fabdc92a810d@cogentembedded.com>
 <20180626060034.75o36ndv2bdawwk2@pengutronix.de>
 <ed26a296-8bf4-f328-c900-2606be033506@cogentembedded.com>
 <20180626064618.j6mjqjpmff46hqwd@pengutronix.de>
 <56f9d1d6-1129-b526-00d2-21fd17c93368@cogentembedded.com>
 <db6e69a1-ee6a-d635-c57b-1edd913fee1c@cogentembedded.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <db6e69a1-ee6a-d635-c57b-1edd913fee1c@cogentembedded.com>
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

On Tue, Jun 26, 2018 at 10:09:36AM +0300, Nikita Yushchenko wrote:
> 
> 
> 26.06.2018 10:05, Nikita Yushchenko wrote:
> >>>> It's PowerPC hardware which on barebox is not probed from devicetree, so
> >>>> indeed there is no device node.
> >>>
> >>> But if no device tree, then
> >>>   alias = of_find_node_by_alias(of_get_root_node(), eth);
> >>> should return NULL, and eth_is_stranger() should return false, thus
> >>> making my patch no-op?
> >>
> >> Ok, you are right. I misread the code. You call of_find_node_by_alias()
> >> on the internal device tree, not the one the Kernel is started with, so
> >> indeed eth_is_stranger() should return false.
> >>
> >> Nevertheless I do not like this patch very much as it adds more code to
> >> a place that is already hard to understand in all of its consequences.
> >>
> >> I would like to explore the route that we assign these dynamic devices
> >> an id that is not present in any alias node. That could be done by
> >> searching for the highest alias number and give the dynamic devices one
> >> number higher. Would that be doable?
> > 
> > Dynamic device number is assigned via
> > - setting id to DEVICE_ID_DYNAMIC, either by driver or by code at top of
> > eth_register(),
> > - replacing that with lowest currently-unused number at top of
> > register_device()
> > 
> > Probably we can add one more magic value that driver could set into
> > edev->dev.id before calling eth_register(), that will be replaced with
> > lowest currently-unused number that does not have aliases. However, this
> > will change eth numbering in existing setups and thus can break them.
> > 
> > Possible option could be a flag in edev that forbids setting/exporting
> > ethaddr for this device. Doing so for usbnet seems safe. This will fix
> > my case.
> 
> Thinking more on this, maybe cleaner is NOT to match by id of in-barebox
> ethdevice when setting/exporting ethaddr by default, but explicitly
> allow such matching for platforms that need it.

Yes, that would be a good solution. Maybe struct eth_device could get a
new char *of_alias field which the network driver populates from the
platform_data.

Since Renauds address bounces I'm not sure how much interest he still
has in the barebox port of the boards using this feature. I think the
devices are all registered with fsl_eth_init(). I would think that he
does the board fixup himself if he still has interest, but we should
prepare the network device generic part.

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

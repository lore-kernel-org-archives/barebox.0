Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fXQhi-0007kK-5z
 for barebox@lists.infradead.org; Mon, 25 Jun 2018 12:35:18 +0000
Date: Mon, 25 Jun 2018 14:34:33 +0200
From: Sascha Hauer <sha@pengutronix.de>
Message-ID: <20180625123433.jo75zl77bovldzc2@pengutronix.de>
References: <20180622163012.1590-1-nikita.yoush@cogentembedded.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180622163012.1590-1-nikita.yoush@cogentembedded.com>
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

Hi Nikita,

On Fri, Jun 22, 2018 at 07:30:12PM +0300, Nikita Yushchenko wrote:
> It can happen that device tree contains ethernetN alias pointing to
> valid device, but that device is not supported by [running instance of]
> barebox. Then ethN remains unassigned, and can be later captured by
> dynamically registered device such as usbnet.
> 
> For such "stranger" device, ethaddr preconfigured for ethN should not be
> assigned. Also, ethaddr of such device should not be written to
> ethernetN node of device tree passed to kernel being booted.
> 

There's only one usecase for matching edev->dev.id against the ethernetx
alias which has been introduced with:

| commit a78431c7fc42193be252417bf06f7cc61765a51e
| Author: Renaud Barbier <renaud.barbier@ge.com>
| Date:   Wed Sep 4 08:37:03 2013 +0200
| 
|     net, of: fixup MAC address by alias
|     
|     If a network device has not been registered from the devicetree, we may
|     still find it by its alias in the devicetree. This way also platform based
|     network devices can obtain a valid MAC address in the devicetree.
|     
|     Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
|     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Your eth_is_stranger() returns true for the devices that Renaud wanted
to support, so instead of applying your patch we could equally well
revert that from Renaud.

I don't have a good idea right now how to fix this. Maybe we have to
make sure that ethernet devices from dynamic buses never get an id
asigned that is also present in the aliases node.

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

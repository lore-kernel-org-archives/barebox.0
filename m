Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0mGC-00008z-K5
 for barebox@lists.infradead.org; Wed, 19 Apr 2017 09:50:54 +0000
Date: Wed, 19 Apr 2017 11:50:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170419095030.blsuwu2kxlpfguon@pengutronix.de>
References: <CAARUG94j21s-AC0-gXYG81SjnCa1ahPfH1oaq=fb+rFgEpSE8A@mail.gmail.com>
 <CAARUG94vbynM7MJu=kfPynABwf5rhDDd3OBM-2SyRy0PFO_8kQ@mail.gmail.com>
 <20170419064224.rbteqga5qnxl6vab@pengutronix.de>
 <CAARUG96-AwprU-i9Kof9rzgVpk1FymmHpJM4M1yybEGxOwwp1w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAARUG96-AwprU-i9Kof9rzgVpk1FymmHpJM4M1yybEGxOwwp1w@mail.gmail.com>
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
Subject: Re: gpio-keys on barebox 2015.11
To: Zdenek Svachula <zdenek.svachula@medictech.com>
Cc: barebox@lists.infradead.org

On Wed, Apr 19, 2017 at 10:49:48AM +0200, Zdenek Svachula wrote:
> Hi Sascha,
> 
> My board is  Phytec phyFLEX-i.MX6 Quad Carrier-Board.
> I look to commit 7a037a952da8083e2eddcb2b2e180f0629e83758 Author:
> Sascha Hauer <s.hauer@pengutronix.de>
> Date:   Fri Feb 14 11:55:02 2014 +0100
> 
>     input: gpio-keys: Add devicetree probe support
> 
>     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> that seem ok.
> I look also in boot-up info that nothing indicate that gpio-keys
> driver is loaded
> 
> I loog to .config that seem be ok
> (from my .config)
> #
> # Drivers
> #
> CONFIG_OFTREE=y
> CONFIG_OFTREE_MEM_GENERIC=y
> CONFIG_DTC=y
> CONFIG_OFDEVICE=y
> CONFIG_OF_NET=y
> CONFIG_OF_GPIO=y
> CONFIG_OF_BAREBOX_DRIVERS=y
> 
> rereading to changes in arch/arm/boards/archosg9 and commit 28ce80f5
> it seems that some parts missing in phtec ini sequence but I'm not
> sure about it.

Have you looked at the output of devinfo like described in my last mail?
Also you can look at the output of of_dump to see if your new device
node made it to the runtime device tree.

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

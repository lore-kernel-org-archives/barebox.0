Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt0-x22f.google.com ([2607:f8b0:400d:c0d::22f])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0nHd-0005hk-HA
 for barebox@lists.infradead.org; Wed, 19 Apr 2017 10:56:27 +0000
Received: by mail-qt0-x22f.google.com with SMTP id c45so15593377qtb.1
 for <barebox@lists.infradead.org>; Wed, 19 Apr 2017 03:56:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAARUG96Bij4emjci_EO=yzeus22omFK_ajBH4d0muc=ViEMrAA@mail.gmail.com>
References: <CAARUG94j21s-AC0-gXYG81SjnCa1ahPfH1oaq=fb+rFgEpSE8A@mail.gmail.com>
 <CAARUG94vbynM7MJu=kfPynABwf5rhDDd3OBM-2SyRy0PFO_8kQ@mail.gmail.com>
 <20170419064224.rbteqga5qnxl6vab@pengutronix.de>
 <CAARUG96-AwprU-i9Kof9rzgVpk1FymmHpJM4M1yybEGxOwwp1w@mail.gmail.com>
 <20170419095030.blsuwu2kxlpfguon@pengutronix.de>
 <CAARUG96Bij4emjci_EO=yzeus22omFK_ajBH4d0muc=ViEMrAA@mail.gmail.com>
From: Zdenek Svachula <zdenek.svachula@medictech.com>
Date: Wed, 19 Apr 2017 12:56:03 +0200
Message-ID: <CAARUG97mibCMiyhDMRbbJevLjtM-iWUEQOvUBoEWFkbh=yUX7Q@mail.gmail.com>
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
Subject: Fwd: gpio-keys on barebox 2015.11
To: barebox@lists.infradead.org

Hi Sascha

yes. I look in these
I also  enable initcall debug output and see
initcall-> at25_driver_register+0x1/0x14
initcall-> at24_init+0x1/0x18
initcall-> gpio_keys_driver_register+0x1/0xc
initcall-> imx_keypad_driver_register+0x1/0xc
initcall-> imx_wd_driver_register+0x1/0xc
initcall-> null_init+0x1/0x24

in of_dump is nothing about gpio_keys
drvinfo:
at24
        24c320
gpio_keys
imx-kpp
imx-watchdog
        20bc000.wdog
mem

barebox@Phytec phyFLEX-i.MX6 Quad Carrier-Board:/ devinfo gpio_keys
devinfo: No such device


Thanks you
Zdenek

On Wed, Apr 19, 2017 at 11:50 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Wed, Apr 19, 2017 at 10:49:48AM +0200, Zdenek Svachula wrote:
> > Hi Sascha,
> >
> > My board is  Phytec phyFLEX-i.MX6 Quad Carrier-Board.
> > I look to commit 7a037a952da8083e2eddcb2b2e180f0629e83758 Author:
> > Sascha Hauer <s.hauer@pengutronix.de>
> > Date:   Fri Feb 14 11:55:02 2014 +0100
> >
> >     input: gpio-keys: Add devicetree probe support
> >
> >     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> >
> > that seem ok.
> > I look also in boot-up info that nothing indicate that gpio-keys
> > driver is loaded
> >
> > I loog to .config that seem be ok
> > (from my .config)
> > #
> > # Drivers
> > #
> > CONFIG_OFTREE=y
> > CONFIG_OFTREE_MEM_GENERIC=y
> > CONFIG_DTC=y
> > CONFIG_OFDEVICE=y
> > CONFIG_OF_NET=y
> > CONFIG_OF_GPIO=y
> > CONFIG_OF_BAREBOX_DRIVERS=y
> >
> > rereading to changes in arch/arm/boards/archosg9 and commit 28ce80f5
> > it seems that some parts missing in phtec ini sequence but I'm not
> > sure about it.
>
> Have you looked at the output of devinfo like described in my last mail?
> Also you can look at the output of of_dump to see if your new device
> node made it to the runtime device tree.
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

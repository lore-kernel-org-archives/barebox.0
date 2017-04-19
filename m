Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0nI0-0005tr-BH
 for barebox@lists.infradead.org; Wed, 19 Apr 2017 10:56:50 +0000
Date: Wed, 19 Apr 2017 12:56:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170419105626.gioset6qhr4ykyde@pengutronix.de>
References: <CAARUG94j21s-AC0-gXYG81SjnCa1ahPfH1oaq=fb+rFgEpSE8A@mail.gmail.com>
 <CAARUG94vbynM7MJu=kfPynABwf5rhDDd3OBM-2SyRy0PFO_8kQ@mail.gmail.com>
 <20170419064224.rbteqga5qnxl6vab@pengutronix.de>
 <CAARUG96-AwprU-i9Kof9rzgVpk1FymmHpJM4M1yybEGxOwwp1w@mail.gmail.com>
 <20170419095030.blsuwu2kxlpfguon@pengutronix.de>
 <CAARUG96Bij4emjci_EO=yzeus22omFK_ajBH4d0muc=ViEMrAA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAARUG96Bij4emjci_EO=yzeus22omFK_ajBH4d0muc=ViEMrAA@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: gpio-keys on barebox 2015.11
To: Zdenek Svachula <zdenek.svachula@medictech.com>
Cc: barebox@lists.infradead.org

Hi Zdenek,

On Wed, Apr 19, 2017 at 12:39:14PM +0200, Zdenek Svachula wrote:
>    Hi Sascha
> =

>    yes. I look in these
>    I also=A0 enable initcall debug output and see
>    initcall-> at25_driver_register+0x1/0x14
>    initcall-> at24_init+0x1/0x18
>    initcall-> gpio_keys_driver_register+0x1/0xc
>    initcall-> imx_keypad_driver_register+0x1/0xc
>    initcall-> imx_wd_driver_register+0x1/0xc
>    initcall-> null_init+0x1/0x24
> =

>    in of_dump is nothing about gpio_keys
>    drvinfo:
>    at24
>    =A0=A0=A0=A0=A0=A0=A0 24c320
>    gpio_keys
>    imx-kpp
>    imx-watchdog
>    =A0=A0=A0=A0=A0=A0=A0 20bc000.wdog
>    mem
> =

>    barebox@Phytec phyFLEX-i.MX6 Quad Carrier-Board:/ devinfo gpio_keys
>    devinfo: No such device

Maybe you have modified the wrong dts file. Which one have you modified?
Just to be sure: You modified some dts file in the barebox source tree,
compiled barebox and started the resulting binary, right?

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcVYr-0000Ae-3i
 for barebox@lists.infradead.org; Wed, 15 May 2013 06:51:41 +0000
Date: Wed, 15 May 2013 08:51:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130515065119.GD32299@pengutronix.de>
References: <CB1254936A837D40B8C8611AEC83D6910686D1BD@MS-DM-M01.DATA-MODUL.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CB1254936A837D40B8C8611AEC83D6910686D1BD@MS-DM-M01.DATA-MODUL.com>
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
Subject: Re: [PATCH] ARM i.MX6: set imx6 silicon revision
To: "Fricke, Silvio" <SFricke@data-modul.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Silvio,

On Tue, May 14, 2013 at 05:52:01PM +0000, Fricke, Silvio wrote:
>  static int imx6_init(void)
>  {
> +       u32 rev;
> +       u32 mx6_silicon_revision;
> +
>         imx6_boot_save_loc((void *)MX6_SRC_BASE_ADDR);
> 
>         add_generic_device("imx-iomuxv3", 0, NULL, MX6_IOMUXC_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
> @@ -70,6 +76,26 @@ static int imx6_init(void)
>         add_generic_device("imx21-wdt", 0, NULL, MX6_WDOG1_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
>         add_generic_device("imx6-usb-misc", 0, NULL, MX6_USBOH3_USB_BASE_ADDR + 0x800, 0x100, IORESOURCE_MEM, NULL);
> 
> +       rev = readl(MX6_ANATOP_BASE_ADDR + SI_REV);
> +       switch (rev & 0xff) {
> +       case 0x00:
> +               mx6_silicon_revision = IMX_CHIP_REV_1_0;
> +               break;
> +
> +       case 0x01:
> +               mx6_silicon_revision = IMX_CHIP_REV_1_1;
> +               break;
> +
> +       case 0x02:
> +               mx6_silicon_revision = IMX_CHIP_REV_1_2;
> +               break;
> +
> +       default:
> +               mx6_silicon_revision = IMX_CHIP_REV_UNKNOWN;
> +       }
> +
> +       imx_set_silicon_revision("i.MX6", mx6_silicon_revision);

You should call imx_set_silicon_revision before registering all the
devices. That way the drivers could use this information should they
ever have to.

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

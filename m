Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NfaYH-0005Ub-9m
	for barebox@lists.infradead.org; Thu, 11 Feb 2010 15:02:01 +0000
Received: from themisto.ext.pengutronix.de ([92.198.50.58]
	helo=jupiter.intranet.kreuzholzen.de)
	by metis.ext.pengutronix.de with esmtp (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NfaY9-00082R-B8
	for barebox@lists.infradead.org; Thu, 11 Feb 2010 16:01:50 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 11 Feb 2010 16:01:47 +0100
References: <201001291251.16655.jbe@pengutronix.de>
In-Reply-To: <201001291251.16655.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201002111601.47675.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] i.MX35: Fix pad control bit positions
To: barebox@lists.infradead.org

Hi Sascha,

as discussed at FOSDEM: *ping* ;-)

Juergen Beisert wrote:
> Using these macros simplify the configuration for special GPIO usage. But
> they should use correct bit positions for usage in the IOMUX_PAD() macro.
>
> Note: These are the bit positions of the i.MX35 CPU. Not checked for the
> other i.MX3x CPUs.
>
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
>
> ---
>  arch/arm/mach-imx/include/mach/iomux-v3.h |   34
> +++++++++++++++--------------- 1 file changed, 17 insertions(+), 17
> deletions(-)
>
> Index: u-boot-v2/arch/arm/mach-imx/include/mach/iomux-v3.h
> ===================================================================
> --- u-boot-v2.orig/arch/arm/mach-imx/include/mach/iomux-v3.h
> +++ u-boot-v2/arch/arm/mach-imx/include/mach/iomux-v3.h
> @@ -68,25 +68,25 @@ struct pad_desc {
>  /*
>   * Use to set PAD control
>   */
> -#define PAD_CTL_DRIVE_VOLTAGE_3_3_V	0
> -#define PAD_CTL_DRIVE_VOLTAGE_1_8_V	1
> +#define PAD_CTL_DRIVE_VOLTAGE_3_3_V	(0)
> +#define PAD_CTL_DRIVE_VOLTAGE_1_8_V	(1 << 13)
>
> -#define PAD_CTL_NO_HYSTERESIS		0
> -#define PAD_CTL_HYSTERESIS		1
> +#define PAD_CTL_NO_HYSTERESIS		(0)
> +#define PAD_CTL_HYSTERESIS		(1 << 8)
>
> -#define PAD_CTL_PULL_DISABLED		0x0
> -#define PAD_CTL_PULL_KEEPER		0xa
> -#define PAD_CTL_PULL_DOWN_100K		0xc
> -#define PAD_CTL_PULL_UP_47K		0xd
> -#define PAD_CTL_PULL_UP_100K		0xe
> -#define PAD_CTL_PULL_UP_22K		0xf
> -
> -#define PAD_CTL_OUTPUT_CMOS		0
> -#define PAD_CTL_OUTPUT_OPEN_DRAIN	1
> -
> -#define PAD_CTL_DRIVE_STRENGTH_NORM	0
> -#define PAD_CTL_DRIVE_STRENGTH_HIGH	1
> -#define PAD_CTL_DRIVE_STRENGTH_MAX	2
> +#define PAD_CTL_PULL_DISABLED		(0)
> +#define PAD_CTL_PULL_KEEPER		(0xa << 4)
> +#define PAD_CTL_PULL_DOWN_100K		(0xc << 4)
> +#define PAD_CTL_PULL_UP_47K		(0xd << 4)
> +#define PAD_CTL_PULL_UP_100K		(0xe << 4)
> +#define PAD_CTL_PULL_UP_22K		(0xf << 4)
> +
> +#define PAD_CTL_OUTPUT_CMOS		(0)
> +#define PAD_CTL_OUTPUT_OPEN_DRAIN	(1 << 3)
> +
> +#define PAD_CTL_DRIVE_STRENGTH_NORM	(0)
> +#define PAD_CTL_DRIVE_STRENGTH_HIGH	(1 << 1)
> +#define PAD_CTL_DRIVE_STRENGTH_MAX	(2 << 1)
>
>  #define PAD_CTL_SLEW_RATE_SLOW		0
>  #define PAD_CTL_SLEW_RATE_FAST		1

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

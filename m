Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SGRlY-0005Gw-Ds
 for barebox@lists.infradead.org; Sat, 07 Apr 2012 09:17:05 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 7 Apr 2012 11:16:22 +0200
References: <20120406180949.GB621@greenwood>
In-Reply-To: <20120406180949.GB621@greenwood>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201204071116.22125.jbe@pengutronix.de>
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
Subject: Re: [PATCH] Fixup DRIVER_VIDEO_S3C24XX usage.
To: barebox@lists.infradead.org

Uwe Hermann wrote:
> From c67445d601c9332fabb71df8e41367fc104e1ac1 Mon Sep 17 00:00:00 2001
> From: Uwe Hermann <uwe@hermann-uwe.de>
> Date: Fri, 6 Apr 2012 20:07:12 +0200
>
> DRIVER_VIDEO_S3C was renamed to DRIVER_VIDEO_S3C24XX recently.

Ups, my fault :(

> Signed-off-by: Uwe Hermann <uwe@hermann-uwe.de>
> ---
>  arch/arm/boards/mini2440/Kconfig |    2 +-
>  drivers/video/Kconfig            |    2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/boards/mini2440/Kconfig
> b/arch/arm/boards/mini2440/Kconfig index 929df60..a8e79b3 100644
> --- a/arch/arm/boards/mini2440/Kconfig
> +++ b/arch/arm/boards/mini2440/Kconfig
> @@ -4,7 +4,7 @@ if MACH_MINI2440
>  config MINI2440_VIDEO
>  	bool
>  	select VIDEO
> -	select DRIVER_VIDEO_S3C
> +	select DRIVER_VIDEO_S3C24XX
>
>  config MINI2440_VIDEO_N35
>  	bool "Support N35 display (240x320)"
> diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
> index 509ba64..519cdbf 100644
> --- a/drivers/video/Kconfig
> +++ b/drivers/video/Kconfig
> @@ -37,7 +37,7 @@ config DRIVER_VIDEO_S3C24XX
>  	help
>  	  Add support for the S3C244x LCD controller.
>
> -if DRIVER_VIDEO_S3C
> +if DRIVER_VIDEO_S3C24XX
>
>  config DRIVER_VIDEO_S3C_VERBOSE
>  	bool "S3C244x verbose framebuffer info"

Acked-by: Juergen Beisert <jbe@pengutronix.de>

Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

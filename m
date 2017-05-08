Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d7iEl-00048t-GZ
 for barebox@lists.infradead.org; Mon, 08 May 2017 12:58:05 +0000
Date: Mon, 8 May 2017 14:57:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170508125741.2dtqzlkicvdo2pxp@pengutronix.de>
References: <1493995618-7289-1-git-send-email-d.schultz@phytec.de>
 <1493995618-7289-4-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1493995618-7289-4-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH v2 4/5] arm: boards: beaglebone: Delete default env
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

Hi Daniel,

On Fri, May 05, 2017 at 04:46:57PM +0200, Daniel Schultz wrote:
> The Beaglebone environment should be set from outside with an application
> specific environment.

I don't understand this. What are you trying to archieve and why?

Sascha

> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
>  arch/arm/boards/beaglebone/Makefile                                 | 1 -
>  arch/arm/boards/beaglebone/board.c                                  | 2 --
>  arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd            | 6 ------
>  .../arm/boards/beaglebone/defaultenv-beaglebone/init/usb-limit-1300 | 5 -----
>  4 files changed, 14 deletions(-)
>  delete mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd
>  delete mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/init/usb-limit-1300
> 
> diff --git a/arch/arm/boards/beaglebone/Makefile b/arch/arm/boards/beaglebone/Makefile
> index 21a1a29..092c31d 100644
> --- a/arch/arm/boards/beaglebone/Makefile
> +++ b/arch/arm/boards/beaglebone/Makefile
> @@ -1,3 +1,2 @@
>  lwl-y += lowlevel.o
>  obj-y += board.o
> -bbenv-y += defaultenv-beaglebone
> diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beaglebone/board.c
> index 5717c45..fc16aea 100644
> --- a/arch/arm/boards/beaglebone/board.c
> +++ b/arch/arm/boards/beaglebone/board.c
> @@ -85,8 +85,6 @@ static int beaglebone_devices_init(void)
>  
>  	black = is_beaglebone_black();
>  
> -	defaultenv_append_directory(defaultenv_beaglebone);
> -
>  	globalvar_add_simple("board.variant", black ? "boneblack" : "bone");
>  
>  	printf("detected 'BeagleBone %s'\n", black ? "Black" : "White");
> diff --git a/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd b/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd
> deleted file mode 100644
> index aa94b2f..0000000
> --- a/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -#!/bin/sh
> -
> -global.bootm.image=/boot/uImage
> -global.bootm.oftree=/boot/oftree
> -#global.bootm.initrd=<path to initrd>
> -global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
> diff --git a/arch/arm/boards/beaglebone/defaultenv-beaglebone/init/usb-limit-1300 b/arch/arm/boards/beaglebone/defaultenv-beaglebone/init/usb-limit-1300
> deleted file mode 100644
> index 56313bf..0000000
> --- a/arch/arm/boards/beaglebone/defaultenv-beaglebone/init/usb-limit-1300
> +++ /dev/null
> @@ -1,5 +0,0 @@
> -#!/bin/sh
> -
> -echo -n "changing USB current limit to 1300 mA... "
> -i2c_write -b 0 -a 0x24 -r 0x01 0x3e
> -echo "done"
> -- 
> 1.9.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

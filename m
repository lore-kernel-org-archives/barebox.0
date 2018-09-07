Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fyACU-00018H-LJ
 for barebox@lists.infradead.org; Fri, 07 Sep 2018 06:25:04 +0000
Date: Fri, 7 Sep 2018 08:24:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180907062450.uapgo4whtx3zmwj2@pengutronix.de>
References: <1536146035-20364-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1536146035-20364-1-git-send-email-t.remmet@phytec.de>
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
Subject: Re: [PATCH] arm: boards: phytec-som-am335x: Rename kernel image
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Sep 05, 2018 at 01:13:55PM +0200, Teresa Remmet wrote:
> Use zImage instead of linuximage for kernel.
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
>  arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/emmc | 2 +-
>  arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/mmc  | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/emmc b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/emmc
> index b1792a6ff060..47dc9516e6a0 100644
> --- a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/emmc
> +++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/emmc
> @@ -1,5 +1,5 @@
>  #!/bin/sh
>  
> -global.bootm.image=/mnt/mmc1.0/linuximage
> +global.bootm.image=/mnt/mmc1.0/zImage

As usual when I see these changes: Have a look into bootspec. It makes
such adjustments unnecessary since the rootfs itself can provide a
kernel.

Anyway, applied, thanks

Sascha

>  global.bootm.oftree=/mnt/mmc1.0/oftree
>  global.linux.bootargs.dyn.root="root=/dev/mmcblk1p2 rootflags='data=journal'"
> diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/mmc b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/mmc
> index 77a076df58c0..b025a578d027 100644
> --- a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/mmc
> +++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/mmc
> @@ -1,5 +1,5 @@
>  #!/bin/sh
>  
> -global.bootm.image=/mnt/mmc0.0/linuximage
> +global.bootm.image=/mnt/mmc0.0/zImage
>  global.bootm.oftree=/mnt/mmc0.0/oftree
>  global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootflags='data=journal'"
> -- 
> 2.7.4
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

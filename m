Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eH2nr-0007h0-Eq
 for barebox@lists.infradead.org; Tue, 21 Nov 2017 07:17:10 +0000
Date: Tue, 21 Nov 2017 08:16:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171121071642.dmfnfhagmnl4ltkk@pengutronix.de>
References: <1510927867-46260-1-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1510927867-46260-1-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH] ARM: boards: phytec-som-am335x: Fix SPI boot script
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Nov 17, 2017 at 03:11:07PM +0100, Daniel Schultz wrote:
> Because our SPI NOR flashes are too small, we require a root filesystem
> in a NAND media. The kernel bootargs has a wrong parameter and lead to:
> 
>     VFS: Cannot open root device "ubi0:root" or unknown-block(0,0):
> 
> Changed 'ubi.mtd=nand0.root' to 'ubi.mtd=root'.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---

Applied, thanks

Sascha

>  arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/spi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/spi b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/spi
> index a321aa9..611bc24 100644
> --- a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/spi
> +++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/spi
> @@ -4,4 +4,4 @@ global.bootm.image="/dev/m25p0.kernel"
>  global.bootm.oftree="/dev/m25p0.oftree"
>  
>  # Use rootfs from NAND
> -global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root rootfstype=ubifs"
> +global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=root rootfstype=ubifs"
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

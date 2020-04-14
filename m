Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOHgp-0005zs-HO
 for barebox@lists.infradead.org; Tue, 14 Apr 2020 09:17:09 +0000
Date: Tue, 14 Apr 2020 11:17:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200414091705.GB27288@pengutronix.de>
References: <1586253176-225056-1-git-send-email-y.bas@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586253176-225056-1-git-send-email-y.bas@phytec.de>
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
Subject: Re: [PATCH] ARM: i.MX: phytec-som-imx6: Fix paths to SPI-NOR partition
To: Yunus Bas <y.bas@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Apr 07, 2020 at 11:52:56AM +0200, Yunus Bas wrote:
> Due to a previously change of the partition namings, the kernel- and
> oftree-paths in the SPI-bootscript have to be adapted to the changes.
> 
> The previous change can be found here:
> commit 72ba815bf6feaa0a98d2496f52784dd5b4258e73
> 
> Signed-off-by: Yunus Bas <y.bas@phytec.de>
> ---
>  arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/spi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/spi b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/spi
> index 2000a16..8fb71f5 100644
> --- a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/spi
> +++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/spi
> @@ -1,5 +1,5 @@
>  #!/bin/sh
>  
> -global.bootm.image="/dev/m25p0.kernel"
> -global.bootm.oftree="/dev/m25p0.oftree"
> +global.bootm.image="/dev/m25p0.nor.kernel"
> +global.bootm.oftree="/dev/m25p0.nor.oftree"
>  global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=root rootfstype=ubifs rw"
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
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

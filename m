Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZxmE-0001vM-Mr
 for barebox@lists.infradead.org; Wed, 08 May 2013 06:22:59 +0000
Date: Wed, 8 May 2013 08:22:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130508062236.GV32299@pengutronix.de>
References: <1367923830-7912-1-git-send-email-alexandre.belloni@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1367923830-7912-1-git-send-email-alexandre.belloni@free-electrons.com>
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
Subject: Re: [PATCH] sama5d3xek: correct rootfs nand partition
To: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Cc: barebox@lists.infradead.org

On Tue, May 07, 2013 at 12:50:30PM +0200, Alexandre Belloni wrote:
> Signed-off-by: Alexandre Belloni <alexandre.belloni@free-electrons.com>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/sama5d3xek/env/config | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/sama5d3xek/env/config b/arch/arm/boards/sama5d3xek/env/config
> index 375e90d..a7fd930 100644
> --- a/arch/arm/boards/sama5d3xek/env/config
> +++ b/arch/arm/boards/sama5d3xek/env/config
> @@ -32,7 +32,7 @@ kernelimage=zImage
>  
>  nand_device=atmel_nand
>  nand_parts="256k(at91bootstrap),384k(barebox)ro,256k@768k(bareboxenv),256k(bareboxenv2),128k@1536k(oftree),5M@2M(kernel),-@8M(rootfs)"
> -rootfs_mtdblock_nand=7
> +rootfs_mtdblock_nand=6
>  
>  m25p80_parts="64k(bootstrap),384k(barebox),256k(bareboxenv),256k(bareboxenv2),128k(oftree),-(updater)"
>  
> -- 
> 1.8.1.2
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

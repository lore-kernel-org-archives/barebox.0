Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwbDK-0005SH-NY
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 16:56:31 +0000
Date: Tue, 9 Jul 2013 18:56:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130709165608.GT516@pengutronix.de>
References: <1373366629-2818-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1373366629-2818-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] ARM: at91: animeo IP: fix partition table
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 09, 2013 at 12:43:49PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> we now use a UBI Volume instead of user_block, kernel and root
> the bootloader size is 320KiB not 256KiB
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/animeo_ip/env/config | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boards/animeo_ip/env/config b/arch/arm/boards/animeo_ip/env/config
> index a0537b8..7526fcf 100644
> --- a/arch/arm/boards/animeo_ip/env/config
> +++ b/arch/arm/boards/animeo_ip/env/config
> @@ -28,8 +28,8 @@ kernelimage=zImage
>  #kernelimage=Image.lzo
>  
>  nand_device=atmel_nand
> -nand_parts="32k(at91bootstrap),256k(barebox)ro,32k(bareboxenv),704k(user_block),1728k(kernel),-(root)"
> -rootfs_mtdblock_nand=5
> +nand_parts="32k(at91bootstrap),320k(barebox)ro,32k(bareboxenv),-(ubi)"
> +rootfs_mtdblock_nand=3
>  
>  autoboot_timeout=3
>  
> -- 
> 1.8.3.2
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

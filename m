Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuuPk-0000R6-DG
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 06:57:18 +0000
Date: Wed, 29 Aug 2018 08:57:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180829065704.crdwpkrd5q3icotm@pengutronix.de>
References: <1535441570-35661-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1535441570-35661-1-git-send-email-t.remmet@phytec.de>
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
Subject: Re: [PATCH] arm: mach-omap: bbu_emmc: Fix return value
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Aug 28, 2018 at 09:32:50AM +0200, Teresa Remmet wrote:
> Update handler returned the written bytes of the partition table on success
> instead of 0. Return 0 or error code now.
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
>  arch/arm/mach-omap/am33xx_bbu_emmc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-omap/am33xx_bbu_emmc.c b/arch/arm/mach-omap/am33xx_bbu_emmc.c
> index d3adb3744c95..1fd7222ddcea 100644
> --- a/arch/arm/mach-omap/am33xx_bbu_emmc.c
> +++ b/arch/arm/mach-omap/am33xx_bbu_emmc.c
> @@ -73,7 +73,7 @@ error_save_part_table:
>  
>  error:
>  	close(fd);
> -	return ret;
> +	return (ret > 0) ? 0 : ret;
>  }
>  
>  int am33xx_bbu_emmc_mlo_register_handler(const char *name, char *devicefile)
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

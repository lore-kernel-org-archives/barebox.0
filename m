Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cgS4Z-000201-Ly
 for barebox@lists.infradead.org; Wed, 22 Feb 2017 08:14:58 +0000
Date: Wed, 22 Feb 2017 09:14:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170222081429.diok7uig34xfh6wr@pengutronix.de>
References: <1487530668-7575-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1487530668-7575-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH] ARM: i.MX50: do not pass base address to
 imx53_boot_save_loc
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Sun, Feb 19, 2017 at 07:57:48PM +0100, Alexander Kurz wrote:
> This is a follow-up on commit cf3dfafff4cb.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  arch/arm/mach-imx/imx50.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/imx50.c b/arch/arm/mach-imx/imx50.c
> index fb278a5..d6ff6df 100644
> --- a/arch/arm/mach-imx/imx50.c
> +++ b/arch/arm/mach-imx/imx50.c
> @@ -50,7 +50,7 @@ static int imx50_silicon_revision(void)
>  int imx50_init(void)
>  {
>  	imx50_silicon_revision();
> -	imx53_boot_save_loc((void *)MX50_SRC_BASE_ADDR);
> +	imx53_boot_save_loc();
>  
>  	return 0;
>  }
> -- 
> 2.1.4
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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S8wNd-00008H-9W
 for barebox@lists.infradead.org; Sat, 17 Mar 2012 16:21:23 +0000
Date: Sat, 17 Mar 2012 17:21:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120317162115.GL3852@pengutronix.de>
References: <1331964701-24910-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1331964701-24910-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] i.MX51: Remove GPIO2.6 setup from lowlevel_init
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sat, Mar 17, 2012 at 10:11:41AM +0400, Alexander Shiyan wrote:
> Remove GPIO2.6 setup from lowlevel_init. It can be defined in board
> initialization code if it necessary.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-imx/imx51.c |   10 ----------
>  1 files changed, 0 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
> index 2431e61..f7f2345 100644
> --- a/arch/arm/mach-imx/imx51.c
> +++ b/arch/arm/mach-imx/imx51.c
> @@ -270,14 +270,4 @@ void imx51_init_lowlevel(void)
>  	while (readl(ccm + MX5_CCM_CDHIPR));
>  
>  	writel(0x0, ccm + MX5_CCM_CCDR);
> -
> -	writel(0x1, 0x73fa8074);
> -
> -	r = readl(0x73f88000);
> -	r |= 0x40;
> -	writel(r, 0x73f88000);
> -
> -	r = readl(0x73f88004);
> -	r |= 0x40;
> -	writel(r, 0x73f88004);
>  }
> -- 
> 1.7.3.4
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

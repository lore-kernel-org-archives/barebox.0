Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fDoy8-0004Xn-PD
 for barebox@lists.infradead.org; Wed, 02 May 2018 10:26:43 +0000
Date: Wed, 2 May 2018 12:26:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180502102628.xuzgf3o6aeijxl6z@pengutronix.de>
References: <20180427053216.10040-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180427053216.10040-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] ARM: i.MX7: Remove unnecessary local variable
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Apr 26, 2018 at 10:32:16PM -0700, Andrey Smirnov wrote:
> It looks this code was based on analogous code for i.MX6, but there
> that variable was being used as a part of following switch
> statement. Since this is not the case for i.MX7, just replace the
> variable with direct function call.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/mach-imx/imx7.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/imx7.c b/arch/arm/mach-imx/imx7.c
> index 5ad91c2d7..e49baf6f7 100644
> --- a/arch/arm/mach-imx/imx7.c
> +++ b/arch/arm/mach-imx/imx7.c
> @@ -182,7 +182,6 @@ static const struct imx_reset_reason imx7_reset_reasons[] = {
>  int imx7_init(void)
>  {
>  	const char *cputypestr;
> -	u32 imx7_silicon_revision;
>  	void __iomem *src = IOMEM(MX7_SRC_BASE_ADDR);
>  
>  	imx7_init_lowlevel();
> @@ -193,8 +192,6 @@ int imx7_init(void)
>  
>  	imx7_boot_save_loc();
>  
> -	imx7_silicon_revision = imx7_cpu_revision();
> -
>  	psci_set_ops(&imx7_psci_ops);
>  
>  	switch (imx7_cpu_type()) {
> @@ -209,7 +206,7 @@ int imx7_init(void)
>  		break;
>  	}
>  
> -	imx_set_silicon_revision(cputypestr, imx7_silicon_revision);
> +	imx_set_silicon_revision(cputypestr, imx7_cpu_revision());
>  	imx_set_reset_reason(src + IMX7_SRC_SRSR, imx7_reset_reasons);
>  
>  	return 0;
> -- 
> 2.14.3
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

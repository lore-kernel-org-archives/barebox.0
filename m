Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g4KlK-0007jl-3e
 for barebox@lists.infradead.org; Mon, 24 Sep 2018 06:54:31 +0000
Date: Mon, 24 Sep 2018 08:54:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180924065418.GB4097@pengutronix.de>
References: <20180919154847.1543-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180919154847.1543-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/2] ARM: i.MX: boot: Make use of FIELD_GET() in
 imx51_get_boot_source()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 19, 2018 at 08:48:46AM -0700, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/mach-imx/boot.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
> index f1fc40479..830ea08f3 100644
> --- a/arch/arm/mach-imx/boot.c
> +++ b/arch/arm/mach-imx/boot.c
> @@ -167,10 +167,10 @@ void imx27_boot_save_loc(void)
>  	imx_boot_save_loc(imx27_get_boot_source);
>  }
>  
> -#define IMX51_SRC_SBMR			0x4
> -#define IMX51_SBMR_BT_MEM_TYPE_SHIFT	7
> -#define IMX51_SBMR_BT_MEM_CTL_SHIFT	0
> -#define IMX51_SBMR_BMOD_SHIFT		14
> +#define IMX51_SRC_SBMR		0x4
> +#define IMX51_SBMR_BT_MEM_TYPE	GENMASK(8, 7)
> +#define IMX51_SBMR_BT_MEM_CTL	GENMASK(1, 0)
> +#define IMX51_SBMR_BMOD		GENMASK(15, 14)
>  
>  void imx51_get_boot_source(enum bootsource *src, int *instance)
>  {
> @@ -180,12 +180,12 @@ void imx51_get_boot_source(enum bootsource *src, int *instance)
>  
>  	reg = readl(src_base + IMX51_SRC_SBMR);
>  
> -	switch ((reg >> IMX51_SBMR_BMOD_SHIFT) & 0x3) {
> +	switch (FIELD_GET(IMX51_SBMR_BMOD, reg)) {
>  	case 0:
>  	case 2:
>  		/* internal boot */
> -		ctrl = (reg >> IMX51_SBMR_BT_MEM_CTL_SHIFT) & 0x3;
> -		type = (reg >> IMX51_SBMR_BT_MEM_TYPE_SHIFT) & 0x3;
> +		ctrl = FIELD_GET(IMX51_SBMR_BT_MEM_CTL, reg);
> +		type = FIELD_GET(IMX51_SBMR_BT_MEM_TYPE, reg);
>  
>  		*src = locations[ctrl][type];
>  		break;
> -- 
> 2.17.1
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

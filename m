Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7yho-0000C5-3V
 for barebox@lists.infradead.org; Mon, 16 Apr 2018 07:37:41 +0000
Date: Mon, 16 Apr 2018 09:37:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180416073727.z777ff4fuecb2anv@pengutronix.de>
References: <20180414175103.10125-1-andrew.smirnov@gmail.com>
 <20180414175103.10125-3-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180414175103.10125-3-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 02/17] ARM: i.MX: Add function to extract BMOD value
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Apr 14, 2018 at 10:50:48AM -0700, Andrey Smirnov wrote:
> The location of BMDO field in SBMR/SBMR2 registers is consistent
> across all i.MX SoCs starting from i.MX53. Add simple helper function
> imx53_get_bmod and use it to avoid code duplication.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/mach-imx/boot.c | 25 ++++++++++++++-----------
>  1 file changed, 14 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
> index 4657fa017..56f9fb5d4 100644
> --- a/arch/arm/mach-imx/boot.c
> +++ b/arch/arm/mach-imx/boot.c
> @@ -169,12 +169,23 @@ void imx51_get_boot_source(enum bootsource *src, int *instance)
>  }
>  
>  #define IMX53_SRC_SBMR	0x4
> +
> +static unsigned int sbmr(uint32_t r, unsigned int msb, unsigned int lsb)
> +{
> +	return (r & GENMASK(msb, lsb)) >> lsb;
> +}

If you like GENMASK then maybe the FIELD_GET and FIELD_PREP macros from
the Linux kernel are for you aswell.

#define SRC_SBMR_BMOD	GENMASK(25, 24)

> +
> +static unsigned int imx53_get_bmod(uint32_t r)
> +{
> +	return sbmr(r, 25, 24);

return FIELD_GET(SRC_SBMR_BMOD, r);

Sascha

> +}
> +
>  void imx53_get_boot_source(enum bootsource *src, int *instance)
>  {
>  	void __iomem *src_base = IOMEM(MX53_SRC_BASE_ADDR);
>  	uint32_t cfg1 = readl(src_base + IMX53_SRC_SBMR);
>  
> -	if (((cfg1 >> 24) & 0x3) == 0x3) {
> +	if (imx53_get_bmod(cfg1) == 0x3) {
>  		*src = BOOTSOURCE_USB;
>  		*instance = 0;
>  		return;
> @@ -225,12 +236,8 @@ void imx6_get_boot_source(enum bootsource *src, int *instance)
>  	uint32_t sbmr1 = readl(src_base + IMX6_SRC_SBMR1);
>  	uint32_t sbmr2 = readl(src_base + IMX6_SRC_SBMR2);
>  	uint32_t boot_cfg_4_2_0;
> -	int boot_mode;
>  
> -	/* BMOD[1:0] */
> -	boot_mode = (sbmr2 >> 24) & 0x3;
> -
> -	switch (boot_mode) {
> +	switch (imx53_get_bmod(sbmr2)) {
>  	case 0: /* Fuses, fall through */
>  	case 2: /* internal boot */
>  		goto internal_boot;
> @@ -290,12 +297,8 @@ void imx7_get_boot_source(enum bootsource *src, int *instance)
>  	void __iomem *src_base = IOMEM(MX7_SRC_BASE_ADDR);
>  	uint32_t sbmr1 = readl(src_base + IMX7_SRC_SBMR1);
>  	uint32_t sbmr2 = readl(src_base + IMX7_SRC_SBMR2);
> -	int boot_mode;
> -
> -	/* BMOD[1:0] */
> -	boot_mode = (sbmr2 >> 24) & 0x3;
>  
> -	switch (boot_mode) {
> +	switch (imx53_get_bmod(sbmr2)) {
>  	case 0: /* Fuses, fall through */
>  	case 2: /* internal boot */
>  		goto internal_boot;
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

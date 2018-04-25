Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fBGqC-0001sL-RB
 for barebox@lists.infradead.org; Wed, 25 Apr 2018 09:36:15 +0000
Date: Wed, 25 Apr 2018 11:35:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180425093544.puaouedi3634advj@pengutronix.de>
References: <20180421014943.11517-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180421014943.11517-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v3] ARM: i.MX: boot: Coalesce copy-pasted code
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Apr 20, 2018 at 06:49:43PM -0700, Andrey Smirnov wrote:
> All of the instances of imx*_boot_save_loc() do exactly the same thing
> with the only difference being SoC-specific imx*_get_boot_source
> call. Convert the code into a generic function taking function pointer
> to perform SoC specific bits.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
> 
> Sascha:
> 
> This is my second take on the patch we discussed in [thread1]. It
> saves a whole bunch of boilerpalte code while keeping all function
> names greppable. Hopefully this is good enough to be merged.

Yes, indeed. Applied, thanks

Sascha

> 
> Thanks,
> Andrey Smirnov
> 
> [thread1] http://lists.infradead.org/pipermail/barebox/2018-April/032706.html
> 
>  arch/arm/mach-imx/boot.c | 70 +++++++++++++++---------------------------------
>  1 file changed, 21 insertions(+), 49 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
> index c3e2ec501..22cf08e6a 100644
> --- a/arch/arm/mach-imx/boot.c
> +++ b/arch/arm/mach-imx/boot.c
> @@ -29,6 +29,20 @@
>  #include <mach/imx7-regs.h>
>  #include <mach/vf610-regs.h>
>  
> +
> +static void
> +imx_boot_save_loc(void (*get_boot_source)(enum bootsource *, int *))
> +{
> +	enum bootsource src = BOOTSOURCE_UNKNOWN;
> +	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
> +
> +	get_boot_source(&src, &instance);
> +
> +	bootsource_set(src);
> +	bootsource_set_instance(instance);
> +}
> +
> +
>  /* [CTRL][TYPE] */
>  static const enum bootsource locations[4][4] = {
>  	{ /* CTRL = WEIM */
> @@ -93,13 +107,7 @@ void imx25_get_boot_source(enum bootsource *src, int *instance)
>  
>  void imx25_boot_save_loc(void)
>  {
> -	enum bootsource src = BOOTSOURCE_UNKNOWN;
> -	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
> -
> -	imx25_get_boot_source(&src, &instance);
> -
> -	bootsource_set(src);
> -	bootsource_set_instance(instance);
> +	imx_boot_save_loc(imx25_get_boot_source);
>  }
>  
>  void imx35_get_boot_source(enum bootsource *src, int *instance)
> @@ -114,13 +122,7 @@ void imx35_get_boot_source(enum bootsource *src, int *instance)
>  
>  void imx35_boot_save_loc(void)
>  {
> -	enum bootsource src = BOOTSOURCE_UNKNOWN;
> -	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
> -
> -	imx35_get_boot_source(&src, &instance);
> -
> -	bootsource_set(src);
> -	bootsource_set_instance(instance);
> +	imx_boot_save_loc(imx35_get_boot_source);
>  }
>  
>  #define IMX27_SYSCTRL_GPCR	0x18
> @@ -161,13 +163,7 @@ void imx27_get_boot_source(enum bootsource *src, int *instance)
>  
>  void imx27_boot_save_loc(void)
>  {
> -	enum bootsource src = BOOTSOURCE_UNKNOWN;
> -	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
> -
> -	imx27_get_boot_source(&src, &instance);
> -
> -	bootsource_set(src);
> -	bootsource_set_instance(instance);
> +	imx_boot_save_loc(imx27_get_boot_source);
>  }
>  
>  #define IMX51_SRC_SBMR			0x4
> @@ -205,13 +201,7 @@ void imx51_get_boot_source(enum bootsource *src, int *instance)
>  
>  void imx51_boot_save_loc(void)
>  {
> -	enum bootsource src = BOOTSOURCE_UNKNOWN;
> -	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
> -
> -	imx51_get_boot_source(&src, &instance);
> -
> -	bootsource_set(src);
> -	bootsource_set_instance(instance);
> +	imx_boot_save_loc(imx51_get_boot_source);
>  }
>  
>  #define IMX53_SRC_SBMR	0x4
> @@ -431,13 +421,7 @@ void imx6_get_boot_source(enum bootsource *src, int *instance)
>  
>  void imx6_boot_save_loc(void)
>  {
> -	enum bootsource src = BOOTSOURCE_UNKNOWN;
> -	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
> -
> -	imx6_get_boot_source(&src, &instance);
> -
> -	bootsource_set(src);
> -	bootsource_set_instance(instance);
> +	imx_boot_save_loc(imx6_get_boot_source);
>  }
>  
>  #define IMX7_SRC_SBMR1	0x58
> @@ -543,13 +527,7 @@ void imx7_get_boot_source(enum bootsource *src, int *instance)
>  
>  void imx7_boot_save_loc(void)
>  {
> -	enum bootsource src = BOOTSOURCE_UNKNOWN;
> -	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
> -
> -	imx7_get_boot_source(&src, &instance);
> -
> -	bootsource_set(src);
> -	bootsource_set_instance(instance);
> +	imx_boot_save_loc(imx7_get_boot_source);
>  }
>  
>  static int vf610_boot_instance_spi(uint32_t r)
> @@ -643,11 +621,5 @@ void vf610_get_boot_source(enum bootsource *src, int *instance)
>  
>  void vf610_boot_save_loc(void)
>  {
> -	enum bootsource src = BOOTSOURCE_UNKNOWN;
> -	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
> -
> -	vf610_get_boot_source(&src, &instance);
> -
> -	bootsource_set(src);
> -	bootsource_set_instance(instance);
> +	imx_boot_save_loc(vf610_get_boot_source);
>  }
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

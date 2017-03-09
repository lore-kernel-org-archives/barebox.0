Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1clviw-0002OL-Iz
 for barebox@lists.infradead.org; Thu, 09 Mar 2017 10:55:13 +0000
Date: Thu, 9 Mar 2017 11:54:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170309105448.nqtziv6lmjqwpgj5@pengutronix.de>
References: <20170308220909.4560-1-andrew.smirnov@gmail.com>
 <20170308220909.4560-9-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170308220909.4560-9-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 08/20] clk: No-op CLK_OF_DECLARE if not enabled
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey,

On Wed, Mar 08, 2017 at 02:08:57PM -0800, Andrey Smirnov wrote:
> Instead of wrapping each defenition of CLK_OF_DECLARE hook with
> preprocessor guards, change the definition of CLK_OF_DECLARE to expand
> into no-op if COMMON_CLK_OF_PROVIDER is not enabled.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/clk/clk-fixed-factor.c | 2 --
>  drivers/clk/clk-fixed.c        | 3 +--
>  include/linux/clk.h            | 6 +++++-
>  3 files changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/clk/clk-fixed-factor.c b/drivers/clk/clk-fixed-factor.c
> index a3dbf33..0be4855 100644
> --- a/drivers/clk/clk-fixed-factor.c
> +++ b/drivers/clk/clk-fixed-factor.c
> @@ -93,7 +93,6 @@ struct clk *clk_fixed_factor(const char *name,
>  	return &f->clk;
>  }
>  
> -#if defined(CONFIG_COMMON_CLK_OF_PROVIDER)
>  /**
>   * of_fixed_factor_clk_setup() - Setup function for simple fixed factor clock
>   */
> @@ -127,4 +126,3 @@ static int of_fixed_factor_clk_setup(struct device_node *node)
>  }
>  CLK_OF_DECLARE(fixed_factor_clk, "fixed-factor-clock",
>  		of_fixed_factor_clk_setup);
> -#endif

This causes compile breakage when CONFIG_COMMON_CLK_OF_PROVIDER is disabled:

drivers/clk/clk-fixed.c: In function 'of_fixed_clk_setup':
drivers/clk/clk-fixed.c:75:2: error: implicit declaration of function 'of_clk_add_provider' [-Werror=implicit-function-declaration]
drivers/clk/clk-fixed.c:75:35: error: 'of_clk_src_simple_get' undeclared (first use in this function)
drivers/clk/clk-fixed.c:75:35: note: each undeclared identifier is reported only once for each function it appears in
drivers/clk/clk-fixed.c: At top level:
drivers/clk/clk-fixed.c:61:12: warning: 'of_fixed_clk_setup' defined but not used [-Wunused-function]
cc1: some warnings being treated as errors
ICECC[17949] 11:47:35: Compiled on 10.1.0.23
/ptx/work/dude/WORK_A/sha/backup/barebox/barebox/scripts/Makefile.build:249: recipe for target 'drivers/clk/clk-fixed.o' failed
make[3]: *** [drivers/clk/clk-fixed.o] Error 1
make[3]: *** Waiting for unfinished jobs....
  LD      drivers/pinctrl/built-in.o
  CC      drivers/clk/imx/clk-pllv1.o
  CC      drivers/clk/imx/clk-pllv2.o
  CC      drivers/clk/imx/clk-pllv3.o
  CC      drivers/clk/imx/clk-pfd.o
  CC      drivers/clk/imx/clk-gate2.o
  CC      drivers/clk/imx/clk-gate-exclusive.o
  CC      drivers/clk/imx/clk-cpu.o
  CC      drivers/clk/imx/clk.o
  LD      drivers/watchdog/built-in.o
  CC      drivers/clk/imx/clk-imx25.o
drivers/clk/clk-fixed-factor.c: In function 'of_fixed_factor_clk_setup':
drivers/clk/clk-fixed-factor.c:119:2: error: implicit declaration of function 'of_clk_get_parent_name' [-Werror=implicit-function-declaration]
drivers/clk/clk-fixed-factor.c:119:14: warning: assignment makes pointer from integer without a cast
drivers/clk/clk-fixed-factor.c:125:2: error: implicit declaration of function 'of_clk_add_provider' [-Werror=implicit-function-declaration]
drivers/clk/clk-fixed-factor.c:125:35: error: 'of_clk_src_simple_get' undeclared (first use in this function)
drivers/clk/clk-fixed-factor.c:125:35: note: each undeclared identifier is reported only once for each function it appears in
drivers/clk/clk-fixed-factor.c: At top level:
drivers/clk/clk-fixed-factor.c:99:12: warning: 'of_fixed_factor_clk_setup' defined but not used [-Wunused-function]

I dropped this patch for now.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

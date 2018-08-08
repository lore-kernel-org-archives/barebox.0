Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnIAV-0006rE-DI
 for barebox@lists.infradead.org; Wed, 08 Aug 2018 06:42:05 +0000
Date: Wed, 8 Aug 2018 08:41:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180808064151.mk5jhcl67pvze3x3@pengutronix.de>
References: <20180725133618.1510-1-r.hieber@pengutronix.de>
 <20180725133618.1510-5-r.hieber@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180725133618.1510-5-r.hieber@pengutronix.de>
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
Subject: Re: [PATCH 04/13] ARM: MXS: allow configuration of EMI clock dividers
To: Roland Hieber <r.hieber@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 25, 2018 at 03:36:09PM +0200, Roland Hieber wrote:
> For now, the clock dividers are only accessible from mx28_mem_init, and
> the old prescaler of 2 is hardcoded in mx23_mem_init. I'm not sure
> if it makes sense to change it at all.
> 
> Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
> ---
>  arch/arm/boards/duckbill/lowlevel.c           |  2 ++
>  arch/arm/boards/freescale-mx28-evk/lowlevel.c |  2 ++
>  arch/arm/boards/karo-tx28/lowlevel.c          |  2 ++
>  arch/arm/mach-mxs/include/mach/init.h         |  6 +++---
>  arch/arm/mach-mxs/mem-init.c                  | 16 ++++++++--------
>  5 files changed, 17 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm/boards/duckbill/lowlevel.c b/arch/arm/boards/duckbill/lowlevel.c
> index 3adda68d77..393d4e1e12 100644
> --- a/arch/arm/boards/duckbill/lowlevel.c
> +++ b/arch/arm/boards/duckbill/lowlevel.c
> @@ -56,6 +56,8 @@ static noinline void duckbill_init(void)
>  	pr_debug("initializing SDRAM...\n");
>  
>  	mx28_mem_init(PINCTRL_EMI_DS_CTRL_DDR_MODE_DDR2,
> +			/* EMI_CLK of 480 / 2 * (18/21) = 205.7 MHz */
> +			2, 21,
>  			mx28_dram_vals_default);

Instead of adding more parameters to mx28_mem_init() I slighty prefer to
require the boards to call mxs_mem_init_clock() directly instead and
remove it from mx28_mem_init().

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fsNda-0001XF-Re
 for barebox@lists.infradead.org; Wed, 22 Aug 2018 07:33:08 +0000
Date: Wed, 22 Aug 2018 09:32:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180822073255.bfbipekf54gt3b5n@pengutronix.de>
References: <20180821062853.18301-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180821062853.18301-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/2] clk: clk-sccg-pll: Remove leftover debug output
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Aug 20, 2018 at 11:28:52PM -0700, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/clk/imx/clk-sccg-pll.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-sccg-pll.c b/drivers/clk/imx/clk-sccg-pll.c
> index 951234367..bbfd95a11 100644
> --- a/drivers/clk/imx/clk-sccg-pll.c
> +++ b/drivers/clk/imx/clk-sccg-pll.c
> @@ -121,11 +121,9 @@ static void clk_pll1_unprepare(struct clk *clk)
>  {
>  	struct clk_sccg_pll *pll = to_clk_sccg_pll(clk);
>  	u32 val;
> -printf("%s %p\n", __func__, pll);
>  	val = readl(pll->base);
>  	val |= (1 << PLL_PD);
>  	writel(val, pll->base);
> -printf("fuschi\n");
>  }

Applied this one, thanks

I'm glad I haven't used more explicit words as debug markers ;)

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

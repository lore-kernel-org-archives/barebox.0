Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjCSo-0003ze-VZ
 for barebox@lists.infradead.org; Tue, 15 Jan 2019 00:20:20 +0000
Received: by mail-wr1-x443.google.com with SMTP id t27so1002184wra.6
 for <barebox@lists.infradead.org>; Mon, 14 Jan 2019 16:20:17 -0800 (PST)
MIME-Version: 1.0
References: <20190114164211.10871-1-l.stach@pengutronix.de>
 <20190114164211.10871-4-l.stach@pengutronix.de>
In-Reply-To: <20190114164211.10871-4-l.stach@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 14 Jan 2019 16:20:04 -0800
Message-ID: <CAHQ1cqEhbRQiM27vXtn4oExK4ZRVr3Cv8QooHE-=jzEH_V3zZg@mail.gmail.com>
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
Subject: Re: [PATCH 4/8] clk: add divider_recalc_rate helper
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jan 14, 2019 at 8:42 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Closer to Linux kernel implementation and needed for imx8mq
> composite clock.
>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/clk/clk-divider.c | 30 ++++++++++++++++++++++--------
>  include/linux/clk.h       |  5 +++++
>  2 files changed, 27 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
> index 791e10ea99cd..7b1bdde1ce18 100644
> --- a/drivers/clk/clk-divider.c
> +++ b/drivers/clk/clk-divider.c
> @@ -20,6 +20,7 @@
>  #include <linux/clk.h>
>  #include <linux/err.h>
>  #include <linux/log2.h>
> +#include <asm-generic/div64.h>
>
>  #define div_mask(d)    ((1 << ((d)->width)) - 1)
>
> @@ -56,17 +57,17 @@ static unsigned int _get_table_div(const struct clk_div_table *table,
>         return 0;
>  }
>
> -static unsigned int _get_div(struct clk_divider *divider, unsigned int val)
> +static unsigned int _get_div(const struct clk_div_table *table,
> +                            unsigned int val, unsigned long flags, u8 width)
>  {
> -       if (divider->flags & CLK_DIVIDER_ONE_BASED)
> +       if (flags & CLK_DIVIDER_ONE_BASED)
>                 return val;
> -       if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
> +       if (flags & CLK_DIVIDER_POWER_OF_TWO)
>                 return 1 << val;
> -       if (divider->table)
> -               return _get_table_div(divider->table, val);
> +       if (table)
> +               return _get_table_div(table, val);
>         return val + 1;
>  }
> -
>  static unsigned int _get_table_val(const struct clk_div_table *table,
>                                                         unsigned int div)
>  {
> @@ -89,6 +90,18 @@ static unsigned int _get_val(struct clk_divider *divider, unsigned int div)
>         return div - 1;
>  }
>
> +unsigned long divider_recalc_rate(struct clk *clk, unsigned long parent_rate,
> +               unsigned int val,
> +               const struct clk_div_table *table,
> +               unsigned long flags, unsigned long width)
> +{
> +       unsigned int div;
> +
> +       div = _get_div(table, val, flags, width);
> +
> +       return DIV_ROUND_UP_ULL((u64)parent_rate, div);

I just rebased on latest 'next', but I don't seem to have the
definition for DIV_ROUND_UP_ULL(), which breaks the build. Is there a
patch that I am missing?

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

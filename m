Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UGQ14-0007MT-1t
 for barebox@lists.infradead.org; Fri, 15 Mar 2013 08:29:31 +0000
Date: Fri, 15 Mar 2013 09:29:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130315082927.GC1906@pengutronix.de>
References: <1363329340-13126-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1363329340-13126-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [RFC 1/3] clk: Remove unneded private "parent" fields
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Mar 15, 2013 at 10:35:38AM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  drivers/clk/clk-divider-table.c |    4 +---
>  drivers/clk/clk-divider.c       |    4 +---
>  drivers/clk/clk-fixed-factor.c  |    4 +---
>  drivers/clk/clk-gate.c          |    4 +---
>  4 files changed, 4 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/clk/clk-divider-table.c b/drivers/clk/clk-divider-table.c
> index 204e24d..e75fb78 100644
> --- a/drivers/clk/clk-divider-table.c
> +++ b/drivers/clk/clk-divider-table.c
> @@ -25,7 +25,6 @@ struct clk_divider_table {
>  	u8 shift;
>  	u8 width;
>  	void __iomem *reg;
> -	const char *parent;
>  	const struct clk_div_table *table;
>  	int table_size;
>  	int max_div_index;
> @@ -94,10 +93,9 @@ struct clk *clk_divider_table(const char *name,
>  	div->shift = shift;
>  	div->reg = reg;
>  	div->width = width;
> -	div->parent = parent;
>  	div->clk.ops = &clk_divider_table_ops;
>  	div->clk.name = name;
> -	div->clk.parent_names = &div->parent;
> +	div->clk.parent_names = &parent;

You can't do that. You can assume that the string *name points to stays
valid, but the pointer itself might not stay valid when leaving this
function. parent_names is an array of pointers, with the divider it only
has one entry, but still you need to keep a pointer for it. This is what
div->parent is for.

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

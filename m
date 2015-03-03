Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YSik8-0000IG-NL
 for barebox@lists.infradead.org; Tue, 03 Mar 2015 09:03:57 +0000
Date: Tue, 3 Mar 2015 10:03:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150303090334.GR11010@pengutronix.de>
References: <1425327722-28232-1-git-send-email-rockford@yandex.ru>
 <1425327722-28232-9-git-send-email-rockford@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1425327722-28232-9-git-send-email-rockford@yandex.ru>
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
Subject: Re: [PATCH 08/18] CLK: Check and do not allow to register clock twice.
To: Andrey Panov <rockford@yandex.ru>
Cc: barebox@lists.infradead.org

On Mon, Mar 02, 2015 at 11:21:52PM +0300, Andrey Panov wrote:
> Signed-off-by: Andrey Panov <rockford@yandex.ru>
> ---
>  drivers/clk/clk.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index 584e2f3..5f78c9c 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -212,8 +212,17 @@ struct clk *clk_get_parent(struct clk *clk)
>  
>  int clk_register(struct clk *clk)
>  {
> +	struct clk *c;
> +
>  	clk->parents = xzalloc(sizeof(struct clk *) * clk->num_parents);
>  
> +	list_for_each_entry(c, &clks, list) {
> +		if (!strcmp(c->name, clk->name)){
> +			pr_err("%s clk %s is already registered, skipping!\n", __func__, clk->name);
> +			return 0;
> +		}
> +	}

Why return 0 here? This should return -EBUSY. Also please move this
check above the memory allocation.

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

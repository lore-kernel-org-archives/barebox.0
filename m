Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gM6mL-0004yF-Vl
 for barebox@lists.infradead.org; Mon, 12 Nov 2018 07:37:03 +0000
Date: Mon, 12 Nov 2018 08:36:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181112073650.ekvm2u5l5xikce5y@pengutronix.de>
References: <20181110075954.32746-1-linux@rempel-privat.de>
 <20181110075954.32746-5-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181110075954.32746-5-linux@rempel-privat.de>
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
Subject: Re: [PATCH v1 4/5] clk: imx: cpu: avoid use after free on error
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Sat, Nov 10, 2018 at 08:59:53AM +0100, Oleksij Rempel wrote:
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> ---
>  drivers/clk/imx/clk-cpu.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/imx/clk-cpu.c b/drivers/clk/imx/clk-cpu.c
> index 5ac0ed178..f9db36018 100644
> --- a/drivers/clk/imx/clk-cpu.c
> +++ b/drivers/clk/imx/clk-cpu.c
> @@ -111,8 +111,10 @@ struct clk *imx_clk_cpu(const char *name, const char *parent_name,
>  	cpu->clk.num_parents = 1;
>  
>  	ret = clk_register(&cpu->clk);
> -	if (ret)
> +	if (ret) {
>  		free(cpu);
> +		return 0;

Should be return NULL.

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UGQNR-0004Zq-PB
 for barebox@lists.infradead.org; Fri, 15 Mar 2013 08:52:38 +0000
Date: Fri, 15 Mar 2013 09:52:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130315085235.GD1906@pengutronix.de>
References: <1363329340-13126-1-git-send-email-shc_work@mail.ru>
 <1363329340-13126-2-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1363329340-13126-2-git-send-email-shc_work@mail.ru>
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
Subject: Re: [RFC 2/3] clk: Using the "is_enabled" to determine the clock state
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Mar 15, 2013 at 10:35:39AM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  drivers/clk/clk.c |    2 ++
>  1 files changed, 2 insertions(+), 0 deletions(-)
> 
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index cb94755..d5dbbd9 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -213,6 +213,8 @@ int clk_register(struct clk *clk)
>  
>  	if (clk->flags & CLK_ALWAYS_ENABLED) {
>  		clk->enable_count = 1;
> +	} else if (clk->ops->is_enabled) {
> +		clk->enable_count = clk->ops->is_enabled(clk);
>  	}

No. The enable_count should be a pure software counter only which helps
us to keep track whether we can disable a clk on the next clk_disable or
whether there are still users left.

This reminds me that I created a similar patch for this a few days ago.
I'll send in a minute.

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

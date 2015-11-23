Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a0kzt-0003lp-Vn
 for barebox@lists.infradead.org; Mon, 23 Nov 2015 06:53:10 +0000
Date: Mon, 23 Nov 2015 07:52:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151123065248.GN11966@pengutronix.de>
References: <1448010198-23247-1-git-send-email-j.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1448010198-23247-1-git-send-email-j.remmet@phytec.de>
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
Subject: Re: [PATCH] state: make type check error verbose
To: Jan Remmet <j.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Nov 20, 2015 at 10:03:18AM +0100, Jan Remmet wrote:
> Wrong type let state probe fail with ENOENT.
> 
> Signed-off-by: Jan Remmet <j.remmet@phytec.de>
> ---
>  common/state.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/common/state.c b/common/state.c
> index 117a686..a161b94 100644
> --- a/common/state.c
> +++ b/common/state.c
> @@ -716,6 +716,8 @@ static int state_convert_node_variable(struct state *state,
>  
>  	vtype = state_find_type_by_name(type_name);
>  	if (!vtype) {
> +		dev_err(&state->dev, "unkown type: %s in %s\n", type_name,
> +			node->full_name);
>  		ret = -ENOENT;
>  		goto out_free;
>  	}
> -- 
> 1.9.1
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

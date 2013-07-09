Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwRpo-0007rj-4a
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 06:55:36 +0000
Date: Tue, 9 Jul 2013 08:55:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130709065514.GN516@pengutronix.de>
References: <20130705065043.GG516@pengutronix.de>
 <1373059183-20229-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1373059183-20229-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH] OF: base: initalize from node in
 of_find_node_with_property
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jul 05, 2013 at 11:19:43PM +0200, Sebastian Hesselbarth wrote:
> This adds initialization of from device node with root_node if NULL
> is passed. This corresponds to the behavior of all other node iterators.
> 
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> ---
> @Sascha: this is the last remaining iterator fix we talked about.

Applied, thanks

Sascha

> 
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: barebox@lists.infradead.org
> ---
>  drivers/of/base.c |    3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 5440f40..7bee912 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -364,6 +364,9 @@ struct device_node *of_find_node_with_property(struct device_node *from,
>  {
>  	struct device_node *np;
>  
> +	if (!from)
> +		from = root_node;
> +
>  	of_tree_for_each_node_from(np, from) {
>  		struct property *pp = of_find_property(np, prop_name, NULL);
>  		if (pp)
> -- 
> 1.7.10.4
> 
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

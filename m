Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1Ya4-0004ZK-5e
 for barebox@lists.infradead.org; Fri, 10 Jan 2014 09:40:45 +0000
Date: Fri, 10 Jan 2014 10:40:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140110094021.GD6750@pengutronix.de>
References: <20140106105052.GE3677@pengutronix.de>
 <1389012343-20503-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1389012343-20503-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH v3] of: find also nodes by mixture of alias and path
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 06, 2014 at 01:45:43PM +0100, Jan Weitzel wrote:
> Let of_find_node_by_path_or_alias also find a node starting with an alias
> followed by a path like "i2c0/tps@24"
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>

Applied, thanks

Sascha

> ---
> v2: rename ret to node
> v3: use strchr
>  drivers/of/base.c |   23 ++++++++++++++++++++++-
>  1 files changed, 22 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index ea2d879..6e5e7d6 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1378,11 +1378,32 @@ EXPORT_SYMBOL(of_find_node_by_path);
>  struct device_node *of_find_node_by_path_or_alias(struct device_node *root,
>  		const char *str)
>  {
> +	struct device_node *node;
> +	const char *slash;
> +	char *alias;
> +	size_t len = 0;
> +
>  	if (*str ==  '/')
>  		return of_find_node_by_path_from(root, str);
> -	else
> +
> +	slash = strchr(str, '/');
> +
> +	if (!slash)
>  		return of_find_node_by_alias(root, str);
>  
> +	len = slash - str + 1;
> +	alias = xmalloc(len);
> +	strlcpy(alias, str, len);
> +
> +	node = of_find_node_by_alias(root, alias);
> +
> +	if (!node)
> +		goto out;
> +
> +	node = of_find_node_by_path_from(node, slash);
> +out:
> +	free(alias);
> +	return node;
>  }
>  EXPORT_SYMBOL(of_find_node_by_path_or_alias);
>  
> -- 
> 1.7.0.4
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

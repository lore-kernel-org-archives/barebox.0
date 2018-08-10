Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fo0tt-0007H3-RT
 for barebox@lists.infradead.org; Fri, 10 Aug 2018 06:27:55 +0000
Date: Fri, 10 Aug 2018 08:27:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180810062742.sxnw6dpjjapuuxf7@pengutronix.de>
References: <20180809130740.14125-1-r.hieber@pengutronix.de>
 <20180809213715.23715-1-r.hieber@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180809213715.23715-1-r.hieber@pengutronix.de>
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
Subject: Re: [PATCH v2] FIT: be more verbose when RSA signature check fails
To: Roland Hieber <r.hieber@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Aug 09, 2018 at 11:37:15PM +0200, Roland Hieber wrote:
> Tell the user what device tree node we're looking for.
> 
> Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
> ---
> v1 -> v2: prevent use-after-free of key_path
> 
> ---
>  common/image-fit.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/image-fit.c b/common/image-fit.c
> index 6cbf23250d..dfd1fa02c9 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -289,11 +289,12 @@ static int fit_check_rsa_signature(struct device_node *sig_node,
>  	}
>  	key_path = xasprintf("/signature/key-%s", key_name);
>  	key_node = of_find_node_by_path(key_path);
> -	free(key_path);
>  	if (!key_node) {
> -		pr_info("failed to find key node\n");
> +		pr_info("failed to find key node %s\n", key_path);
> +		free(key_path);
>  		return -ENOENT;
>  	}
> +	free(key_path);
>  
>  	ret = rsa_of_read_key(key_node, &key);
>  	if (ret) {
> -- 
> 2.18.0
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

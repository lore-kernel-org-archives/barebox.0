Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cqaOh-000580-Jz
 for barebox@lists.infradead.org; Wed, 22 Mar 2017 07:09:33 +0000
Date: Wed, 22 Mar 2017 08:09:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170322070909.jncddvur7dfpfc7q@pengutronix.de>
References: <20170320125540.8431-1-o.rempel@pengutronix.de>
 <20170320125540.8431-2-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170320125540.8431-2-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1 2/2] bootm: fit: support rsa2048
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>

On Mon, Mar 20, 2017 at 01:55:40PM +0100, Oleksij Rempel wrote:
> From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  common/image-fit.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied (only this one), thanks

Sascha

> 
> diff --git a/common/image-fit.c b/common/image-fit.c
> index 48c021347..2597312f7 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -254,6 +254,8 @@ static int fit_verify_signature(struct device_node *sig_node, void *fit)
>  	}
>  	if (strcmp(algo_name, "sha1,rsa2048") == 0) {
>  		algo = HASH_ALGO_SHA1;
> +	} else if (strcmp(algo_name, "sha256,rsa2048") == 0) {
> +		algo = HASH_ALGO_SHA256;
>  	} else if (strcmp(algo_name, "sha256,rsa4096") == 0) {
>  		algo = HASH_ALGO_SHA256;
>  	} else	{
> -- 
> 2.11.0
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

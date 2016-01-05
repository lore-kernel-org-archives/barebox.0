Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aGUsb-000337-Jv
 for barebox@lists.infradead.org; Tue, 05 Jan 2016 16:54:42 +0000
Date: Tue, 5 Jan 2016 17:54:10 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20160105165410.GA6132@ravnborg.org>
References: <1451981463-23604-1-git-send-email-mkl@pengutronix.de>
 <1451981463-23604-2-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1451981463-23604-2-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH 1/3] crypto: add enum
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org, kernel@pengutronix.de

On Tue, Jan 05, 2016 at 09:11:01AM +0100, Marc Kleine-Budde wrote:
> From: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>

The subject and the patch description could use some
more love and care.


> diff --git a/crypto/digest.c b/crypto/digest.c
> index a90e4ff79f89..46600f246ece 100644
> --- a/crypto/digest.c
> +++ b/crypto/digest.c
> @@ -116,7 +116,27 @@ static struct digest_algo *digest_algo_get_by_name(const char *name)
>  	list_for_each_entry(tmp, &digests, list) {
>  		if (strcmp(tmp->base.name, name) != 0)
>  			continue;
> -		
> +
> +		if (tmp->base.priority <= priority)
> +			continue;
> +
> +		d = tmp;
> +		priority = tmp->base.priority;
> +	}
> +
> +	return d;
> +}
> +
> +static struct digest_algo *digest_algo_get_by_algo(enum hash_algo algo)
> +{
> +	struct digest_algo *d = NULL;
> +	struct digest_algo *tmp;
> +	int priority = -1;
> +
> +	list_for_each_entry(tmp, &digests, list) {
> +		if (tmp->base.algo != algo)
> +			continue;
> +
>  		if (tmp->base.priority <= priority)
>  			continue;
>  
> @@ -160,6 +180,27 @@ struct digest *digest_alloc(const char *name)
>  }
>  EXPORT_SYMBOL_GPL(digest_alloc);
>  
> +struct digest *digest_alloc_by_algo(enum hash_algo hash_algo)
> +{
> +	struct digest *d;
> +	struct digest_algo *algo;
> +
> +	algo = digest_algo_get_by_algo(hash_algo);
> +	if (!algo)
> +		return NULL;
> +
> +	d = xzalloc(sizeof(*d));
> +	d->algo = algo;
> +	d->ctx = xzalloc(algo->ctx_length);

Neither allocations are checked for failure.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

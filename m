Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YVZGS-0006IL-QL
 for barebox@lists.infradead.org; Wed, 11 Mar 2015 05:33:05 +0000
Date: Wed, 11 Mar 2015 06:32:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150311053242.GL24885@pengutronix.de>
References: <20150310141659.GH30554@ns203013.ovh.net>
 <1425997697-27467-1-git-send-email-plagnioj@jcrosoft.com>
 <1425997697-27467-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1425997697-27467-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 2/7] digest: make it multi-instance
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Mar 10, 2015 at 03:28:12PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Now you need to call digest_alloc and when you finish to use it digest_free.
> 
> We need this for upcomming aes encryption support and secure boot
> as we will need multiple instance of the same digest.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---

> +struct digest* digest_alloc(char* name)
> +{
> +	struct digest* d;
> +	struct digest_algo* algo;
> +
> +	algo = digest_algo_get_by_name(name);
> +	if (!algo)
> +		return NULL;
> +
> +	d = xzalloc(sizeof(*d));
> +	d->algo = algo;
> +	d->ctx = xzalloc(algo->ctx_length);


I would pretty much prefer to delegate the allocation to the digest_algo
via an algo->alloc() function. The algo specific allocation function
could then embed struct digest into a bigger struct and use
container_of() to get its private data. No need for d->ctx and
algo->ctx_length then.

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

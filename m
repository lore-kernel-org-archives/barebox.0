Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aGrNf-0006mr-7g
 for barebox@lists.infradead.org; Wed, 06 Jan 2016 16:56:16 +0000
Date: Wed, 6 Jan 2016 17:55:50 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20160106165550.GA8743@ravnborg.org>
References: <1451981463-23604-1-git-send-email-mkl@pengutronix.de>
 <1451981463-23604-2-git-send-email-mkl@pengutronix.de>
 <20160105165410.GA6132@ravnborg.org>
 <568D2733.4040304@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <568D2733.4040304@pengutronix.de>
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

> >>  
> >> +struct digest *digest_alloc_by_algo(enum hash_algo hash_algo)
> >> +{
> >> +	struct digest *d;
> >> +	struct digest_algo *algo;
> >> +
> >> +	algo = digest_algo_get_by_algo(hash_algo);
> >> +	if (!algo)
> >> +		return NULL;
> >> +
> >> +	d = xzalloc(sizeof(*d));
> >> +	d->algo = algo;
> >> +	d->ctx = xzalloc(algo->ctx_length);
> > 
> > Neither allocations are checked for failure.
> 
> If xzalloc fails barebox will go into OOM and throw a backtrace.
Makes sense. I thought about this, but failed to go back
and check this myself.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

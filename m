Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YVe8Y-0005Cd-K3
 for barebox@lists.infradead.org; Wed, 11 Mar 2015 10:45:15 +0000
Received: from mail629.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 0CDBDFFA944
 for <barebox@lists.infradead.org>; Wed, 11 Mar 2015 11:44:50 +0100 (CET)
Date: Wed, 11 Mar 2015 11:44:48 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150311102654.GJ30554@ns203013.ovh.net>
References: <20150310141659.GH30554@ns203013.ovh.net>
 <1425997697-27467-1-git-send-email-plagnioj@jcrosoft.com>
 <1425997697-27467-2-git-send-email-plagnioj@jcrosoft.com>
 <20150311053242.GL24885@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150311053242.GL24885@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 06:32 Wed 11 Mar     , Sascha Hauer wrote:
> On Tue, Mar 10, 2015 at 03:28:12PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Now you need to call digest_alloc and when you finish to use it digest_free.
> > 
> > We need this for upcomming aes encryption support and secure boot
> > as we will need multiple instance of the same digest.
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> 
> > +struct digest* digest_alloc(char* name)
> > +{
> > +	struct digest* d;
> > +	struct digest_algo* algo;
> > +
> > +	algo = digest_algo_get_by_name(name);
> > +	if (!algo)
> > +		return NULL;
> > +
> > +	d = xzalloc(sizeof(*d));
> > +	d->algo = algo;
> > +	d->ctx = xzalloc(algo->ctx_length);
> 
> 
> I would pretty much prefer to delegate the allocation to the digest_algo
> via an algo->alloc() function. The algo specific allocation function
> could then embed struct digest into a bigger struct and use
> container_of() to get its private data. No need for d->ctx and
> algo->ctx_length then.
> 

even in linux we did allocate the ctx at framework level

this will reduce the binary size at the end just few bytes maybe but
few bytes everywhere make kiB as did Mazda on then new mx-5

to save 100Kg on their last roadster

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YVyFK-0007qM-Qn
 for barebox@lists.infradead.org; Thu, 12 Mar 2015 08:13:35 +0000
Received: from mail240.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 24FDEFFAB43
 for <barebox@lists.infradead.org>; Thu, 12 Mar 2015 09:13:12 +0100 (CET)
Date: Thu, 12 Mar 2015 09:13:08 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150312081308.GR30554@ns203013.ovh.net>
References: <20150311165009.GP30554@ns203013.ovh.net>
 <1426092789-7708-1-git-send-email-plagnioj@jcrosoft.com>
 <1426092789-7708-7-git-send-email-plagnioj@jcrosoft.com>
 <20150312071707.GZ24885@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150312071707.GZ24885@pengutronix.de>
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
Subject: Re: [PATCH 7/8] digest: add HMAC support for md5, sha1, sha224,
 sha256, sha384, sha512
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:17 Thu 12 Mar     , Sascha Hauer wrote:
> On Wed, Mar 11, 2015 at 05:53:08PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > the hmac algo will be registered as hmac(%s) such as hmac(sha256)
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> > +static int digest_hmac_alloc(struct digest *d)
> > +{
> > +	struct digest_hmac_ctx *dh = d->ctx;
> > +	struct digest_hmac *hmac = to_digest_hmac(d->algo);
> > +
> > +	dh->d = digest_alloc(hmac->name);
> > +	if (!dh->d)
> > +		return -EINVAL;
> > +
> > +	dh->ipad = xmalloc(sizeof(unsigned char) * hmac->pad_length);
> > +	dh->opad = xmalloc(sizeof(unsigned char) * hmac->pad_length);
> 
> sizeof(unsigned char) is 1. Dropped while applying.
habit to always use sizeof but yes no diff

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

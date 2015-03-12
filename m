Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YVxN5-0003Nl-P0
 for barebox@lists.infradead.org; Thu, 12 Mar 2015 07:17:33 +0000
Date: Thu, 12 Mar 2015 08:17:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150312071707.GZ24885@pengutronix.de>
References: <20150311165009.GP30554@ns203013.ovh.net>
 <1426092789-7708-1-git-send-email-plagnioj@jcrosoft.com>
 <1426092789-7708-7-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1426092789-7708-7-git-send-email-plagnioj@jcrosoft.com>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Mar 11, 2015 at 05:53:08PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> the hmac algo will be registered as hmac(%s) such as hmac(sha256)
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> +static int digest_hmac_alloc(struct digest *d)
> +{
> +	struct digest_hmac_ctx *dh = d->ctx;
> +	struct digest_hmac *hmac = to_digest_hmac(d->algo);
> +
> +	dh->d = digest_alloc(hmac->name);
> +	if (!dh->d)
> +		return -EINVAL;
> +
> +	dh->ipad = xmalloc(sizeof(unsigned char) * hmac->pad_length);
> +	dh->opad = xmalloc(sizeof(unsigned char) * hmac->pad_length);

sizeof(unsigned char) is 1. Dropped while applying.

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

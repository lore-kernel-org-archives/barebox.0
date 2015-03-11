Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YVZNl-0001kD-9E
 for barebox@lists.infradead.org; Wed, 11 Mar 2015 05:40:37 +0000
Date: Wed, 11 Mar 2015 06:40:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150311054014.GM24885@pengutronix.de>
References: <20150310141659.GH30554@ns203013.ovh.net>
 <1425997697-27467-1-git-send-email-plagnioj@jcrosoft.com>
 <1425997697-27467-6-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1425997697-27467-6-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 6/7] digest: add HMAC support for md5, sha1, sha224,
 sha256, sha384, sha512
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Mar 10, 2015 at 03:28:16PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  common/digest.c  | 51 +++++++++++++++++++++++++++++++++++++++++++++++++++
>  crypto/md5.c     |  1 +
>  crypto/sha1.c    |  1 +
>  crypto/sha2.c    |  2 ++
>  crypto/sha4.c    |  2 ++
>  include/digest.h | 16 ++++++++++++++++
>  6 files changed, 73 insertions(+)
> 
> diff --git a/common/digest.c b/common/digest.c
> index 89af862..7c09ce2 100644
> --- a/common/digest.c
> +++ b/common/digest.c
> @@ -102,6 +102,57 @@ void digest_free(struct digest *d)
>  }
>  EXPORT_SYMBOL_GPL(digest_free);
>  
> +void digest_hmac_init(struct digest *d, const unsigned char *key,
> +                       size_t keylen)
> +{

We should rather implement hmac just like the other digests. That is,
this function should be digest->init and the key would have to be passed
via the same mechanism used in the kernel: a digest->setkey

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

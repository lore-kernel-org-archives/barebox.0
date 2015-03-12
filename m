Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo68.mail-out.ovh.net ([46.105.41.146])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YW7GD-0006A5-Vt
 for barebox@lists.infradead.org; Thu, 12 Mar 2015 17:51:07 +0000
Received: from mail416.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo68.mail-out.ovh.net (Postfix) with SMTP id 926D7FFA4E7
 for <barebox@lists.infradead.org>; Thu, 12 Mar 2015 18:50:43 +0100 (CET)
Date: Thu, 12 Mar 2015 18:50:42 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150312175042.GU30554@ns203013.ovh.net>
References: <1426171199-2729-1-git-send-email-jlu@pengutronix.de>
 <1426171880-5966-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1426171880-5966-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [RFC] digest: Add enum
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15:51 Thu 12 Mar     , Jan Luebbe wrote:
> From: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> This is also needed as the first patch for the FIT support series. It seems
> I can't count to 5.
> 
>  common/digest.c  | 12 ++++++++++++
>  crypto/md5.c     |  1 +
>  crypto/sha1.c    |  1 +
>  crypto/sha2.c    |  2 ++
>  include/digest.h | 24 ++++++++++++++++++++++++

do as in the kernel use the string as we may want to add hw IP

Best Regadrs,
J.
>  5 files changed, 40 insertions(+)
> 
> diff --git a/common/digest.c b/common/digest.c
> index ae414ba5d599..51be2ca4148b 100644
> --- a/common/digest.c
> +++ b/common/digest.c
> @@ -75,6 +75,18 @@ struct digest* digest_get_by_name(char* name)
>  }
>  EXPORT_SYMBOL_GPL(digest_get_by_name);
>  
> +struct digest *digest_get(enum hash_algo algo)
> +{
> +	struct digest* d;
> +
> +	list_for_each_entry(d, &digests, list)
> +		if (d->algo == algo)
> +			return d;
> +	return NULL;
> +
> +}
> +EXPORT_SYMBOL_GPL(digest_get);
> +
>  int digest_file_window(struct digest *d, char *filename,
>  		       unsigned char *hash,
>  		       ulong start, ulong size)
> diff --git a/crypto/md5.c b/crypto/md5.c
> index 6c4ca1dd59b8..87728338708e 100644
> --- a/crypto/md5.c
> +++ b/crypto/md5.c
> @@ -305,6 +305,7 @@ static struct md5 m = {
>  		.update = digest_md5_update,
>  		.final = digest_md5_final,
>  		.length = 16,
> +		.algo = HASH_ALGO_MD5,
>  	}
>  };
>  
> diff --git a/crypto/sha1.c b/crypto/sha1.c
> index 58d14a8b3f39..29fcdbae59a7 100644
> --- a/crypto/sha1.c
> +++ b/crypto/sha1.c
> @@ -326,6 +326,7 @@ static struct sha1 m = {
>  		.update = digest_sha1_update,
>  		.final = digest_sha1_final,
>  		.length = SHA1_SUM_LEN,
> +		.algo = HASH_ALGO_SHA1,
>  	}
>  };
>  
> diff --git a/crypto/sha2.c b/crypto/sha2.c
> index 00a1af3419c6..72d43015687c 100644
> --- a/crypto/sha2.c
> +++ b/crypto/sha2.c
> @@ -316,6 +316,7 @@ static struct sha2 m224 = {
>  		.update = digest_sha2_update,
>  		.final = digest_sha2_final,
>  		.length = SHA224_SUM_LEN,
> +		.algo = HASH_ALGO_SHA224,
>  	}
>  };
>  #endif
> @@ -337,6 +338,7 @@ static struct sha2 m256 = {
>  		.update = digest_sha2_update,
>  		.final = digest_sha2_final,
>  		.length = SHA256_SUM_LEN,
> +		.algo = HASH_ALGO_SHA256,
>  	}
>  };
>  #endif
> diff --git a/include/digest.h b/include/digest.h
> index 8563c10128fe..62f6248d0768 100644
> --- a/include/digest.h
> +++ b/include/digest.h
> @@ -21,6 +21,27 @@
>  
>  #include <linux/list.h>
>  
> +enum hash_algo {
> +	HASH_ALGO_MD4,
> +	HASH_ALGO_MD5,
> +	HASH_ALGO_SHA1,
> +	HASH_ALGO_RIPE_MD_160,
> +	HASH_ALGO_SHA256,
> +	HASH_ALGO_SHA384,
> +	HASH_ALGO_SHA512,
> +	HASH_ALGO_SHA224,
> +	HASH_ALGO_RIPE_MD_128,
> +	HASH_ALGO_RIPE_MD_256,
> +	HASH_ALGO_RIPE_MD_320,
> +	HASH_ALGO_WP_256,
> +	HASH_ALGO_WP_384,
> +	HASH_ALGO_WP_512,
> +	HASH_ALGO_TGR_128,
> +	HASH_ALGO_TGR_160,
> +	HASH_ALGO_TGR_192,
> +	HASH_ALGO__LAST
> +};
> +
>  struct digest
>  {
>  	char *name;
> @@ -31,6 +52,8 @@ struct digest
>  
>  	unsigned int length;
>  
> +	enum hash_algo algo;
> +
>  	struct list_head list;
>  };
>  
> @@ -41,6 +64,7 @@ int digest_register(struct digest *d);
>  void digest_unregister(struct digest *d);
>  
>  struct digest* digest_get_by_name(char* name);
> +struct digest *digest_get(enum hash_algo);
>  
>  int digest_file_window(struct digest *d, char *filename,
>  		       unsigned char *hash,
> -- 
> 2.1.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

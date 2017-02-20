Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cfoGY-00043X-LS
 for barebox@lists.infradead.org; Mon, 20 Feb 2017 13:44:38 +0000
Message-ID: <1487598249.2268.9.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 20 Feb 2017 14:44:09 +0100
In-Reply-To: <1485872952-8386-1-git-send-email-s.hauer@pengutronix.de>
References: <1485872952-8386-1-git-send-email-s.hauer@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH] scripts: mxsimage: Fix build with OpenSSL < 1.1.x
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, ukl@pengutronix.de

Am Dienstag, den 31.01.2017, 15:29 +0100 schrieb Sascha Hauer:
> Move the compatibility wrapper functions up so that they
> are defined before they are used.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Tested-by: Lucas Stach <l.stach@pengutronix.de>

This fixes the build failures seen in the randcfg builder. Can you
please commit this?

> ---
>  scripts/mxsimage.c | 62 +++++++++++++++++++++++++++---------------------------
>  1 file changed, 31 insertions(+), 31 deletions(-)
> 
> diff --git a/scripts/mxsimage.c b/scripts/mxsimage.c
> index bcbbf00..5c2c307 100644
> --- a/scripts/mxsimage.c
> +++ b/scripts/mxsimage.c
> @@ -410,6 +410,37 @@ static void make_crc_table(void)
>  	crc_table_valid = 1;
>  }
>  
> +/*
> + * OpenSSL 1.1.0 and newer compatibility functions:
> + * https://wiki.openssl.org/index.php/1.1_API_Changes
> + */
> +#if OPENSSL_VERSION_NUMBER < 0x10100000L
> +static void *OPENSSL_zalloc(size_t num)
> +{
> +	void *ret = OPENSSL_malloc(num);
> +
> +	if (ret != NULL)
> +		memset(ret, 0, num);
> +	return ret;
> +}
> +
> +EVP_MD_CTX *EVP_MD_CTX_new(void)
> +{
> +	return OPENSSL_zalloc(sizeof(EVP_MD_CTX));
> +}
> +
> +void EVP_MD_CTX_free(EVP_MD_CTX *ctx)
> +{
> +	EVP_MD_CTX_cleanup(ctx);
> +	OPENSSL_free(ctx);
> +}
> +
> +int EVP_CIPHER_CTX_reset(EVP_CIPHER_CTX *ctx)
> +{
> +	return EVP_CIPHER_CTX_cleanup(ctx);
> +}
> +#endif
> +
>  uint32_t pbl_crc32(uint32_t in_crc, const char *buf, uint32_t len)
>  {
>  	uint32_t crc32_val;
> @@ -2292,37 +2323,6 @@ static int sb_verify_image_end(struct sb_image_ctx *ictx,
>  	return ret;
>  }
>  
> -/*
> - * OpenSSL 1.1.0 and newer compatibility functions:
> - * https://wiki.openssl.org/index.php/1.1_API_Changes
> - */
> -#if OPENSSL_VERSION_NUMBER < 0x10100000L
> -static void *OPENSSL_zalloc(size_t num)
> -{
> -	void *ret = OPENSSL_malloc(num);
> -
> -	if (ret != NULL)
> -		memset(ret, 0, num);
> -	return ret;
> -}
> -
> -EVP_MD_CTX *EVP_MD_CTX_new(void)
> -{
> -	return OPENSSL_zalloc(sizeof(EVP_MD_CTX));
> -}
> -
> -void EVP_MD_CTX_free(EVP_MD_CTX *ctx)
> -{
> -	EVP_MD_CTX_cleanup(ctx);
> -	OPENSSL_free(ctx);
> -}
> -
> -int EVP_CIPHER_CTX_reset(EVP_CIPHER_CTX *ctx)
> -{
> -	return EVP_CIPHER_CTX_cleanup(ctx);
> -}
> -#endif
> -
>  static int sb_build_tree_from_img(struct sb_image_ctx *ictx)
>  {
>  	long filesize;



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

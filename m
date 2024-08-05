Delivery-date: Mon, 05 Aug 2024 12:03:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sauYW-006S66-23
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 12:03:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sauYV-0005gM-VE
	for lore@pengutronix.de; Mon, 05 Aug 2024 12:03:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NgknpridFUg2cMq9MuNsvEnFfyzcJGlTfTrjzSYOP4Y=; b=YfM5jbK8HMcCUjqRAuVJqGLE1P
	ABRcBoCIinUNFUvL2pHBMTzX0MyhsXRjYOySryIWCO+AqODO1vYTkma8z9NubD34gYa3hbOe1Z1cB
	X/eDxwZ81xjAr6ZXigvOKH7pUJnN3ieeXxp6H+gOdu7hLqmpbbgq1n5D61Ra74E9gmDi+vJv97oE6
	3wgSfJalA1BIiek3DjvaIP6LMIx3R1Q5gFir4ekZoJzZyWfd0WqPVQNxfLyACXdRT1d+OGCCFMspA
	3DQFpRu8o136zy/6QcnPFoSods5yafYruGF/T+8jk6qZ4pfTeXUGTHPg+M3wOdwMEXgeGg/Tw6iUy
	r3dXVx1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sauY2-0000000FQFV-1PQz;
	Mon, 05 Aug 2024 10:02:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sauXy-0000000FQDx-3vai
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 10:02:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sauXx-0005Rq-Hn; Mon, 05 Aug 2024 12:02:33 +0200
Message-ID: <62a21a92-998c-4e87-95ae-0edd8bfa92d0@pengutronix.de>
Date: Mon, 5 Aug 2024 12:02:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
 <20240801055737.3190132-10-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240801055737.3190132-10-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_030235_009294_809007B3 
X-CRM114-Status: GOOD (  18.09  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 09/19] rsatoc: use non deprecated openssl functions to
 retrieve RSA params
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 01.08.24 07:57, Sascha Hauer wrote:
> EVP_PKEY_get1_RSA() and RSA_get0_key() are deprecated. Use
> EVP_PKEY_get_bn_param() instead.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  scripts/rsatoc.c | 29 +++++++++++++++--------------
>  1 file changed, 15 insertions(+), 14 deletions(-)
> 
> diff --git a/scripts/rsatoc.c b/scripts/rsatoc.c
> index afef6212d0..c7bc4ba843 100644
> --- a/scripts/rsatoc.c
> +++ b/scripts/rsatoc.c
> @@ -18,6 +18,8 @@
>  #include <openssl/ssl.h>
>  #include <openssl/evp.h>
>  #include <openssl/engine.h>
> +#include <openssl/provider.h>
> +#include <openssl/core_names.h>
>  
>  static int dts, standalone;
>  
> @@ -160,14 +162,17 @@ static int engine_get_pub_key(const char *key_id, EVP_PKEY **key)
>  /*
>   * rsa_get_exponent(): - Get the public exponent from an RSA key
>   */
> -static int rsa_get_exponent(RSA *key, uint64_t *e)
> +static int rsa_get_exponent(EVP_PKEY *key, uint64_t *e)
>  {
>  	int ret;
>  	BIGNUM *bn_te = NULL;
> -	const BIGNUM *key_e;
> +	BIGNUM *key_e = NULL;
>  	uint64_t te;
>  
> -	RSA_get0_key(key, NULL, &key_e, NULL);
> +	ret = EVP_PKEY_get_bn_param(key, OSSL_PKEY_PARAM_RSA_E, &key_e);
> +	if (!ret)
> +		return -EINVAL;
> +
>  	if (BN_num_bits(key_e) > 64) {
>  		ret = -EINVAL;
>  		goto cleanup;
> @@ -204,6 +209,7 @@ static int rsa_get_exponent(RSA *key, uint64_t *e)
>  cleanup:
>  	if (bn_te)
>  		BN_free(bn_te);
> +	BN_free(key_e);
>  
>  	return ret;
>  }
> @@ -214,20 +220,12 @@ static int rsa_get_exponent(RSA *key, uint64_t *e)
>  static int rsa_get_params(EVP_PKEY *key, uint64_t *exponent, uint32_t *n0_invp,
>  			  BIGNUM **modulusp, BIGNUM **r_squaredp)
>  {
> -	RSA *rsa;
>  	BIGNUM *big1, *big2, *big32, *big2_32;
>  	BIGNUM *n, *r, *r_squared, *tmp;
> -	const BIGNUM *key_n;
> +	BIGNUM *key_n = NULL;
>  	BN_CTX *bn_ctx = BN_CTX_new();
>  	int ret;
>  
> -	/* Convert to a RSA_style key. */
> -	rsa = EVP_PKEY_get1_RSA(key);
> -	if (!rsa) {
> -		openssl_error("Couldn't convert to a RSA style key");
> -		return -EINVAL;
> -	}
> -
>  	/* Initialize BIGNUMs */
>  	big1 = BN_new();
>  	big2 = BN_new();
> @@ -243,11 +241,14 @@ static int rsa_get_params(EVP_PKEY *key, uint64_t *exponent, uint32_t *n0_invp,
>  		return -ENOMEM;
>  	}
>  
> -	ret = rsa_get_exponent(rsa, exponent);
> +	ret = rsa_get_exponent(key, exponent);
>  	if (ret)
>  		goto cleanup;
>  
> -	RSA_get0_key(rsa, &key_n, NULL, NULL);
> +	ret = EVP_PKEY_get_bn_param(key, OSSL_PKEY_PARAM_RSA_N, &key_n);
> +	if (!ret)
> +		return -EINVAL;
> +
>  	if (!BN_copy(n, key_n) || !BN_set_word(big1, 1L) ||
>  	    !BN_set_word(big2, 2L) || !BN_set_word(big32, 32L)) {
>  		ret = -EINVAL;

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




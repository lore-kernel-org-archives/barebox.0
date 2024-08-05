Delivery-date: Mon, 05 Aug 2024 11:37:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sau9l-006RlF-1o
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 11:37:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sau9k-0002IE-AZ
	for lore@pengutronix.de; Mon, 05 Aug 2024 11:37:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R8IcgI6mSwMjy07UGacOMGeen85UbKEbdv5+kK1Al6w=; b=ic8NM24Qx7CxnLBlgfyzttZKCQ
	6pv++Edq9qrdlWYhPGKRQblUWx+rJevm0Vu6IlKA0Xbi4XK84TNz5mkdNZUaZKEfAZ2Io+i+wkfGZ
	gKwCtSr8NIPNl37yZ2SKKnyRFCI47MM95Wz/0MmHuXVb9Wczr3bC3uvPo7MIH0rDA8NcN+C6DJlki
	XSn9+/KMAzA5AXMA371vl0G8Zs9CyJ0NraXEH7CkRc8WIfl5KUtd3SAJS+OIXJyx5A+6JgC2inKDx
	PBLtUvJd6D28GfnW+IDdwkB/zGbpEQbYIok6IZMploCYDnYZjUNnGbZvJeMCUt/ZylPPcWuUz0wBg
	6IEF369A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sau98-0000000FKkP-1gca;
	Mon, 05 Aug 2024 09:36:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sau7b-0000000FJRu-2LPI
	for barebox@bombadil.infradead.org;
	Mon, 05 Aug 2024 09:35:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=R8IcgI6mSwMjy07UGacOMGeen85UbKEbdv5+kK1Al6w=; b=dTsmArdcnSl4BmWt9KhUNks2wu
	jUp3o5tQKLPjyogpCjMKnqAtXql8hk0MQOhBpfieOQMB3Bc0gGgkQZ4tNUPx3fD6H7zYjGwccRgp8
	MirVg1z19LTT7iT+6D7qMaiQMx4yaLQlv8Cu8ztVp71SOsB744KQW481LVLdDR97d7Zo+wG1VU6Uz
	a6qdxasdgUJ215yMCuyjoQ/zkCx5RvVQYqZgf3ISjMsHUSIJicMsexsHvT4JNeqI2ZZiviPGN/1ny
	NMmgsss0PNWI58IgewMGNn5E0KT9JRAP6k49I6HbTVXBONKVG3PCW6TTtp+RHq6o/x1JJSpaw9/Ej
	5BYAfdpQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sau7W-00000006Dpg-02FI
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 09:35:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sau7P-0001bX-KM; Mon, 05 Aug 2024 11:35:07 +0200
Message-ID: <687e38e5-7cd8-4fc2-8cf3-a1134e9d483a@pengutronix.de>
Date: Mon, 5 Aug 2024 11:35:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
 <20240801055737.3190132-5-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240801055737.3190132-5-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_103515_915743_8FD77041 
X-CRM114-Status: GOOD (  25.33  )
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
Subject: Re: [PATCH v2 04/19] rsatoc: pass EVP_PKEY around
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 01.08.24 07:57, Sascha Hauer wrote:
> rsa_pem_get_pub_key() and rsa_engine_get_pub_key() both return a RSA *.
> Return a EVP_PKEY * instead and only convert it into a RSA * in
> rsa_get_params(). Also drop the rsa_ prefix from the function name as
> they are no longer rsa specific. This is done in preparation for adding
> ECDSA support later.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  scripts/rsatoc.c | 79 +++++++++++++++++-------------------------------
>  1 file changed, 28 insertions(+), 51 deletions(-)
> 
> diff --git a/scripts/rsatoc.c b/scripts/rsatoc.c
> index 37728899f8..462963424a 100644
> --- a/scripts/rsatoc.c
> +++ b/scripts/rsatoc.c
> @@ -33,25 +33,24 @@ static int rsa_err(const char *msg)
>  }
>  
>  /**
> - * rsa_pem_get_pub_key() - read a public key from a .crt file
> + * pem_get_pub_key() - read a public key from a .crt file
>   *
>   * @keydir:	Directory containins the key
>   * @name	Name of key file (will have a .crt extension)
> - * @rsap	Returns RSA object, or NULL on failure
> + * @key		Returns key object, or NULL on failure
>   * @return 0 if ok, -ve on error (in which case *rsap will be set to NULL)
>   */
> -static int rsa_pem_get_pub_key(const char *path, RSA **rsap)
> +static int pem_get_pub_key(const char *path, EVP_PKEY **pkey)
>  {
>  	EVP_PKEY *key;
>  	X509 *cert;
> -	RSA *rsa;
>  	FILE *f;
>  	int ret;
>  
> -	*rsap = NULL;
> +	*pkey = NULL;
>  	f = fopen(path, "r");
>  	if (!f) {
> -		fprintf(stderr, "Couldn't open RSA certificate: '%s': %s\n",
> +		fprintf(stderr, "Couldn't open certificate: '%s': %s\n",
>  			path, strerror(errno));
>  		return -EACCES;
>  	}
> @@ -76,22 +75,13 @@ static int rsa_pem_get_pub_key(const char *path, RSA **rsap)
>  		}
>  	}
>  
> -	/* Convert to a RSA_style key. */
> -	rsa = EVP_PKEY_get1_RSA(key);
> -	if (!rsa) {
> -		rsa_err("Couldn't convert to a RSA style key");
> -		ret = -EINVAL;
> -		goto err_rsa;
> -	}
>  	fclose(f);
> -	EVP_PKEY_free(key);
>  	X509_free(cert);
> -	*rsap = rsa;
> +
> +	*pkey = key;
>  
>  	return 0;
>  
> -err_rsa:
> -	EVP_PKEY_free(key);
>  err_pubkey:
>  	X509_free(cert);
>  err_cert:
> @@ -100,43 +90,22 @@ static int rsa_pem_get_pub_key(const char *path, RSA **rsap)
>  }
>  
>  /**
> - * rsa_engine_get_pub_key() - read a public key from given engine
> + * engine_get_pub_key() - read a public key from given engine
>   *
>   * @keydir:	Key prefix
>   * @name	Name of key
>   * @engine	Engine to use
> - * @rsap	Returns RSA object, or NULL on failure
> + * @key		Returns key object, or NULL on failure
>   * @return 0 if ok, -ve on error (in which case *rsap will be set to NULL)
>   */
> -static int rsa_engine_get_pub_key(const char *key_id,
> -				  ENGINE *engine, RSA **rsap)
> +static int engine_get_pub_key(const char *key_id,
> +				  ENGINE *engine, EVP_PKEY **key)
>  {
> -	EVP_PKEY *key;
> -	RSA *rsa;
> -	int ret;
> -
> -	*rsap = NULL;
> -
> -	key = ENGINE_load_public_key(engine, key_id, NULL, NULL);
> -	if (!key)
> +	*key = ENGINE_load_public_key(engine, key_id, NULL, NULL);
> +	if (!*key)
>  		return rsa_err("Failure loading public key from engine");
>  
> -	/* Convert to a RSA_style key. */
> -	rsa = EVP_PKEY_get1_RSA(key);
> -	if (!rsa) {
> -		rsa_err("Couldn't convert to a RSA style key");
> -		ret = -EINVAL;
> -		goto err_rsa;
> -	}
> -
> -	EVP_PKEY_free(key);
> -	*rsap = rsa;
> -
>  	return 0;
> -
> -err_rsa:
> -	EVP_PKEY_free(key);
> -	return ret;
>  }
>  
>  /*
> @@ -191,15 +160,23 @@ static int rsa_get_exponent(RSA *key, uint64_t *e)
>  /*
>   * rsa_get_params(): - Get the important parameters of an RSA public key
>   */
> -static int rsa_get_params(RSA *key, uint64_t *exponent, uint32_t *n0_invp,
> +static int rsa_get_params(EVP_PKEY *key, uint64_t *exponent, uint32_t *n0_invp,
>  			  BIGNUM **modulusp, BIGNUM **r_squaredp)
>  {
> +	RSA *rsa;
>  	BIGNUM *big1, *big2, *big32, *big2_32;
>  	BIGNUM *n, *r, *r_squared, *tmp;
>  	const BIGNUM *key_n;
>  	BN_CTX *bn_ctx = BN_CTX_new();
>  	int ret = 0;
>  
> +	/* Convert to a RSA_style key. */
> +	rsa = EVP_PKEY_get1_RSA(key);
> +	if (!rsa) {
> +		rsa_err("Couldn't convert to a RSA style key");
> +		return -EINVAL;
> +	}
> +
>  	/* Initialize BIGNUMs */
>  	big1 = BN_new();
>  	big2 = BN_new();
> @@ -215,10 +192,10 @@ static int rsa_get_params(RSA *key, uint64_t *exponent, uint32_t *n0_invp,
>  		return -ENOMEM;
>  	}
>  
> -	if (0 != rsa_get_exponent(key, exponent))
> +	if (0 != rsa_get_exponent(rsa, exponent))
>  		ret = -1;
>  
> -	RSA_get0_key(key, &key_n, NULL, NULL);
> +	RSA_get0_key(rsa, &key_n, NULL, NULL);
>  	if (!BN_copy(n, key_n) || !BN_set_word(big1, 1L) ||
>  	    !BN_set_word(big2, 2L) || !BN_set_word(big32, 32L))
>  		ret = -1;
> @@ -384,7 +361,7 @@ static int gen_key(const char *keyname, const char *path)
>  	uint32_t n0_inv;
>  	int ret;
>  	int bits;
> -	RSA *rsa;
> +	EVP_PKEY *key;
>  	ENGINE *e = NULL;
>  	char *tmp, *key_name_c;
>  
> @@ -410,16 +387,16 @@ static int gen_key(const char *keyname, const char *path)
>  		ret = rsa_engine_init(&e);
>  		if (ret)
>  			exit(1);
> -		ret = rsa_engine_get_pub_key(path, e, &rsa);
> +		ret = engine_get_pub_key(path, e, &key);
>  		if (ret)
>  			exit(1);
>  	} else {
> -		ret = rsa_pem_get_pub_key(path, &rsa);
> +		ret = pem_get_pub_key(path, &key);
>  		if (ret)
>  			exit(1);
>  	}
>  
> -	ret = rsa_get_params(rsa, &exponent, &n0_inv, &modulus, &r_squared);
> +	ret = rsa_get_params(key, &exponent, &n0_inv, &modulus, &r_squared);
>  	if (ret)
>  		return ret;
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




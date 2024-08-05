Delivery-date: Mon, 05 Aug 2024 11:47:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sauJb-006RwQ-0y
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 11:47:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sauJa-0003U2-HE
	for lore@pengutronix.de; Mon, 05 Aug 2024 11:47:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YWYdg1EfLNU3/Qw+eHONQLzdWf89e8TQOX8YxpU/UlQ=; b=uRf5VBYNWuAlBHk5PfrQ9dBUTZ
	l/Qpn8TfR2tN3OHipOtMfpMxzp10CECUAATn2+CyvFp16f2seZME0EB02OFiw/MxLgIXxydBV7W53
	B/TzndWb8HoH/EsIgRCtRMJ2nA9VctbLaQtdjfOWG9En06IFowhmMKCG3QNapIViBDZD2o4GtAJCZ
	LHzbkcihv2DIv3HHOpjXhHCaPQ7wt9NhiY82X3v9n6C8Ji7g6QdGUAkYGZrxYDz9ZgSIaVXdysIwM
	JkN0R2NhhVc1hH9Q2K7f0O36cHTkFSOJDeCWRXaEASeEol3KEXysYdQDqzDtNlqsYb+LYjxUwhL9u
	PjPG+nFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sauJ5-0000000FNTh-3pGj;
	Mon, 05 Aug 2024 09:47:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sauJ5-0000000FNTY-0Q5H
	for barebox@bombadil.infradead.org;
	Mon, 05 Aug 2024 09:47:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=YWYdg1EfLNU3/Qw+eHONQLzdWf89e8TQOX8YxpU/UlQ=; b=mDLGErigneEwNdWHvKWGjZAna/
	O6GytriTIJ54GUIcksq6o0lrCoBN4Y+q4fbpx2yXIFd9o8+qOKQ8cC4kj59IjGP6O4Az859u1tRXG
	B8UOsyoQHn6qTMvopifHOUrBUEf/Y6NGoz3f2dNhszFwUf66Jpf9NdJD/KG+g8ca8zLHv7sQTUC5o
	Td3nyIXP1v1fueHEHorOmxCcWBHRyzzBbaEfPe9zY+KGdLF5mMKQ3bUIS13nPCTKVrrbJN7vjoNhB
	Ha92tx3ZRuUq4mm3dPq739DT03gX6dBwtsy1TOFk2+czTmp9e12/kkv0DjkGqRNPOoilnBFMdYJ58
	DcWcg/AQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sauJ1-00000006EfW-1wK5
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 09:47:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sauIz-0003Op-RF; Mon, 05 Aug 2024 11:47:05 +0200
Message-ID: <e2e3eebb-60d6-4c39-94bf-8a17d625c92f@pengutronix.de>
Date: Mon, 5 Aug 2024 11:47:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
 <20240801055737.3190132-7-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240801055737.3190132-7-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_104707_703498_9BBFB959 
X-CRM114-Status: GOOD (  24.16  )
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
Subject: Re: [PATCH v2 06/19] rsatoc: move engine initialization to
 engine_get_pub_key()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 01.08.24 07:57, Sascha Hauer wrote:
> The openssl engine is only used in engine_get_pub_key(), so initialize
> is there instead of in the caller. This is done in preparation of
> replacing the deprecated engine code with a provider.

This commit message is outdated.

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

With the message reworded:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  scripts/rsatoc.c | 107 ++++++++++++++++++++++++-----------------------
>  1 file changed, 54 insertions(+), 53 deletions(-)
> 
> diff --git a/scripts/rsatoc.c b/scripts/rsatoc.c
> index 1d2eb48d08..0faf41bca2 100644
> --- a/scripts/rsatoc.c
> +++ b/scripts/rsatoc.c
> @@ -89,19 +89,68 @@ static int pem_get_pub_key(const char *path, EVP_PKEY **pkey)
>  	return ret;
>  }
>  
> +static int engine_init(ENGINE **pe)
> +{
> +	ENGINE *e;
> +	int ret;
> +	const char *key_pass = getenv("KBUILD_SIGN_PIN");
> +
> +	ENGINE_load_builtin_engines();
> +
> +	e = ENGINE_by_id("pkcs11");
> +	if (!e) {
> +		fprintf(stderr, "Engine isn't available\n");
> +		ret = -1;
> +		goto err_engine_by_id;
> +	}
> +
> +	if (!ENGINE_init(e)) {
> +		fprintf(stderr, "Couldn't initialize engine\n");
> +		ret = -1;
> +		goto err_engine_init;
> +	}
> +
> +	if (key_pass) {
> +		if (!ENGINE_ctrl_cmd_string(e, "PIN", key_pass, 0)) {
> +			fprintf(stderr, "Cannot set PKCS#11 PIN\n");
> +			goto err_set_rsa;
> +		}
> +	}
> +
> +	*pe = e;
> +
> +	return 0;
> +
> +err_set_rsa:
> +	ENGINE_finish(e);
> +err_engine_init:
> +	ENGINE_free(e);
> +err_engine_by_id:
> +#if OPENSSL_VERSION_NUMBER < 0x10100000L || \
> +	(defined(LIBRESSL_VERSION_NUMBER) && LIBRESSL_VERSION_NUMBER < 0x02070000fL)
> +	ENGINE_cleanup();
> +#endif
> +	return ret;
> +}
> +
>  /**
>   * engine_get_pub_key() - read a public key from given engine
>   *
>   * @keydir:	Key prefix
>   * @name	Name of key
> - * @engine	Engine to use
>   * @key		Returns key object, or NULL on failure
>   * @return 0 if ok, -ve on error (in which case *rsap will be set to NULL)
>   */
> -static int engine_get_pub_key(const char *key_id,
> -				  ENGINE *engine, EVP_PKEY **key)
> +static int engine_get_pub_key(const char *key_id, EVP_PKEY **key)
>  {
> -	*key = ENGINE_load_public_key(engine, key_id, NULL, NULL);
> +	ENGINE *e;
> +	int ret;
> +
> +	ret = engine_init(&e);
> +	if (ret)
> +		return ret;
> +
> +	*key = ENGINE_load_public_key(e, key_id, NULL, NULL);
>  	if (!*key)
>  		return openssl_error("Failure loading public key from engine");
>  
> @@ -238,50 +287,6 @@ static int rsa_get_params(EVP_PKEY *key, uint64_t *exponent, uint32_t *n0_invp,
>  	return ret;
>  }
>  
> -static int rsa_engine_init(ENGINE **pe)
> -{
> -	ENGINE *e;
> -	int ret;
> -	const char *key_pass = getenv("KBUILD_SIGN_PIN");
> -
> -	ENGINE_load_builtin_engines();
> -
> -	e = ENGINE_by_id("pkcs11");
> -	if (!e) {
> -		fprintf(stderr, "Engine isn't available\n");
> -		ret = -1;
> -		goto err_engine_by_id;
> -	}
> -
> -	if (!ENGINE_init(e)) {
> -		fprintf(stderr, "Couldn't initialize engine\n");
> -		ret = -1;
> -		goto err_engine_init;
> -	}
> -
> -	if (key_pass) {
> -		if (!ENGINE_ctrl_cmd_string(e, "PIN", key_pass, 0)) {
> -			fprintf(stderr, "Cannot set PKCS#11 PIN\n");
> -			goto err_set_rsa;
> -		}
> -	}
> -
> -	*pe = e;
> -
> -	return 0;
> -
> -err_set_rsa:
> -	ENGINE_finish(e);
> -err_engine_init:
> -	ENGINE_free(e);
> -err_engine_by_id:
> -#if OPENSSL_VERSION_NUMBER < 0x10100000L || \
> -	(defined(LIBRESSL_VERSION_NUMBER) && LIBRESSL_VERSION_NUMBER < 0x02070000fL)
> -	ENGINE_cleanup();
> -#endif
> -	return ret;
> -}
> -
>  static FILE *outfilep;
>  
>  static int print_bignum(BIGNUM *num, int num_bits)
> @@ -362,7 +367,6 @@ static int gen_key(const char *keyname, const char *path)
>  	int ret;
>  	int bits;
>  	EVP_PKEY *key;
> -	ENGINE *e = NULL;
>  	char *tmp, *key_name_c;
>  
>  	tmp = key_name_c = strdup(keyname);
> @@ -384,10 +388,7 @@ static int gen_key(const char *keyname, const char *path)
>  	}
>  
>  	if (!strncmp(path, "pkcs11:", 7)) {
> -		ret = rsa_engine_init(&e);
> -		if (ret)
> -			exit(1);
> -		ret = engine_get_pub_key(path, e, &key);
> +		ret = engine_get_pub_key(path, &key);
>  		if (ret)
>  			exit(1);
>  	} else {

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




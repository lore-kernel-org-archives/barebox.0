Delivery-date: Mon, 05 Aug 2024 14:05:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sawSj-006TuE-11
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 14:05:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sawSi-0001TM-H0
	for lore@pengutronix.de; Mon, 05 Aug 2024 14:05:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tInh92hear8lN3QpXVhRDya3shRurqoyF4Qye0YnkR0=; b=VuPCcZzIanZ0vOE1cgF0nCafYd
	BENMxOFbrK5/OmiJxrhyHWXLcb7R+WpARRyEnB+noTBaeC8sXUc2Ona4XVA1nvED4L3w5WOBJyL4o
	YK4itL/ueaChFuDc4JLATFaye1GqVroNDaF7tSNPFylZ5XSF+VJS7qSDPuAFXHVwKhFtX7NVnp5vh
	h002OQLOz/7jftaS7Qs14MbMu5Hw0k2b7u3P8DnMG7EKFBgQoaVmFlQPYfBuCscuOrU7MgcvLSqPa
	pxgE240koB0EARxBa+3L43PretcngF1kys+u0s/f26TBVR5wkM2v55FQHTVgvFv5tkWIqwPU92KJo
	/H6tA8Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sawSE-0000000FlGm-3Wa6;
	Mon, 05 Aug 2024 12:04:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sawSA-0000000FlEz-2vuk
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 12:04:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sawS8-0001PL-Ra; Mon, 05 Aug 2024 14:04:40 +0200
Message-ID: <33a02fa2-f350-455d-b14c-458560a0587a@pengutronix.de>
Date: Mon, 5 Aug 2024 14:04:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
 <20240801055737.3190132-20-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240801055737.3190132-20-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_050442_775398_64764675 
X-CRM114-Status: GOOD (  27.94  )
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
Subject: Re: [PATCH v2 19/19] fit: Add ecdsa support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 01.08.24 07:57, Sascha Hauer wrote:
> This adds ECDSA signing support to the FIT image code.
> 
> Previously we unconditionally called into rsa_verify() as this was the
> only option. Now with ECDSA support we first have to check the type of
> the signature, so we start evaluating the signature type in given in the
> FIT image and call rsa_verify() or ecdsa_verify() depending on it.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/image-fit.c | 112 +++++++++++++++++++++++++++++++++++++--------
>  1 file changed, 94 insertions(+), 18 deletions(-)
> 
> diff --git a/common/image-fit.c b/common/image-fit.c
> index 6002440e7e..599d969a38 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -21,6 +21,7 @@
>  #include <linux/err.h>
>  #include <stringlist.h>
>  #include <rsa.h>
> +#include <ecdsa.h>
>  #include <uncompress.h>
>  #include <image-fit.h>
>  
> @@ -253,13 +254,11 @@ static struct digest *fit_alloc_digest(struct device_node *sig_node,
>  	return digest;
>  }
>  
> -static int fit_check_rsa_signature(struct device_node *sig_node,
> -				   enum hash_algo algo, void *hash)
> +static int fit_check_rsa_signature(const void *signature, size_t sig_len,
> +				   enum hash_algo algo, void *hash,
> +				   const char *key_name)
>  {
>  	const struct rsa_public_key *key;
> -	const char *key_name = NULL;
> -	int sig_len;
> -	const char *sig_value;
>  	int ret;
>  
>  	if (!IS_ENABLED(CONFIG_CRYPTO_RSA)) {
> @@ -267,17 +266,10 @@ static int fit_check_rsa_signature(struct device_node *sig_node,
>  		return -EOPNOTSUPP;
>  	}
>  
> -	sig_value = of_get_property(sig_node, "value", &sig_len);
> -	if (!sig_value) {
> -		pr_err("signature value not found in %pOF\n", sig_node);
> -		return -EINVAL;
> -	}
> -
> -	of_property_read_string(sig_node, "key-name-hint", &key_name);
>  	if (key_name) {
>  		key = rsa_get_key(key_name);
>  		if (key) {
> -			ret = rsa_verify(key, sig_value, sig_len, hash, algo);
> +			ret = rsa_verify(key, signature, sig_len, hash, algo);
>  			if (!ret)
>  				goto ok;
>  		}
> @@ -287,20 +279,104 @@ static int fit_check_rsa_signature(struct device_node *sig_node,
>  		if (key_name && !strcmp(key->key_name_hint, key_name))
>  			continue;
>  
> -		ret = rsa_verify(key, sig_value, sig_len, hash, algo);
> +		ret = rsa_verify(key, signature, sig_len, hash, algo);
>  		if (!ret)
>  			goto ok;
>  	}
>  
> -	pr_err("image signature BAD\n");
> +	pr_err("image RSA signature BAD\n");
>  
>  	return -EBADMSG;
>  ok:
> -	pr_info("image signature OK\n");
> +	pr_info("image RSA signature OK\n");
>  
>  	return 0;
>  }
>  
> +static int fit_check_ecdsa_signature(const void *signature, size_t sig_len,
> +				     enum hash_algo algo, void *hash,
> +				     const char *key_name)
> +{
> +	const struct ecdsa_public_key *key;
> +	int ret;
> +
> +	if (!IS_ENABLED(CONFIG_CRYPTO_ECDSA)) {
> +		pr_err("ECDSA support is disabled, Cannot verify image\n");
> +		return -EOPNOTSUPP;
> +	}
> +
> +	for_each_ecdsa_key(key) {
> +		ret = ecdsa_verify(key, signature, sig_len, hash);
> +		if (!ret) {
> +			pr_info("image ECDSA signature OK\n");
> +			return 0;
> +		}
> +	}
> +
> +	pr_err("image ECDSA signature BAD\n");
> +
> +	return -EBADMSG;
> +}
> +
> +struct crypto_algo {
> +	const char *name;
> +	int (*verify)(const void *signature, size_t sig_len, enum hash_algo algo,
> +		      void *hash, const char *key_name);
> +};
> +
> +static struct crypto_algo crypto_algos[] = {
> +	{
> +		.name = "rsa2048",
> +		.verify = fit_check_rsa_signature,
> +	}, {
> +		.name = "rsa3072",
> +		.verify = fit_check_rsa_signature,
> +	}, {
> +		.name = "rsa4096",
> +		.verify = fit_check_rsa_signature,
> +	}, {
> +		.name = "ecdsa256",
> +		.verify = fit_check_ecdsa_signature,
> +	},
> +};
> +
> +static int fit_check_signature(struct device_node *sig_node,
> +			       enum hash_algo algo, void *hash)
> +{
> +	int sig_len, i;
> +	const char *sig_value;
> +	const char *algo_name;
> +	const char *key_name = NULL;
> +	const char *str;
> +
> +	sig_value = of_get_property(sig_node, "value", &sig_len);
> +	if (!sig_value) {
> +		pr_err("signature value not found in %pOF\n", sig_node);
> +		return -EINVAL;
> +	}
> +
> +	of_property_read_string(sig_node, "key-name-hint", &key_name);
> +
> +	if (of_property_read_string(sig_node, "algo", &algo_name)) {
> +		pr_err("algo property not found\n");
> +		return -EINVAL;
> +	}
> +
> +	str = strchr(algo_name, ',');
> +	if (!str)
> +		return -EINVAL;
> +	str++;
> +
> +	for (i = 0; i < ARRAY_SIZE(crypto_algos); i++) {
> +		struct crypto_algo *ca = &crypto_algos[i];
> +
> +		if (!strcmp(ca->name, str))
> +			return ca->verify(sig_value, sig_len, algo, hash, key_name);
> +	}
> +
> +	return -EINVAL;
> +}
> +
>  /*
>   * The consistency of the FTD structure was already checked by of_unflatten_dtb()
>   */
> @@ -346,7 +422,7 @@ static int fit_verify_signature(struct device_node *sig_node, const void *fit)
>  	hash = xzalloc(digest_length(digest));
>  	digest_final(digest, hash);
>  
> -	ret = fit_check_rsa_signature(sig_node, algo, hash);
> +	ret = fit_check_signature(sig_node, algo, hash);
>  	if (ret)
>  		goto out_free_hash;
>  
> @@ -469,7 +545,7 @@ static int fit_image_verify_signature(struct fit_handle *handle,
>  	hash = xzalloc(digest_length(digest));
>  	digest_final(digest, hash);
>  
> -	ret = fit_check_rsa_signature(sig_node, algo, hash);
> +	ret = fit_check_signature(sig_node, algo, hash);
>  
>  	free(hash);
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




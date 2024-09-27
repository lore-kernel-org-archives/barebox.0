Delivery-date: Fri, 27 Sep 2024 10:03:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su5x1-003K7E-0Y
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 10:03:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su5x1-0001ky-KO
	for lore@pengutronix.de; Fri, 27 Sep 2024 10:03:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WDxYAE5IgVrQ8QwjG99xAeG3HQacLzKLueozC34/cFA=; b=AZEqBPyKVyXv9I/k1OQqPdYkvS
	LiJxamr5dI/TUgjRw+7pOdfzxd4vz3EhVRaqyxu7zRFa/K6XyIaGeHI7lJ3OE47H0ZyIbDN7YHJPq
	N1oVXeINWFkqQ2Ljti+NLGv5PW/iokPxHqtNARpvSuRK7nYEPPpsK35UX4rB3r22SnlsNohBpFRCM
	76eCChxbsxHX2ww9chLl3QQXAXl6vy4GW5K4p2XysWI4BdABGLurHIKTe1yT950ySCKzM0Ne4rgRk
	VYCwMRQCh10RmrE1o25Vx1giyPtO1K185fbHifzr8xZPhgUQxqI9ZB289/la5mPaSeLNR7naiKm04
	mTg3sX3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su5wL-0000000AQle-3EzB;
	Fri, 27 Sep 2024 08:03:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su5vV-0000000AQcm-1ZJV
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 08:02:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1su5vT-0000ij-Vl; Fri, 27 Sep 2024 10:02:08 +0200
Message-ID: <e5fabaa7-10e7-435b-b2f4-380fdca30cdf@pengutronix.de>
Date: Fri, 27 Sep 2024 10:02:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240913075924.1652866-1-s.hauer@pengutronix.de>
 <20240913075924.1652866-10-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240913075924.1652866-10-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_010209_453928_AC321791 
X-CRM114-Status: GOOD (  19.11  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 09/16] crypto: rsa: encapsulate rsa keys in public keys
 struct
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 13.09.24 09:59, Sascha Hauer wrote:
> This encapsulates struct rsa_public_key into a struct public_key. So far
> RSA keys are the only supported key type. With adding ECDSA keys we need
> a container struct so that we can add ECDSA keys using the same
> mechanisms.
> 
> Also we rename CONFIG_CRYPTO_RSA_KEY to CONFIG_CRYPTO_PUBLIC_KEYS and
> CONFIG_CRYPTO_RSA_BUILTIN_KEYS to CONFIG_CRYPTO_BUILTIN_KEYS as these
> variables will be used for all types of keys, not only RSA keys.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

But two comments below.

> diff --git a/crypto/public-keys.c b/crypto/public-keys.c
> new file mode 100644
> index 0000000000..a3ef3bafc8
> --- /dev/null
> +++ b/crypto/public-keys.c
> @@ -0,0 +1,39 @@

add a pr_fmt?

> +#include <common.h>
> +#include <crypto/public_key.h>
> +#include <rsa.h>
> +
> +extern const struct public_key * const __public_keys_start;
> +extern const struct public_key * const __public_keys_end;
> +
> +static int init_public_keys(void)
> +{
> +	const struct public_key * const *iter;
> +	int ret;
> +
> +	for (iter = &__public_keys_start; iter != &__public_keys_end; iter++) {
> +		struct rsa_public_key *rsa_key;
> +
> +		switch ((*iter)->type) {
> +		case PUBLIC_KEY_TYPE_RSA:
> +			rsa_key = rsa_key_dup((*iter)->rsa);
> +			if (!rsa_key)
> +				continue;
> +
> +			ret = rsa_key_add(rsa_key);
> +			if (ret)
> +				pr_err("Cannot add rsa key: %pe\n", ERR_PTR(ret));
> +			break;
> +		default:
> +			pr_err("Ignoring unknown key type %u\n", (*iter)->type);
> +		}
> +
> +	}
> +
> +	return 0;
> +}
> +
> +device_initcall(init_public_keys);
> +

> -extern const struct rsa_public_key * const __rsa_keys_start;
> -extern const struct rsa_public_key * const __rsa_keys_end;

I know you are just moving these around, but defining
these with [] is way less confusing IMO.


Thanks,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



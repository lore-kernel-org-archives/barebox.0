Delivery-date: Fri, 27 Sep 2024 09:57:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su5qk-003K3c-1p
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 09:57:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su5ql-0006YH-0n
	for lore@pengutronix.de; Fri, 27 Sep 2024 09:57:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oQuMkQTCQ6sClSUr97hybC/hpwoiHEPulCw4jfzgHVI=; b=oHhBfTg0li/ju7Cr6XHOuY/Vcj
	aY3hmAMU4JKWxGNmWqErwrCnUS/Hsw3GurCQhiNWj3SWz6MQ38uQv3qhy9gwLfCTRy8xEg1UncINj
	qalNzMiRMoCPrz+bZ0MmEZyaGccBxkooWG0OatR7fjATWBVSZYkkURYTW9efoZW2gpsmW1cCVZ0+u
	97/mfPfT3j3y5bfABrrnKZc9CJBLCWNPKjYRFLNOe3NQk6rfjui8MM059tnytTBWhMI5s1ghmaTJr
	ClzXq7x+NPtoxYAZfe/4AxyKzZ8Nb+VmsStXZMdwPMdde2g139inDP6rr9cAJ1nT0GptIlrsnR08G
	ThY6Ne5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su5pz-0000000APcE-1C0Q;
	Fri, 27 Sep 2024 07:56:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su5pH-0000000APZS-0M2k
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 07:56:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1su5pF-0005rq-Rc; Fri, 27 Sep 2024 09:55:41 +0200
Message-ID: <db84ae7d-c690-474f-87be-c0897fd2425f@pengutronix.de>
Date: Fri, 27 Sep 2024 09:55:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240913075924.1652866-1-s.hauer@pengutronix.de>
 <20240913075924.1652866-9-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240913075924.1652866-9-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_005543_159789_AAC0B978 
X-CRM114-Status: GOOD (  20.01  )
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
Subject: Re: [PATCH v4 08/16] crypto: rsa: include key name hint into
 CONFIG_CRYPTO_RSA_KEY
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 13.09.24 09:59, Sascha Hauer wrote:
> Set the key name hint in CONFIG_CRYPTO_RSA_KEY. CONFIG_CRYPTO_RSA_KEY
> now has the form:
> 
> <key_name_hint>:<filename/uri>
> 
> This is done in preparation to make CONFIG_CRYPTO_RSA_KEY a list of
> keys.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  crypto/Kconfig  | 9 ++-------
>  crypto/Makefile | 2 +-
>  2 files changed, 3 insertions(+), 8 deletions(-)
> 
> diff --git a/crypto/Kconfig b/crypto/Kconfig
> index 78b499f646..64a016eb2c 100644
> --- a/crypto/Kconfig
> +++ b/crypto/Kconfig
> @@ -130,17 +130,12 @@ config CRYPTO_RSA_KEY
>  	  This option should be a filename of a PEM-formatted file containing
>  	  X.509 certificates to be included into barebox. If the string starts
>  	  with "pkcs11:" it is interpreted as a PKCS#11 URI rather than a file.
> +	  If the string starts with a <hint>: prefix, <hint> is used as a key
> +	  name hint to find a key without iterating over all keys.
>  
>  	  This avoids the mkimage dependency of CONFIG_BOOTM_FITIMAGE_PUBKEY
>  	  at the cost of an openssl build-time dependency.
>  
> -config CRYPTO_RSA_KEY_NAME_HINT
> -	depends on CRYPTO_RSA
> -	string "FIT image key name hint"
> -	help
> -	  In FIT images keys are identified by a key name hint string. Provide
> -	  the key name hint here.
> -
>  config CRYPTO_KEYSTORE
>  	bool "Keystore"
>  	help
> diff --git a/crypto/Makefile b/crypto/Makefile
> index 5a484355f3..b2bd7fae6a 100644
> --- a/crypto/Makefile
> +++ b/crypto/Makefile
> @@ -30,5 +30,5 @@ $(obj)/rsa.o: $(obj)/rsa-keys.h
>  CONFIG_CRYPTO_RSA_KEY := $(CONFIG_CRYPTO_RSA_KEY:"%"=%)
>  
>  $(obj)/rsa-keys.h: FORCE
> -	$(call cmd,public_keys,$(CONFIG_CRYPTO_RSA_KEY_NAME_HINT):$(CONFIG_CRYPTO_RSA_KEY))
> +	$(call cmd,public_keys,$(CONFIG_CRYPTO_RSA_KEY))
>  endif


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



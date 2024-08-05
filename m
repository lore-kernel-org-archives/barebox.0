Delivery-date: Mon, 05 Aug 2024 13:58:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sawLt-006Tnp-3D
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 13:58:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sawLt-0008VN-8r
	for lore@pengutronix.de; Mon, 05 Aug 2024 13:58:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uc7OYj69rjML/6oBIMk/7EvUfWT/NxFuJHsmdwyYJ98=; b=1kNbMys/upDFPw0NlofGc8cJ7u
	RbCp1M4NG4qTfucir9fyek/9+2EMQZgLBiZCtGC1Qu1LB9+0wfJD8YgCD9gaz5vCHhmOvfTC7e8Yp
	GgEdHAensCbhezcrTeVeBKlVOv0MzBYX8MafyDh1Xu1twXfP3MQ2O7XDLKZqY4CPQhU3wh7wFAccB
	nIcPGC/xbGiU0/yT6FkTo3qNWamyMDRFBbhz1O0SSBYILsW1kW43yAJ9s4Y1dHZj6/B4Ur7BbHlny
	wYD9pYDZaEtxAbRliko5OSk3AyvNVUkMhcQzW8tJDMYSI2eADXDA9m67i2I8V5sw23JEEg5hKOtjH
	MJETxL/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sawLM-0000000FkUK-3t4l;
	Mon, 05 Aug 2024 11:57:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sawLK-0000000FkSa-07hC
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 11:57:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sawLI-0008P9-Le; Mon, 05 Aug 2024 13:57:36 +0200
Message-ID: <3fe60919-c7f4-40cf-8bb5-d4b1d375e116@pengutronix.de>
Date: Mon, 5 Aug 2024 13:57:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
 <20240801055737.3190132-18-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240801055737.3190132-18-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_045738_133666_217C8280 
X-CRM114-Status: GOOD (  29.08  )
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
Subject: Re: [PATCH v2 17/19] crypto: add ECDSA support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 01.08.24 07:57, Sascha Hauer wrote:
> This adds ECDSA signature verification support. The code is based on the
> Linux code as of Linux-6.10. The Linux code expects the key to be in
> ASN.1 encoded format. We don't need this in barebox as directly compile
> the x and y key values into the binary, so this is left out.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  crypto/Kconfig                    |  20 ++++
>  crypto/Makefile                   |  19 ++++
>  crypto/ecdsa.c                    | 169 ++++++++++++++++++++++++++++++
>  include/asm-generic/barebox.lds.h |   7 ++
>  include/ecdsa.h                   |  21 ++++
>  5 files changed, 236 insertions(+)
>  create mode 100644 crypto/ecdsa.c
>  create mode 100644 include/ecdsa.h
> 
> diff --git a/crypto/Kconfig b/crypto/Kconfig
> index e953ef5e15..eeacd9ffb7 100644
> --- a/crypto/Kconfig
> +++ b/crypto/Kconfig
> @@ -156,4 +156,24 @@ config JWT
>  config CRYPTO_ECC
>  	bool
>  
> +config CRYPTO_ECDSA
> +	bool "ECDSA support"
> +	select CRYPTO_ECC
> +
> +config CRYPTO_ECDSA_BUILTIN_KEYS
> +	bool
> +	default y if CRYPTO_ECDSA_KEY != ""
> +	select KEYTOC
> +
> +config CRYPTO_ECDSA_KEY
> +	depends on CRYPTO_ECDSA
> +	string "ECDSA key to compile in"
> +	help
> +	  This option should be a filename of a PEM-formatted file containing
> +	  X.509 certificates to be included into barebox. If the string starts
> +	  with "pkcs11:" it is interpreted as a PKCS#11 URI rather than a file.
> +
> +	  This avoids the mkimage dependency of CONFIG_BOOTM_FITIMAGE_PUBKEY
> +	  at the cost of an openssl build-time dependency.

Why can't this option take multiple space-separated paths?

> +static struct ecdsa_public_key *ecdsa_key_dup(const struct ecdsa_public_key *key)
> +{
> +	struct ecdsa_public_key *new;
> +	int key_size_bits;
> +
> +	key_size_bits = ecdsa_key_size(key->curve_name);
> +	if (!key_size_bits)
> +		return NULL;
> +
> +	new = xmemdup(key, sizeof(*key));
> +	new->x = xmemdup(key->x, key_size_bits / 8);
> +	new->y = xmemdup(key->y, key_size_bits / 8);
> +	new->size_bits = key_size_bits;

I think you'll want to explicitly initialize the linked list member here
instead of leaving it dangling.

> +
> +	return new;
> +}
> +
> +extern const struct ecdsa_public_key * const __ecdsa_keys_start;
> +extern const struct ecdsa_public_key * const __ecdsa_keys_end;

This looks odd. Shouldn't this be array of unknown size [].

> +
> +static int ecdsa_init_keys(void)
> +{
> +	const struct ecdsa_public_key * const *iter;

and this would be a single level pointer?

> +	struct ecdsa_public_key *key;
> +	int ret;
> +
> +	for (iter = &__ecdsa_keys_start; iter != &__ecdsa_keys_end; iter++) {
> +		key = ecdsa_key_dup(*iter);
> +		if (!key) {
> +			pr_err("Ignoring key with unknown curve_name %s\n", key->curve_name);
> +			continue;
> +		}
> +
> +		ret = ecdsa_key_add(key);
> +		if (ret)
> +			pr_err("Cannot add rsa key: %pe\n", ERR_PTR(ret));
> +	}
> +
> +	return 0;
> +}
ntifier: GPL-2.0-only
> +#ifndef _ECDSA_H
> +#define _ECDSA_H
> +
> +struct ecdsa_public_key {
> +	const char *curve_name;	/* Name of curve, e.g. "prime256v1" */
> +	const void *x;		/* x coordinate of public key */
> +	const void *y;		/* y coordinate of public key */

Why void and not a specific type?


Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




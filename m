Delivery-date: Wed, 11 Sep 2024 10:31:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIl2-003QJM-1Z
	for lore@lore.pengutronix.de;
	Wed, 11 Sep 2024 10:31:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIl1-0004Jb-BU
	for lore@pengutronix.de; Wed, 11 Sep 2024 10:31:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HlIGT8Yak6be4azJe4+Zl8q6RxejI5PSCPZpM518QP8=; b=GesqcgljF6SgTULCIaK9w4B0+u
	ZU/vlfiASnV/osawC+yR8BG3l3p5O4N67VWCTsv/2qojepFoqkONc50CR/nAagrsAkrMafxqa7Dw4
	VLsVT8qEIaWrq/Y3JXqdBlvoq3qUi3e+SO0i/nOHBlHxL5/WhAiiu7harUpD4jLrCmDsy9pbTPceo
	XLbf6Cd5zNGZfFWVvLpBsyNsS5LrMrCDPzx6ss5yEN46RaLOdGP+6TqV5HAKjPV0ORaApnbLaLBLT
	c922CgbXY/1FwyRD2w/7QZ0h4f1cUrkBvhnMKjVb18HuZzCdMbx+tjeHdJyYvCbniDSoNlDk2LQo+
	gH33vGWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIka-00000008euM-2oy5;
	Wed, 11 Sep 2024 08:30:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIhd-00000008eCj-2QY5
	for barebox@lists.infradead.org;
	Wed, 11 Sep 2024 08:27:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1soIhS-0002lF-NC; Wed, 11 Sep 2024 10:27:42 +0200
Message-ID: <f1f058a9-c2a9-4113-a1f2-920452686194@pengutronix.de>
Date: Wed, 11 Sep 2024 10:27:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240906104028.2187872-1-s.hauer@pengutronix.de>
 <20240906104028.2187872-8-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240906104028.2187872-8-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_012753_651719_69113FDE 
X-CRM114-Status: GOOD (  22.45  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 07/15] crypto: rsa: include key name hint into
 CONFIG_CRYPTO_RSA_KEY
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 06.09.24 12:40, Sascha Hauer wrote:
> Set the key name hint in CONFIG_CRYPTO_RSA_KEY. CONFIG_CRYPTO_RSA_KEY
> now has the form:
> 
> <key_name_hint>:<filename/uri>
> 
> This is done in preparation to make CONFIG_CRYPTO_RSA_KEY a list of
> keys.

IIUC, existing users that do make oldconfig will:

  - either lose the key hint and need to add it back or just live with
    an iteration of the list

  - have pkcs11:$uri URIs which will be interpreted as key hint and
    result on some error message that the URI is not a valid path.

Can we check if the hint is pkcs11 in the rsa-keys.h rule and bail out with
a sensible error message?

Cheers,
Ahmad


> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  crypto/Kconfig  | 9 ++-------
>  crypto/Makefile | 7 +++----
>  2 files changed, 5 insertions(+), 11 deletions(-)
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
> index d7a06a721d..f3e49ab7ba 100644
> --- a/crypto/Makefile
> +++ b/crypto/Makefile
> @@ -29,10 +29,9 @@ $(obj)/rsa.o: $(obj)/rsa-keys.h
>  
>  CONFIG_CRYPTO_RSA_KEY := $(CONFIG_CRYPTO_RSA_KEY:"%"=%)
>  
> -ifneq ($(filter-out pkcs11:% __ENV__%, $(CONFIG_CRYPTO_RSA_KEY)),)
> -RSA_DEP := $(CONFIG_CRYPTO_RSA_KEY)
> -endif
> +RSA_DEP := $(filter-out pkcs11:% __ENV__%, $(CONFIG_CRYPTO_RSA_KEY))
> +RSA_DEP := $(shell echo $(RSA_DEP) | sed -e "s/[[:alnum:]]*://g")
>  
>  $(obj)/rsa-keys.h: $(RSA_DEP) FORCE
> -	$(call cmd,public_keys,$(CONFIG_CRYPTO_RSA_KEY_NAME_HINT):$(CONFIG_CRYPTO_RSA_KEY))
> +	$(call cmd,public_keys,$(CONFIG_CRYPTO_RSA_KEY))
>  endif


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



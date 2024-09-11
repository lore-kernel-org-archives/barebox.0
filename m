Delivery-date: Wed, 11 Sep 2024 10:38:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIsL-003QRf-2n
	for lore@lore.pengutronix.de;
	Wed, 11 Sep 2024 10:38:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIsK-0007ty-Jn
	for lore@pengutronix.de; Wed, 11 Sep 2024 10:38:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OlkJ7Y9kP8F5WFea9axPVLzmxjncpkUA+XREJzd0QHo=; b=cVkGWLp5kWs3rv1u5e/qDn4inP
	nMpfLhBgHG7ijh2By/UerzBPM46Sxl32lWjWFMemqerdvlIaLvKLPcmAddcbyBS1qk3ULICUYCct0
	BkAT+KDRefXwQyznWHIA2++4SFsAZM9sat8Pd4Txqcx0/5qA/AaDboQqGZqmai2f6mEKpXD6eU6mo
	r+Z6sZu7RtEtcfCV7MoPQ4lX/5f/UGtxTJKKmaZ6NEjzjRT3l5/g1GE/8/Wb2ftyzglxm2uqTo/Zc
	TcHxvfQ/yq+k0utF/F1gM/SyGNDWOWH3rf7L7z6OdFwNhkarf0PV1XpgGU0akW1FQRhTFbeIhQ8Nf
	dpdSSXWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIrt-00000008hPw-2zSO;
	Wed, 11 Sep 2024 08:38:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIoK-00000008fgq-0Hlr
	for barebox@lists.infradead.org;
	Wed, 11 Sep 2024 08:34:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1soIoI-0005cw-S4; Wed, 11 Sep 2024 10:34:46 +0200
Message-ID: <c183c2aa-a398-408e-96e3-a800fbca564a@pengutronix.de>
Date: Wed, 11 Sep 2024 10:34:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240906104028.2187872-1-s.hauer@pengutronix.de>
 <20240906104028.2187872-11-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240906104028.2187872-11-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_013448_138419_D37E2EB2 
X-CRM114-Status: GOOD (  25.17  )
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
Subject: Re: [PATCH v3 10/15] crypto: builtin_keys: Allow to specify multiple
 keys in CONFIG_CRYPTO_PUBLIC_KEYS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 06.09.24 12:40, Sascha Hauer wrote:
> This adds the missing pieces to make CONFIG_CRYPTO_PUBLIC_KEYS
> a list of keys rather than a single key only.
> 
> We have to remove the quotes from the key argument in cmd_keys to
> pass the keys as multiple arguments to keytoc. While at it the unused
> $(3) argument is removed.

It's not unsed, see test/self/Makefile, which uses it to pass the -s
option.

Cheers,
Ahmad

> 
> For removing the quotes from CONFIG_CRYPTO_PUBLIC_KEYS "%"=% no longer
> matches when the string contains multiple words, so we utilize shell
> to remove the quotes.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  crypto/Kconfig       | 11 ++++++-----
>  crypto/Makefile      |  2 +-
>  scripts/Makefile.lib |  2 +-
>  3 files changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/crypto/Kconfig b/crypto/Kconfig
> index 612e6f33fc..6b2e73c503 100644
> --- a/crypto/Kconfig
> +++ b/crypto/Kconfig
> @@ -126,11 +126,12 @@ config CRYPTO_PUBLIC_KEYS
>  	depends on CRYPTO_BUILTIN_KEYS
>  	string "public keys to compile in"
>  	help
> -	  This option should be a filename of a PEM-formatted file containing
> -	  X.509 certificates to be included into barebox. If the string starts
> -	  with "pkcs11:" it is interpreted as a PKCS#11 URI rather than a file.
> -	  If the string starts with a <hint>: prefix, <hint> is used as a key
> -	  name hint to find a key without iterating over all keys.
> +	  This option should be a space separated list of filenames of
> +	  PEM-formatted files containing X.509 certificates to be included into
> +	  barebox. If an entry starts with "pkcs11:" it is interpreted as a
> +	  PKCS#11 URI rather than a file. If an entry starts with a <hint>:
> +	  prefix, <hint> is used as a key name hint to find a key without
> +	  iterating over all keys.
>  
>  	  This avoids the mkimage dependency of CONFIG_BOOTM_FITIMAGE_PUBKEY
>  	  at the cost of an openssl build-time dependency.
> diff --git a/crypto/Makefile b/crypto/Makefile
> index b07e5dd8d4..9fa2200f47 100644
> --- a/crypto/Makefile
> +++ b/crypto/Makefile
> @@ -28,7 +28,7 @@ ifdef CONFIG_CRYPTO_BUILTIN_KEYS
>  
>  $(obj)/public-keys.o: $(obj)/public-keys.h
>  
> -CONFIG_CRYPTO_PUBLIC_KEYS := $(CONFIG_CRYPTO_PUBLIC_KEYS:"%"=%)
> +CONFIG_CRYPTO_PUBLIC_KEYS := $(shell echo $(CONFIG_CRYPTO_PUBLIC_KEYS))
>  
>  PUBLIC_KEYS_DEP := $(filter-out pkcs11:% __ENV__%, $(CONFIG_CRYPTO_PUBLIC_KEYS))
>  PUBLIC_KEYS_DEP := $(shell echo $(PUBLIC_KEYS_DEP) | sed -e "s/[[:alnum:]]*://g")
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 1881e3c139..1561a30e55 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -614,7 +614,7 @@ quiet_cmd_b64dec = B64DEC  $@
>  # target file.
>  quiet_cmd_public_keys = KEY     $@
>  cmd_public_keys = \
> -	$(objtree)/scripts/keytoc -o $@.tmp "$(2)" $(3) &&		\
> +	$(objtree)/scripts/keytoc -o $@.tmp $(2) &&		\
>  	if cmp -s $@.tmp $@; then					\
>  		rm $@.tmp;						\
>  	else								\


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



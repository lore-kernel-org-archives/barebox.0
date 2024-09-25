Delivery-date: Wed, 25 Sep 2024 10:23:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stNIb-002WQ9-2O
	for lore@lore.pengutronix.de;
	Wed, 25 Sep 2024 10:23:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stNIc-0004zt-3E
	for lore@pengutronix.de; Wed, 25 Sep 2024 10:23:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=se2FNzGpt7gtzr9aG8eie6CQnGfowyGVtRfYXxB6crY=; b=wHFfNV0vqQxIaXVHiSg+bj6dOQ
	TQdmE3JSDCMzGo03rB4cvMRSqivw55Ue2CwREkknt93SdSledP7I/Q4h/z/S6K2NJ/5p8DrlKY5a6
	li1MH4hVN0ZXfYqKZGQaNPU6URPkzlp8W011SQIOG0Dhnncrn+YXt86lR57OqprY5f7CHKto2D1+U
	4+UA2uwvE7+zAPhyh0eNXuFiWvN05BQ1VamUVXhqG12mOe8axxO6WJjCzzNaBIp/qXe+7kzOE2LEa
	gUCQdGLA04f8s+wYfTdKUDNMveNw3oZag2FC7i7QnF+1z43BhjXaAiXNeuKIkY+viBx2eWYcdJLfX
	9/fK5Ixg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stNHs-00000004UQ3-0X0l;
	Wed, 25 Sep 2024 08:22:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stNHo-00000004UPA-068Z
	for barebox@lists.infradead.org;
	Wed, 25 Sep 2024 08:22:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1stNHj-0004vA-Rn; Wed, 25 Sep 2024 10:22:07 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1stNHj-001P4f-FP; Wed, 25 Sep 2024 10:22:07 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1stNHj-00BGND-1H;
	Wed, 25 Sep 2024 10:22:07 +0200
Date: Wed, 25 Sep 2024 10:22:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <ZvPIL36uBubH063N@pengutronix.de>
References: <20240913075924.1652866-1-s.hauer@pengutronix.de>
 <20240913075924.1652866-12-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240913075924.1652866-12-s.hauer@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_012212_083295_E0765E90 
X-CRM114-Status: GOOD (  28.51  )
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
Subject: Re: [PATCH v4 11/16] crypto: builtin_keys: Allow to specify multiple
 keys in CONFIG_CRYPTO_PUBLIC_KEYS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Sep 13, 2024 at 09:59:19AM +0200, Sascha Hauer wrote:
> This adds the missing pieces to make CONFIG_CRYPTO_PUBLIC_KEYS
> a list of keys rather than a single key only.
> 
> We have to remove the quotes from the key argument in cmd_keys to
> pass the keys as multiple arguments to keytoc.
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
> index d6ce50b386..1c5709c90a 100644
> --- a/crypto/Makefile
> +++ b/crypto/Makefile
> @@ -28,7 +28,7 @@ ifdef CONFIG_CRYPTO_BUILTIN_KEYS
>  
>  $(obj)/public-keys.o: $(obj)/public-keys.h
>  
> -CONFIG_CRYPTO_PUBLIC_KEYS := $(CONFIG_CRYPTO_PUBLIC_KEYS:"%"=%)
> +CONFIG_CRYPTO_PUBLIC_KEYS := $(shell echo $(CONFIG_CRYPTO_PUBLIC_KEYS))
>  
>  $(obj)/public-keys.h: FORCE
>  	$(call cmd,public_keys,$(CONFIG_CRYPTO_PUBLIC_KEYS))
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 1881e3c139..3d0a260804 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -614,7 +614,7 @@ quiet_cmd_b64dec = B64DEC  $@
>  # target file.
>  quiet_cmd_public_keys = KEY     $@
>  cmd_public_keys = \
> -	$(objtree)/scripts/keytoc -o $@.tmp "$(2)" $(3) &&		\
> +	$(objtree)/scripts/keytoc -o $@.tmp $(2) $(3) &&		\

This doesn't work with pkcs11: uris. These may contain semicolons which
must be quoted from the shell. We must quote the the words in
CONFIG_CRYPTO_PUBLIC_KEYS though, not the whole string. So what we can
do is:

CONFIG_CRYPTO_PUBLIC_KEYS := $(foreach d,$(CONFIG_CRYPTO_PUBLIC_KEYS),"$(d)")

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



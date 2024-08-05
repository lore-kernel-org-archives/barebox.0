Delivery-date: Mon, 05 Aug 2024 12:06:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1saubT-006S7i-1K
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 12:06:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1saubS-0006Kc-K9
	for lore@pengutronix.de; Mon, 05 Aug 2024 12:06:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fdFyw8pw/GNwcPf0n+2MocbqG8CuOBomLEDtf/8tWpY=; b=EyHIJQtgmYWEPjUqozJZVJ9KT/
	DGsEJ+pC3Wg75g4ilBkriXZMlKq4rTYRwLBnXquDZ0XMf2C5qJhQRD7jacIqmTT66ERBJCoq/dtWX
	vcx1CP9cFcy2NF9LXUxFczr1rMMzM1DWr81L9oOj7JxGxV1DJnlZ7V8/HI/1d9hvX23X6A2pJYPcX
	D8pN+3D7ErZM6QvyB/t02apz696edsS3Gs2fdDl9Xvjn9E4fNy9JpLOW1fCguY0mKmFWXEk1CVBHi
	D1OjefCpqb62JwC9oqkQHYnfjDzOlEH4AaW1/q6LVpZHbNlCXpjOZ1A3YHGaR7+eas22JXcNKhrDY
	DWd3uBvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sauay-0000000FQuf-10bU;
	Mon, 05 Aug 2024 10:05:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sauau-0000000FQt5-30WK
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 10:05:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sauat-0006EO-Bm; Mon, 05 Aug 2024 12:05:35 +0200
Message-ID: <68396aa4-8a0d-48ce-9829-9dbb2f60c467@pengutronix.de>
Date: Mon, 5 Aug 2024 12:05:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
 <20240801055737.3190132-12-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240801055737.3190132-12-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_030536_807966_45D6A86F 
X-CRM114-Status: GOOD (  24.11  )
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
Subject: Re: [PATCH v2 11/19] rsatoc: rename to keytoc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 01.08.24 07:57, Sascha Hauer wrote:
> The rsatoc tool will be extended to also handle ecdsa keys, so change
> 'rsa' to a more generic name 'key'.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  crypto/Kconfig                 |  2 +-
>  crypto/Makefile                |  2 +-
>  scripts/.gitignore             |  2 +-
>  scripts/Kconfig                |  4 ++--
>  scripts/Makefile               |  6 +++---
>  scripts/Makefile.lib           | 12 ++++++------
>  scripts/{rsatoc.c => keytoc.c} |  4 ++--
>  test/self/Makefile             |  2 +-
>  8 files changed, 17 insertions(+), 17 deletions(-)
>  rename scripts/{rsatoc.c => keytoc.c} (99%)
> 
> diff --git a/crypto/Kconfig b/crypto/Kconfig
> index d1360a2101..78b499f646 100644
> --- a/crypto/Kconfig
> +++ b/crypto/Kconfig
> @@ -121,7 +121,7 @@ config CRYPTO_RSA
>  config CRYPTO_RSA_BUILTIN_KEYS
>  	bool
>  	default y if CRYPTO_RSA_KEY != ""
> -	select RSATOC
> +	select KEYTOC
>  
>  config CRYPTO_RSA_KEY
>  	depends on CRYPTO_RSA
> diff --git a/crypto/Makefile b/crypto/Makefile
> index cf041dd6b3..e84360a8c7 100644
> --- a/crypto/Makefile
> +++ b/crypto/Makefile
> @@ -34,5 +34,5 @@ RSA_DEP := $(CONFIG_CRYPTO_RSA_KEY)
>  endif
>  
>  $(obj)/rsa-keys.h: $(RSA_DEP) FORCE
> -	$(call cmd,rsa_keys,$(CONFIG_CRYPTO_RSA_KEY_NAME_HINT):$(if $(RSA_DEP),$<,$(CONFIG_CRYPTO_RSA_KEY)))
> +	$(call cmd,public_keys,$(CONFIG_CRYPTO_RSA_KEY_NAME_HINT):$(if $(RSA_DEP),$<,$(CONFIG_CRYPTO_RSA_KEY)))
>  endif
> diff --git a/scripts/.gitignore b/scripts/.gitignore
> index 8c653d184f..6ee81e8998 100644
> --- a/scripts/.gitignore
> +++ b/scripts/.gitignore
> @@ -33,7 +33,7 @@ rk-usb-loader
>  rk-usb-loader-target
>  rkimage
>  mips-relocs
> -rsatoc
> +keytoc
>  stm32image
>  mvebuimg
>  prelink-riscv
> diff --git a/scripts/Kconfig b/scripts/Kconfig
> index 4034f020d0..62bf0298ec 100644
> --- a/scripts/Kconfig
> +++ b/scripts/Kconfig
> @@ -110,10 +110,10 @@ config QOICONV
>  	help
>  	  This enable converting png to qoi images to generate boot logo.
>  
> -config RSATOC
> +config KEYTOC
>  	bool "RSA to C converter" if COMPILE_HOST_TOOLS
>  	help
> -	  This utility converts RSA keys in PEM format to either C or
> +	  This utility converts public keys in PEM format to either C or
>  	  device tree snippets. This requires OpenSSL on the build host
>  	  and will be selected by the build system if required.
>  
> diff --git a/scripts/Makefile b/scripts/Makefile
> index 20da6fc5e7..a780f05bd9 100644
> --- a/scripts/Makefile
> +++ b/scripts/Makefile
> @@ -10,9 +10,9 @@ hostprogs-always-y					+= bareboxenv
>  hostprogs-always-y					+= bareboxcrc32
>  hostprogs-always-y					+= kernel-install
>  hostprogs-always-$(CONFIG_QOICONV)			+= qoiconv
> -hostprogs-always-$(CONFIG_RSATOC)			+= rsatoc
> -HOSTCFLAGS_rsatoc.o = `$(PKG_CONFIG) --cflags openssl`
> -HOSTLDLIBS_rsatoc = `$(PKG_CONFIG) --libs openssl`
> +hostprogs-always-$(CONFIG_KEYTOC)			+= keytoc
> +HOSTCFLAGS_keytoc.o = `$(PKG_CONFIG) --cflags openssl`
> +HOSTLDLIBS_keytoc = `$(PKG_CONFIG) --libs openssl`
>  hostprogs-always-$(CONFIG_IMD)				+= bareboximd
>  hostprogs-always-$(CONFIG_KALLSYMS)			+= kallsyms
>  hostprogs-always-$(CONFIG_MIPS)				+= mips-relocs
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 6b1f0ccbc0..1881e3c139 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -604,17 +604,17 @@ quiet_cmd_stm32_image = STM32-IMG $@
>  quiet_cmd_b64dec = B64DEC  $@
>        cmd_b64dec = base64 -d $< > $@
>  
> -# rsa_keys
> +# public_keys
>  # ---------------------------------------------------------------------------
>  # Build a header file containing a rsa public key.
>  #
>  # The keys can change without the build system noticing, so we always
> -# have to call rsatoc. To avoid unnecessary rebuilds of barebox compare
> -# its output to the last rsatoc output. Only if it differs overwrite the
> +# have to call keytoc. To avoid unnecessary rebuilds of barebox compare
> +# its output to the last keytoc output. Only if it differs overwrite the
>  # target file.
> -quiet_cmd_rsa_keys = RSAKEY  $@
> -cmd_rsa_keys = \
> -	$(objtree)/scripts/rsatoc -o $@.tmp "$(2)" $(3) &&		\
> +quiet_cmd_public_keys = KEY     $@
> +cmd_public_keys = \
> +	$(objtree)/scripts/keytoc -o $@.tmp "$(2)" $(3) &&		\
>  	if cmp -s $@.tmp $@; then					\
>  		rm $@.tmp;						\
>  	else								\
> diff --git a/scripts/rsatoc.c b/scripts/keytoc.c
> similarity index 99%
> rename from scripts/rsatoc.c
> rename to scripts/keytoc.c
> index 27f0afe61f..891425cecc 100644
> --- a/scripts/rsatoc.c
> +++ b/scripts/keytoc.c
> @@ -1,8 +1,8 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later WITH LicenseRef-OpenSSL-exception
>  /*
> - * rsatoc - utility to convert an RSA key to a C struct
> + * keytoc - utility to convert a public key to a C struct
>   *
> - * This tool converts an RSA key given as file or PKCS#11
> + * This tool converts an public key given as file or PKCS#11
>   * URI to a C struct suitable to compile with barebox.
>   */
>  #pragma GCC diagnostic ignored "-Wdeprecated-declarations"
> diff --git a/test/self/Makefile b/test/self/Makefile
> index fbc1867254..6390c4afd4 100644
> --- a/test/self/Makefile
> +++ b/test/self/Makefile
> @@ -22,7 +22,7 @@ obj-$(CONFIG_SELFTEST_IDR) += idr.o
>  ifdef REGENERATE_RSATOC
>  
>  $(obj)/jwt_test.pem.c_shipped: $(src)/jwt_test.pem FORCE
> -	$(call if_changed,rsa_keys,$(basename $(target-stem)):$<,-s)
> +	$(call if_changed,public_keys,$(basename $(target-stem)):$<,-s)
>  
>  endif
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




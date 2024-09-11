Delivery-date: Wed, 11 Sep 2024 10:43:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIwq-003QYW-0x
	for lore@lore.pengutronix.de;
	Wed, 11 Sep 2024 10:43:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIwp-0001pQ-4t
	for lore@pengutronix.de; Wed, 11 Sep 2024 10:43:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gFwfVdlEwOxbm/BICsw8OEf0f62P/KNh1QV1od6UF5A=; b=vnEPOuQtVyGrfXt68jPf7nQd3x
	ly1E3EABc93vVXCF37IrzZrbg1lIdkgzO6maTSQ+Q10AQskcsRTjyL0avypjQuyg1w4b0iJEeoOSF
	J1VW0NyfUVjcBxmurIps8HK9D8QwwTH/0bRJIW2tkzpG/iXM422QnX1OiVdLg6K9QRAouHCeaaAjH
	aqafJJXxbHdda7kev5AxN1y3r/w7jKv1XwenqR2ZOzkO4Yh+fI54OpQPoUmJcCUnz3vTKIJXsEnVF
	BPLmqbK0jgHKIL9KmmnEyga6b762t0dsqKUc+sYgb0IQgCMp4irY9/0de8tesZVfQaScieMBfQ1j4
	LyXeuiAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIwO-00000008jA5-2gZm;
	Wed, 11 Sep 2024 08:43:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIwK-00000008j9C-2RV1
	for barebox@lists.infradead.org;
	Wed, 11 Sep 2024 08:43:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1soIwJ-0001Y1-9j; Wed, 11 Sep 2024 10:43:03 +0200
Message-ID: <3e533670-4ec3-4ce0-98e8-f290ad4e4845@pengutronix.de>
Date: Wed, 11 Sep 2024 10:43:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240906104028.2187872-1-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240906104028.2187872-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_014304_662837_B9AA0B2B 
X-CRM114-Status: GOOD (  20.29  )
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
Subject: Re: [PATCH v3 00/15] Add ECDSA support for FIT image verification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 06.09.24 12:40, Sascha Hauer wrote:
> This series implements ECDSA signature verification for FIT images.
> The ECDSA code itself is taken from the Kernel. Currently only supported
> way to specify a ECDSA key is to compile it into the binary using
> CONFIG_CRYPTO_ECDSA_KEY, taking it from a device tree is not yet
> supported.

The series is missing my Reviewed-by's. I am not sure if it's because
all commits have changed so much. To avoid reviewing code I already
looked at before, I have only done a brief check.

Cheers,
Ahmad

> 
> Changes since v2:
> - fix endianess problems when ECDSA keys are built for a machine with
>   different endianess
> - add struct public_key as a container for different key types
> - make FIT image code use generic public key functions
> - drop ECDSA dts snippet support (not needed, doesn't work)
> - pass NULL to EVP_PKEY_get_utf8_string_param()
> 
> Sascha Hauer (15):
>   keytoc: remove ECDSA dts support
>   keytoc: fail in case gen_key() fails
>   keytoc: fix ECDSA endianess problems
>   keytoc: remove duplicate __ENV__ check
>   crypto: Makefile: make simpler
>   keytoc: make key name hint optional
>   crypto: rsa: include key name hint into CONFIG_CRYPTO_RSA_KEY
>   crypto: rsa: encapsulate rsa keys in public keys struct
>   crypto: add public_key functions
>   crypto: builtin_keys: Allow to specify multiple keys in
>     CONFIG_CRYPTO_PUBLIC_KEYS
>   crypto: public-keys: use array of public_keys
>   crypto: rsa: create static inline wrapper for rsa_verify()
>   Add elliptic curve cryptography (ECC) helper functions
>   crypto: add ECDSA support
>   crypto: make RSA a visible option
> 
>  common/Kconfig                    |    1 -
>  common/image-fit.c                |   20 +-
>  crypto/Kconfig                    |   37 +-
>  crypto/Makefile                   |   20 +-
>  crypto/ecc.c                      | 1661 +++++++++++++++++++++++++++++
>  crypto/ecc_curve_defs.h           |  155 +++
>  crypto/ecdsa.c                    |  140 +++
>  crypto/public-keys.c              |  107 ++
>  crypto/rsa.c                      |   95 +-
>  include/asm-generic/barebox.lds.h |   10 +-
>  include/crypto/ecc_curve.h        |   62 ++
>  include/crypto/ecdh.h             |   83 ++
>  include/crypto/internal/ecc.h     |  278 +++++
>  include/crypto/public_key.h       |   36 +
>  include/ecdsa.h                   |   42 +
>  include/rsa.h                     |   35 +-
>  scripts/Makefile.lib              |    2 +-
>  scripts/keytoc.c                  |  119 ++-
>  18 files changed, 2718 insertions(+), 185 deletions(-)
>  create mode 100644 crypto/ecc.c
>  create mode 100644 crypto/ecc_curve_defs.h
>  create mode 100644 crypto/ecdsa.c
>  create mode 100644 crypto/public-keys.c
>  create mode 100644 include/crypto/ecc_curve.h
>  create mode 100644 include/crypto/ecdh.h
>  create mode 100644 include/crypto/internal/ecc.h
>  create mode 100644 include/crypto/public_key.h
>  create mode 100644 include/ecdsa.h
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



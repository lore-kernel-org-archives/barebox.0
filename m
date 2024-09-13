Delivery-date: Fri, 13 Sep 2024 10:00:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sp1Dt-004312-2F
	for lore@lore.pengutronix.de;
	Fri, 13 Sep 2024 10:00:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sp1Ds-00077j-H2
	for lore@pengutronix.de; Fri, 13 Sep 2024 10:00:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gW9p5NHqUV5Zitnd1Qr1tQ9zg7GJ9o80pkNR8LegPJM=; b=jeMT5qYgVEifwE+WvRjhYozllD
	kU4PQzj/Gb1xSRAEjWV0tTCwQO6konZRtwe7mA1N7w/QT3Vw8fS+6aTQ6efSC9iGr/qoQ1hPYjGw2
	jr0xDJxmY51QtS6GVev4xxojSy3Un4O9uk4HcacNZ/Q1vwcAvBQNTCXlQ479Nw1XTeAWdEscKra2T
	UZFFdMnzy+46cIrRT0pG+A1bp55ibq0VTiud0ckVfGMC4zIYzGwv42GoUf/eB7stsItlIvGOARZxQ
	J4XUdZVhamH7ORr8XIf9ZH8HJLni0dpfDsWr8GTzCaBiDizg6c9hnM034c/k8PSVQAJ47enc6KJBy
	BwvubxPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1DI-0000000FFot-1q9k;
	Fri, 13 Sep 2024 07:59:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1DD-0000000FFlN-1d71
	for barebox@lists.infradead.org;
	Fri, 13 Sep 2024 07:59:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1DC-0006XC-4m; Fri, 13 Sep 2024 09:59:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1DB-007Zad-O0; Fri, 13 Sep 2024 09:59:25 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1DB-006w1Z-24;
	Fri, 13 Sep 2024 09:59:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 13 Sep 2024 09:59:08 +0200
Message-Id: <20240913075924.1652866-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_005927_451367_222D840C 
X-CRM114-Status: GOOD (  16.07  )
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
Subject: [PATCH v4 00/16] Add ECDSA support for FIT image verification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series implements ECDSA signature verification for FIT images.
The ECDSA code itself is taken from the Kernel. Currently only supported
way to specify a ECDSA key is to compile it into the binary using
CONFIG_CRYPTO_PUBLIC_KEYS, taking it from a device tree is not yet
supported.
Since v2 this series unifies the way public keys are passed to barebox.
We now have a single Kconfig option which takes a list of public keys,
which can be either RSA or ECDSA keys.

Changes since v3:
- add patch to remove unnecessary dependencies from public-keys.h
- add commit message to "crypto: Makefile: make simpler"

Changes since v2:
- fix endianess problems when ECDSA keys are built for a machine with
  different endianess
- add struct public_key as a container for different key types
- make FIT image code use generic public key functions
- drop ECDSA dts snippet support (not needed, doesn't work)
- pass NULL to EVP_PKEY_get_utf8_string_param()

Sascha Hauer (16):
  keytoc: remove ECDSA dts support
  keytoc: fail in case gen_key() fails
  keytoc: fix ECDSA endianess problems
  keytoc: remove duplicate __ENV__ check
  crypto: Makefile: make simpler
  crypto/Makefile: Drop unnecessary dependencies
  keytoc: make key name hint optional
  crypto: rsa: include key name hint into CONFIG_CRYPTO_RSA_KEY
  crypto: rsa: encapsulate rsa keys in public keys struct
  crypto: add public_key functions
  crypto: builtin_keys: Allow to specify multiple keys in
    CONFIG_CRYPTO_PUBLIC_KEYS
  crypto: public-keys: use array of public_keys
  crypto: rsa: create static inline wrapper for rsa_verify()
  Add elliptic curve cryptography (ECC) helper functions
  crypto: add ECDSA support
  crypto: make RSA a visible option

 common/Kconfig                    |    1 -
 common/image-fit.c                |   20 +-
 crypto/Kconfig                    |   37 +-
 crypto/Makefile                   |   18 +-
 crypto/ecc.c                      | 1661 +++++++++++++++++++++++++++++
 crypto/ecc_curve_defs.h           |  155 +++
 crypto/ecdsa.c                    |  140 +++
 crypto/public-keys.c              |  107 ++
 crypto/rsa.c                      |   95 +-
 include/asm-generic/barebox.lds.h |   10 +-
 include/crypto/ecc_curve.h        |   62 ++
 include/crypto/ecdh.h             |   83 ++
 include/crypto/internal/ecc.h     |  278 +++++
 include/crypto/public_key.h       |   36 +
 include/ecdsa.h                   |   42 +
 include/rsa.h                     |   35 +-
 scripts/Makefile.lib              |    2 +-
 scripts/keytoc.c                  |  119 ++-
 18 files changed, 2716 insertions(+), 185 deletions(-)
 create mode 100644 crypto/ecc.c
 create mode 100644 crypto/ecc_curve_defs.h
 create mode 100644 crypto/ecdsa.c
 create mode 100644 crypto/public-keys.c
 create mode 100644 include/crypto/ecc_curve.h
 create mode 100644 include/crypto/ecdh.h
 create mode 100644 include/crypto/internal/ecc.h
 create mode 100644 include/crypto/public_key.h
 create mode 100644 include/ecdsa.h

-- 
2.39.2




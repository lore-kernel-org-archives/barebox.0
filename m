Delivery-date: Fri, 06 Sep 2024 12:41:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1smWOz-001qoO-1H
	for lore@lore.pengutronix.de;
	Fri, 06 Sep 2024 12:41:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1smWOy-0002Vs-5J
	for lore@pengutronix.de; Fri, 06 Sep 2024 12:41:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iJ0MKK8ZX6CpN501GdJ7CZzU+RbpeQSu39Y7pSP6PLM=; b=Esn1CpVwDrH5nYAeRkwftUuLTf
	CAaHtLZb3knQDLZTFArGBBVMrBExavCbjQrZ9FPGVPDcMLt+CYo0A4U7mUHh1xCi85mY4hYUFx+UB
	8/Nn37Gg0Mwj538Pskc/3bqJR83lbLVs9h+e8Z3BkQXJHDHv/zu6o3OWUajdu7DXfGMHbDOvNC2Eh
	LaCt5RvTdaSANawdlZNNNnpDyj6YaNxDG/Y4bVtro4TX1dskg2/RtDjRUMBk3/LFOJDEPXK+CvriI
	7NXSUn3LAPzJqQ66Zv+o+FtWkK/BpyjAHorWu1qsl4MLj5woe360wPH9YMhRQV1JRo7KXqo1l4I14
	1KS60miQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smWON-0000000Bo1d-2XMT;
	Fri, 06 Sep 2024 10:40:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smWOJ-0000000Bnyw-02ON
	for barebox@lists.infradead.org;
	Fri, 06 Sep 2024 10:40:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1smWOH-00024N-KH; Fri, 06 Sep 2024 12:40:33 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1smWOE-005vJI-MM; Fri, 06 Sep 2024 12:40:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1smWOE-009BBJ-1u;
	Fri, 06 Sep 2024 12:40:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  6 Sep 2024 12:40:13 +0200
Message-Id: <20240906104028.2187872-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_034035_087285_1271C5C0 
X-CRM114-Status: GOOD (  14.77  )
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
Subject: [PATCH v3 00/15] Add ECDSA support for FIT image verification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series implements ECDSA signature verification for FIT images.
The ECDSA code itself is taken from the Kernel. Currently only supported
way to specify a ECDSA key is to compile it into the binary using
CONFIG_CRYPTO_ECDSA_KEY, taking it from a device tree is not yet
supported.

Changes since v2:
- fix endianess problems when ECDSA keys are built for a machine with
  different endianess
- add struct public_key as a container for different key types
- make FIT image code use generic public key functions
- drop ECDSA dts snippet support (not needed, doesn't work)
- pass NULL to EVP_PKEY_get_utf8_string_param()

Sascha Hauer (15):
  keytoc: remove ECDSA dts support
  keytoc: fail in case gen_key() fails
  keytoc: fix ECDSA endianess problems
  keytoc: remove duplicate __ENV__ check
  crypto: Makefile: make simpler
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
 crypto/Makefile                   |   20 +-
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
 18 files changed, 2718 insertions(+), 185 deletions(-)
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




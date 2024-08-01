Delivery-date: Thu, 01 Aug 2024 07:58:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZOpa-0052AG-2S
	for lore@lore.pengutronix.de;
	Thu, 01 Aug 2024 07:58:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZOpZ-0008Km-Ul
	for lore@pengutronix.de; Thu, 01 Aug 2024 07:58:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Kmcb3A5aBY5QzmlLoq8jhyg4Xzj5xj0SjUndOXOYJ5k=; b=VIOurGX2h8V2xuUGRjd7cixIOw
	hsK4zmjxcyjASpIW/r9U9qcylJGhfZ/JvTiEQda0MHn7nCK7CYghzYsFrEGuxoZkySowjsxt4mUkH
	WLF+fkQ3CMElIxZTx3dnhePtUrg6sZDhbDaKaFjDpwsymynlWbQ4brtGAGqOxRYZPnxqtZifcKl7y
	8J+w9XMT8eH5kIKJKNRpuDlTa5ts2IBbarOyOMTOWj69myTAk3Ax1Czk7nQqWlIOUY1+2dDNGZGyq
	1Q6YpDisuvYN09v+F7br2q6+CrpGH145f6pexina4v+Ey/DyCEm65CFdmUxHFUXVunY1UeWaA6t4D
	EoSqjX/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOot-00000003pVr-1QGU;
	Thu, 01 Aug 2024 05:57:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOoo-00000003pRx-1AP6
	for barebox@lists.infradead.org;
	Thu, 01 Aug 2024 05:57:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOok-0007u7-Tg; Thu, 01 Aug 2024 07:57:38 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOok-003hVf-Gu; Thu, 01 Aug 2024 07:57:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOok-00DNum-1K;
	Thu, 01 Aug 2024 07:57:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  1 Aug 2024 07:57:18 +0200
Message-Id: <20240801055737.3190132-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_225742_435043_AC38B74C 
X-CRM114-Status: GOOD (  16.61  )
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
Subject: [PATCH v2 00/19] Add ECDSA support for FIT image verification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series implements ECDSA signature verification for FIT images.
The ECDSA code itself is taken from the Kernel. Currently only supported
way to specify a ECDSA key is to compile it into the binary using
CONFIG_CRYPTO_ECDSA_KEY, taking it from a device tree is not ye
supported.

Changes since v1:
- better split up rsatoc patches
- keep engine support around in rsatoc as it is still needed in many
  cases
- Add more cleanup to rsatoc

Sascha Hauer (19):
  errno: include string for EOPNOTSUPP
  rsatoc: disable deprecated function warnings
  rsatoc: remove unnecessary function call
  rsatoc: pass EVP_PKEY around
  rsatoc: rename rsa_err() to openssl_error()
  rsatoc: move engine initialization to engine_get_pub_key()
  rsatoc: cleanup error handling
  rsatoc: remove unnecessary error check
  rsatoc: use non deprecated openssl functions to retrieve RSA params
  rsatoc: check error value of gen_key()
  rsatoc: rename to keytoc
  keytoc: add ecdsa support
  keytoc: Let openssl_error() take a format string
  keytoc: clarify error messages
  malloc: implement free_sensitive()
  Add elliptic curve cryptography (ECC) helper functions
  crypto: add ECDSA support
  crypto: make RSA a visible option
  fit: Add ecdsa support

 common/Kconfig                    |    1 -
 common/dlmalloc.c                 |   15 +
 common/image-fit.c                |  113 +-
 common/misc.c                     |    1 +
 common/tlsf_malloc.c              |   11 +
 crypto/Kconfig                    |   28 +-
 crypto/Makefile                   |   22 +-
 crypto/ecc.c                      | 1661 +++++++++++++++++++++++++++++
 crypto/ecc_curve_defs.h           |  155 +++
 crypto/ecdsa.c                    |  169 +++
 include/asm-generic/barebox.lds.h |    7 +
 include/crypto/ecc_curve.h        |   62 ++
 include/crypto/ecdh.h             |   83 ++
 include/crypto/internal/ecc.h     |  278 +++++
 include/dma.h                     |    5 +
 include/ecdsa.h                   |   21 +
 include/linux/slab.h              |    5 +
 include/malloc.h                  |    1 +
 scripts/.gitignore                |    2 +-
 scripts/Kconfig                   |    4 +-
 scripts/Makefile                  |    6 +-
 scripts/Makefile.lib              |   12 +-
 scripts/{rsatoc.c => keytoc.c}    |  458 +++++---
 test/self/Makefile                |    2 +-
 24 files changed, 2924 insertions(+), 198 deletions(-)
 create mode 100644 crypto/ecc.c
 create mode 100644 crypto/ecc_curve_defs.h
 create mode 100644 crypto/ecdsa.c
 create mode 100644 include/crypto/ecc_curve.h
 create mode 100644 include/crypto/ecdh.h
 create mode 100644 include/crypto/internal/ecc.h
 create mode 100644 include/ecdsa.h
 rename scripts/{rsatoc.c => keytoc.c} (61%)

-- 
2.39.2




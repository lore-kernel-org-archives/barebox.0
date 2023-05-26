Delivery-date: Fri, 26 May 2023 08:38:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2R6J-00EiLD-OC
	for lore@lore.pengutronix.de; Fri, 26 May 2023 08:38:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2R6H-0007Ed-AY
	for lore@pengutronix.de; Fri, 26 May 2023 08:38:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=g9CMTyCUCDr1MGJaR4QqkZwi3RRDjlBJV2Cl0KlyTy8=; b=DIz748A6NAhti6A0lvBEv7IpNs
	Yii9HpPNMOGXmCWwFrXPEswVYzty8cZX2sKckp2rHbGCjP8sn7X56T7dKMReDb8HQW3NE316G98LS
	Xk3fc27YKXsw55qyqhH37MF4mIOuge9CfIkGKSuT3aOLQT2OZrO8ME76mooZjOWA9o2P+dtKdpRoh
	udKpXjFyCXN7xsrdAe/WcUyspLpDcEcEfyn7Jk+dm5NwFkW0Md381MBhRIDN61X5msNUKu1oHtrlb
	R6Qyt42jDrtmJoVbl9BKgM9RD36phB0qV4tq82pO777LIRY6IQSoJjgaBf6/C9OzMoVwDF14h3kWE
	QL5TVH7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2R5H-001HTt-0N;
	Fri, 26 May 2023 06:37:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2R5C-001HQg-1l
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 06:37:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q2R5A-0006qR-Rv
	for barebox@lists.infradead.org; Fri, 26 May 2023 08:37:48 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q2R5A-002tWY-6M
	for barebox@lists.infradead.org; Fri, 26 May 2023 08:37:48 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q2R59-004sYU-4p
	for barebox@lists.infradead.org; Fri, 26 May 2023 08:37:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 26 May 2023 08:37:39 +0200
Message-Id: <20230526063746.1155297-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_233750_584485_DC2E8D42 
X-CRM114-Status: GOOD (  10.82  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 0/7] ARM64: crypto: add Crypto Extensions accelerated SHA implementation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This shaves 400ms of a FIT image boot that uses sha256 as digest for
the images referenced by the selected configuration:

  barebox@imx8mn-old:/ time bootm -d kernel-a
  Dryrun. Aborted.
  time: 998ms

  barebox@imx8mn-new:/ time bootm -d kernel-a
  Dryrun. Aborted.
  time: 601ms

We also use SHA256 to verify barebox proper when in high assurance boot,
but that still uses the software implementation.

v1 -> v2:
  - use dedicated CONFIG_ symbols for SHA224/SHA256 selftest (Sascha)
  - check against CONFIG_ symbols for generic algorithm
  - remove #define DEBUG in selftest
  - fix oversight in new <linux/linkage.h> __ALIGN definition,
    which broke build on x86 and PowerPC
  - 

Ahmad Fatoum (7):
  crypto: digest: match driver name if no algo name matches
  test: self: add digest test
  include: sync <linux/linkage.h> with Linux
  ARM: asm: implement CPU_BE/CPU_LE
  ARM: asm: import Linux adr_l/ldr_l assembler.h definitions
  crypto: sha: reorder struct sha*_state into Linux order
  ARM64: crypto: add Crypto Extensions accelerated SHA implementation

 arch/arm/Makefile                |   3 +-
 arch/arm/crypto/Makefile         |   6 +
 arch/arm/crypto/sha1-ce-core.S   | 149 ++++++++++++++
 arch/arm/crypto/sha1-ce-glue.c   |  93 +++++++++
 arch/arm/crypto/sha2-ce-core.S   | 156 +++++++++++++++
 arch/arm/crypto/sha2-ce-glue.c   | 121 ++++++++++++
 arch/arm/include/asm/assembler.h | 230 ++++++++++++++++++++++
 arch/arm/include/asm/neon.h      |   8 +
 commands/digest.c                |   2 +-
 common/Kconfig                   |   6 +
 crypto/Kconfig                   |  21 ++
 crypto/digest.c                  |  11 +-
 include/crypto/sha.h             |  10 +-
 include/crypto/sha1_base.h       | 104 ++++++++++
 include/crypto/sha256_base.h     | 129 +++++++++++++
 include/linux/barebox-wrapper.h  |   1 +
 include/linux/linkage.h          | 321 ++++++++++++++++++++++++++++---
 include/linux/string.h           |  20 ++
 test/self/Kconfig                |   6 +
 test/self/Makefile               |   1 +
 test/self/digest.c               | 213 ++++++++++++++++++++
 21 files changed, 1572 insertions(+), 39 deletions(-)
 create mode 100644 arch/arm/crypto/sha1-ce-core.S
 create mode 100644 arch/arm/crypto/sha1-ce-glue.c
 create mode 100644 arch/arm/crypto/sha2-ce-core.S
 create mode 100644 arch/arm/crypto/sha2-ce-glue.c
 create mode 100644 arch/arm/include/asm/neon.h
 create mode 100644 include/crypto/sha1_base.h
 create mode 100644 include/crypto/sha256_base.h
 create mode 100644 test/self/digest.c

-- 
2.39.2




Delivery-date: Thu, 12 Jun 2025 08:59:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPbuC-006QLA-0j
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 08:59:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPbuB-0007bA-H2
	for lore@pengutronix.de; Thu, 12 Jun 2025 08:59:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ESlnCina5MvQKOoJd2J7P6GIacoUesYCBRt7ywx9Aa8=; b=yvZ5WTKPX8Arxhu6tb34H9EEsc
	Sydpk4UmZmrHtLySWew2fWpjoUGykx+/zyKQzoPPPyGbu6J+CFjSla/hu3kygW9Syb2h+MitWD4y6
	1RWk2W8FjIphOJMW8IAb498AEtwBY/he5zZJoI22rzC2EDMgqJnEBD1qe07UKcEBn5NzyPNSjkPiy
	Llvl4KIZ2rNpbJLdT2HYxJK0cm1Ob3HiuwGW71tNtMXmBviqA9ScxBuDBuXSY4lrIYALHUbFrfh2c
	Kr5J5i0LEFhyDHgQgfEjav9/4c0mk0HPHTbfyeyrvqrPNe92EQf+mwIxJgxzTSSoAYAEPAWqz4dVP
	Hl5DTVOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPbtE-0000000CNBr-0G2w;
	Thu, 12 Jun 2025 06:58:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPbtA-0000000CN8L-0UhC
	for barebox@lists.infradead.org;
	Thu, 12 Jun 2025 06:58:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1uPbt8-0006si-5e; Thu, 12 Jun 2025 08:58:14 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uPbt7-0034nR-2h;
	Thu, 12 Jun 2025 08:58:13 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uPbt7-008Uz1-2V;
	Thu, 12 Jun 2025 08:58:13 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 12 Jun 2025 08:58:03 +0200
Message-Id: <20250612065812.2025665-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_235816_198069_0D693BAE 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 0/9] NVMEM: Introduce write protection support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds a generic protect op to NVMEM core, enabling
standardized write protection. This makes NVMEM behave more like other
flash interfaces (e.g., CFI block protection), which helps with common
tooling.

Oleksij Rempel (9):
  nvmem: Add 'protect' operation to core framework
  nvmem: rmem: add write and protect support
  commands: nvmem: Add support for creating dynamic rmem devices
  regmap: Add reg_seal operation for hardware protection
  nvmem: regmap: Implement protect operation using regmap_seal
  nvmem: bsec: Implement NVMEM protect via regmap_seal for OTP locking
  nvmem: rmem: ensure unique device name per instance
  fs: Report errors for out-of-bounds protect operations
  test: Add pytest suite for NVMEM framework

 commands/nvmem.c               |  121 +++-
 drivers/base/regmap/internal.h |    2 +
 drivers/base/regmap/regmap.c   |   30 +
 drivers/nvmem/bsec.c           |   27 +
 drivers/nvmem/core.c           |   32 +
 drivers/nvmem/partition.c      |    7 +
 drivers/nvmem/regmap.c         |   65 ++
 drivers/nvmem/rmem.c           |   87 ++-
 fs/fs.c                        |    6 +-
 include/driver.h               |    3 +
 include/linux/nvmem-provider.h |    2 +
 include/linux/regmap.h         |   33 ++
 include/mach/stm32mp/bsec.h    |    1 +
 test/py/test_nvmem.py          | 1012 ++++++++++++++++++++++++++++++++
 14 files changed, 1418 insertions(+), 10 deletions(-)
 create mode 100644 test/py/test_nvmem.py

--
2.39.5




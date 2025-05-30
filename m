Delivery-date: Fri, 30 May 2025 13:44:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKy9y-001vop-2m
	for lore@lore.pengutronix.de;
	Fri, 30 May 2025 13:44:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKy9y-0002HS-8n
	for lore@pengutronix.de; Fri, 30 May 2025 13:44:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=glBN5lacdcGyBxsbBSRXi3/OCg7uVBUVvi6eOa0a6bE=; b=c9n4e9d9m1dIDnaJ69S+ftCTTU
	oVEtMXjhGF3XNGqThNazZfkg4onyR/upP4C90Qpiem5p6dD4gazBq19hTXlVwoINH/XRGj22LNr61
	8t42T3m6H5kanywKoKqGNXFVQrIN+sGc8qMZpZGpCINWIz7NaVR1MvTZVi9d6t5wXRqw+lhoEH0J+
	5YxPUFvRLcxdzTOc+FgmnLsaV7M1H/d9mCDm6yFnQWwDFDIv/M33AT0na6xDIpdHks0oeinJEVevT
	9JtY9TJG9Z0P/bXbHmxLRhCmk3UMa/qTTAj3cT4Qw/rYMgKih12LeAMHR9+NUKbq/1sKFUzn88523
	rJrZmtRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKy9K-00000000Rpc-0Gz2;
	Fri, 30 May 2025 11:43:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKy6n-00000000RbT-3PcZ
	for barebox@lists.infradead.org;
	Fri, 30 May 2025 11:41:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1uKy6l-0008Tg-SW; Fri, 30 May 2025 13:41:07 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uKy6l-000y4j-1u;
	Fri, 30 May 2025 13:41:07 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uKy6l-004EcA-1i;
	Fri, 30 May 2025 13:41:07 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 30 May 2025 13:40:59 +0200
Message-Id: <20250530114106.1009454-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250530_044109_903078_0AA4EF73 
X-CRM114-Status: UNSURE (   8.78  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 0/7] NVMEM: Introduce write protection support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds a generic protect op to NVMEM core, enabling
standardized write protection. This makes NVMEM behave more like other
flash interfaces (e.g., CFI block protection), which helps with common
tooling.

Oleksij Rempel (7):
  nvmem: Add 'protect' operation to core framework
  nvmem: rmem: add write and protect support
  commands: nvmem: Add support for creating dynamic rmem devices
  regmap: Add reg_seal operation for hardware protection
  nvmem: regmap: Implement protect operation using regmap_seal
  nvmem: bsec: Implement NVMEM protect via regmap_seal for OTP locking
  nvmem: rmem: Use unique device name for NVMEM registration

 commands/nvmem.c               | 124 +++++++++-
 drivers/base/regmap/internal.h |   2 +
 drivers/base/regmap/regmap.c   |  31 +++
 drivers/nvmem/bsec.c           |  27 ++
 drivers/nvmem/core.c           |  48 ++++
 drivers/nvmem/partition.c      |   7 +
 drivers/nvmem/regmap.c         |  65 +++++
 drivers/nvmem/rmem.c           | 438 ++++++++++++++++++++++++++++++++-
 include/linux/nvmem-provider.h |   5 +
 include/linux/regmap.h         |  33 +++
 include/mach/stm32mp/bsec.h    |   1 +
 11 files changed, 774 insertions(+), 7 deletions(-)

--
2.39.5




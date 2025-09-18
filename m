Delivery-date: Thu, 18 Sep 2025 17:04:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzGBL-004Vag-03
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 17:04:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzGBK-0008AC-FZ
	for lore@pengutronix.de; Thu, 18 Sep 2025 17:04:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XIWOsW46mKVZu8yJ9UvX7PkrDa7AFGuRJbpItl0+ijI=; b=eRYK896p4UBwiw
	PGfj6ndYjKgbuEMsP5oUsXlestM33O8HYKd+uwR2A8x7WXLN08yU60NwWVubJrR02XLQOt96h9qcN
	zAUH+K5hH1JGAvFeU0p11Dj2zplM7v0VPWQzBnEQGbVtdvvoDhM8e0mjCco/PkOUdOIswuATD1ndJ
	R9/TTO1LhSlMDiJ+Qgf39UPEhpfoEec4CfoNbPGA1WMbhxI3QjDGygJIUYpVuCp8mHeqImmnTOR/0
	1ImkdiFXkeKyhuegBt62iyKPr1Fht/SrIhr5lFpUTJLYm2hf1wFt5ytu+mm/dzcXTSrMzxoHm93Tn
	m3oA9ktmIqs+WnGmlGTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzGAp-00000000G8A-0ovH;
	Thu, 18 Sep 2025 15:03:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzGAm-00000000G71-4Ap6
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 15:03:50 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1uzGAl-0007vx-FL; Thu, 18 Sep 2025 17:03:47 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 18 Sep 2025 17:03:33 +0200
Message-Id: <20250918-prt8ml-v1-0-3fd826e0807d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEUfzGgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDS0ML3YKiEovcHF1zi5QkS4PkZItkMxMloOKCotS0zAqwQdGxtbUAcOx
 1vlgAAAA=
X-Change-ID: 20250918-prt8ml-78db90cc8c64
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>, David Jander <david@protonic.nl>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1244; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=hJ3XNB7ai+Ht5T/CXADrzh4z6i0YoAHjE9to84XYAsY=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsg4Ix80VXVWm/KTY9IHD1/tquCQmfL9L4dnyye79gCGp
 qvX4oy9OkpZGMS4GGTFFFli1eQUhIz9r5tV2sXCzGFlAhnCwMUpABM5yMrIsPVs72uJ1gVrt0Rp
 v7BvuJt6dm7f4mCmxio/jjl6+gv0HzP8lYmLb/hcdP+356SEVIWZD6PeuMcdavhz7+vbOZd/6WR
 E8gIA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_080349_036463_7802D143 
X-CRM114-Status: UNSURE (   7.58  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] Extend protonic prt8m to support prt8ml
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Update prt8m to use deep probe and add support for the prt8ml using the
mainlining candidate devicetree from
https://lore.kernel.org/lkml/20250918-imx8mp-prt8ml-v2-0-3d84b4fe53de@pengutronix.de/T

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
Jonas Rebmann (2):
      ARM: i.MX8M: protonic-imx8m: enable deep probe
      ARM: boards: Add support for PRT8ML

 arch/arm/boards/protonic-imx8m/Makefile            |    2 +-
 arch/arm/boards/protonic-imx8m/board.c             |   28 +-
 .../protonic-imx8m/flash-header-prt8ml.imxcfg      |    5 +
 arch/arm/boards/protonic-imx8m/lowlevel-prt8ml.c   |  100 ++
 .../boards/protonic-imx8m/lpddr4-timing-prt8ml.c   | 1121 ++++++++++++++++++++
 arch/arm/dts/Makefile                              |    4 +-
 arch/arm/dts/imx8mp-prt8ml.dts                     |   48 +
 arch/arm/dts/imx8mp-prt8ml.dtsi                    |  500 +++++++++
 arch/arm/mach-imx/Kconfig                          |    4 +-
 images/Makefile.imx                                |    2 +
 10 files changed, 1799 insertions(+), 15 deletions(-)
---
base-commit: f3be3a8e9ae884bdfb116238e9049b1eb2759810
change-id: 20250918-prt8ml-78db90cc8c64

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>




Delivery-date: Fri, 13 Feb 2026 09:20:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqoPV-001BbM-2g
	for lore@lore.pengutronix.de;
	Fri, 13 Feb 2026 09:20:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqoPW-0006YQ-3i
	for lore@pengutronix.de; Fri, 13 Feb 2026 09:20:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i5hI0XxedHg6xUlBSY8QzMADJXbtNf1Qf4m4WB1DLMA=; b=jdMLGm8sawaPwQ
	0Bji3mtIt+tiwS8z0pSjDirRMzRyDiafk9UQPKQqtckhwsaiS6qA/FXxWUL+FYg+E684WHYSOPVAy
	EJV47vS/tTGpz8DmNnsmGYQrbMCg7NZWAJaOBgU+fZFdrkmlpC5OH91WLnY6pnOOKQeZswIfx8jwS
	cRPTRovUTXt7XoWhW+N5Jd1fn8YCqvnVxT7wtwFu6KeMEk9p3n1Ylof+ISSHkzlfarSTiqyk5EJ6a
	p08+Xpbpk0oPTPfB0dDGh+PLFO21d9KV9qFTRkI/8AzUWqjVCoILbu5K8psba0H8R+zu4UFz8PHdd
	9j505maK6S8CtYd3sm8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqoP2-00000003AhP-2oPW;
	Fri, 13 Feb 2026 08:19:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqoOz-00000003AfF-426f
	for barebox@lists.infradead.org;
	Fri, 13 Feb 2026 08:19:50 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vqoOw-0006MH-VV; Fri, 13 Feb 2026 09:19:46 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 13 Feb 2026 09:19:36 +0100
Message-Id: <20260213-v2026-01-0-topic-tqma8mpxs-v1-0-44f2cc07cfef@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJjejmkC/x3MTQqAIBBA4avErBvwhyK6SrRQG2sWlWmEEN09a
 /e+zbshUWRK0Fc3RLo48b4VyLoCt5htJuSpGJRQrVBS4/UVCokCzz2ww/NYTbeGnNB6rYw0mpx
 toAxCJM/5nw/j87yp+9N0bAAAAA==
X-Change-ID: 20260213-v2026-01-0-topic-tqma8mpxs-bf32a1a3ecb5
To: BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_001950_003165_E30F5A29 
X-CRM114-Status: UNSURE (   6.97  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] ARM: boards: add support for tqma8mpxs boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Extending the TQMA8MPxL board code with support for TQMA8MPxS, as they
share the same processor and a lot of the same codebasis, but differ in
small changes.

Both now have support for the different RAM configurations, but no ECC
support yet.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
Fabian Pflug (3):
      dts: arm64: freescale: add imx8mp-tqma8mpqs board
      ARM: boards: tqma8mpxl: extend with support for xs
      ARM: boards: tqma8mpxx: add no_ecc ram timings

 Documentation/migration-guides/migration-master.md |   10 +
 arch/arm/boards/Makefile                           |    2 +-
 arch/arm/boards/tqma8mpxl/lowlevel.c               |  113 ---
 arch/arm/boards/{tqma8mpxl => tqma8mpxx}/Makefile  |    0
 arch/arm/boards/{tqma8mpxl => tqma8mpxx}/board.c   |   17 +-
 .../flash-header-tqma8mpxx.imxcfg}                 |    0
 arch/arm/boards/tqma8mpxx/lowlevel.c               |  196 ++++
 .../{tqma8mpxl => tqma8mpxx}/lpddr4-timing.c       |  763 +++++++++++++-
 arch/arm/configs/imx_v8_defconfig                  |    2 +-
 arch/arm/configs/multi_v8_defconfig                |    2 +-
 arch/arm/dts/Makefile                              |    2 +-
 arch/arm/dts/imx8mp-tqma8mpqs-mba8mpxs.dts         |   15 +
 arch/arm/mach-imx/Kconfig                          |    5 +-
 .../freescale/imx8mp-tqma8mpqs-mb-smarc-2.dts      |  388 +++++++
 dts/src/arm64/freescale/imx8mp-tqma8mpqs.dtsi      | 1066 ++++++++++++++++++++
 images/Makefile.imx                                |    2 +-
 16 files changed, 2442 insertions(+), 141 deletions(-)
---
base-commit: 0024921364eb4c8bc8089fdc198440b0d67a239f
change-id: 20260213-v2026-01-0-topic-tqma8mpxs-bf32a1a3ecb5

Best regards,
-- 
Fabian Pflug <f.pflug@pengutronix.de>




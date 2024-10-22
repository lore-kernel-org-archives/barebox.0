Delivery-date: Tue, 22 Oct 2024 09:49:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t39dW-007Nf0-1Q
	for lore@lore.pengutronix.de;
	Tue, 22 Oct 2024 09:49:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t39dV-0006BT-DS
	for lore@pengutronix.de; Tue, 22 Oct 2024 09:49:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q7LxjaI4vvwR6VM9yQoNQBNJ8B37r3MDHEAXYOd+jCA=; b=19dBRnXxdpIjxY
	xE/hdgxG4lO/2DjS38XONG6G8MZveZF5iqHY5gagm+aHfI4DGk4WOcRFjAckO9YCYKmRD6MPwsj5b
	O46Ngd1Xi+KddSMAdCVgc3mi4WeIcwE3cXTA/nytfOvUk3Ka33fdcDt5OWX5axpPVaFAPrLAHGNsX
	3WgOtEDHoFu333afwY8vv1nIzWQrcN3pJbCUEz00zLvOzJU+zGR207yzpzegm55+49lCASPKxriVm
	fx91A7q9otwJd6sMNHrg8h0iXwmQql83Ufw8g8gLLdKqjgveC026pfNb815aj4BlCPKf5xVO6XPQj
	tjOPANG+kr/tjoUwLGkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t39cs-0000000A2VZ-085u;
	Tue, 22 Oct 2024 07:48:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t39b2-0000000A2HA-407Y
	for barebox@lists.infradead.org;
	Tue, 22 Oct 2024 07:46:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t39b0-0005hn-7J; Tue, 22 Oct 2024 09:46:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t39az-000pLI-2y;
	Tue, 22 Oct 2024 09:46:25 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t39az-00BzDi-2n;
	Tue, 22 Oct 2024 09:46:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 22 Oct 2024 09:46:24 +0200
Message-Id: <20241022-arm-layerscape-tfa-v2-0-69ac70ceb0ff@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFBYF2cC/32NQQ6CMBBFr0Jm7Zi2YhFX3sOwKDCFSbSQKRII4
 e5WDuDyveS/v0EkYYpwzzYQmjnyEBKYUwZN70JHyG1iMMrkWhmNTt74citJbNxIOHmHRV7Xuad
 roS8EaTgKeV6O6LNK3HOcBlmPj1n/7N/crFGhKm/KlkVtvbWPkUL3mWQIvJxbgmrf9y9jy07uu
 QAAAA==
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729583185; l=2923;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=kJDtiEjYmNDlCyuJ+F7F1xgoRux3DGahgwJ/Iwh14E8=;
 b=ENNsdpZsB/NKp+4SooSDnpdn9er5UHd/kbXNLIyJr2clE8gmHdQMgUZYZiFAV3fowkMWeBsdd
 gRPdfyW5hK4DVEXN6v7mPNBF7aqvbWynyQDTBhQkXkL6jntGcMT2GyD
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_004629_249285_BC074B2D 
X-CRM114-Status: GOOD (  14.10  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 00/12] ARM: Layerscape: LS1046a: switch to TF-A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Our LS1046a support still uses the long deprecated and binary-only PPA
secure monitor firmware. It's time to switch this over to TF-A. We do
not bother to keep the PPA support as it's long outdated and it would
also make the code code and barebox configuration unnecessarily
complicated.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Changes in v2:
- add missing FORCE in images/Makefile.layerscape
- drop -16 cargo cult when setting up a stack
- use pr_debug rather than printf
- add TF-A firmware to test/generate-dummy-fw.sh
- drop ppA firmware from test/generate-dummy-fw.sh
- update documentation
- disable CAAM JR3 for the kernel, it's used by TF-A
- Link to v1: https://lore.barebox.org/20241021-arm-layerscape-tfa-v1-0-0980697b6f66@pengutronix.de

---
Sascha Hauer (12):
      ARM: Layerscape: TQMLS1046a: Update DDR timings
      ARM: Layerscape: images: fix variable name
      ARM: Layerscape: images: add missing FORCE
      ARM: Layerscape: TQMLS1046a: add support for 8GiB variant
      ARM: Layerscape: ls1046ardb: remove unused variable
      ARM: Layerscape: remove register arguments
      ARM: Layerscape: LS1046a: add TF-A support
      ARM: Layerscape: LS1046a-rdb: Switch to TF-A support
      ARM: Layerscape: TQMLS1046a: Switch to TF-A support
      ARM: Layerscape: LS1046a: remove PPA support
      ARM: Layerscape: LS1046a: add PSCI node
      ARM: Layerscape: Update Documentation for TF-A

 Documentation/boards/layerscape.rst   |  13 +-
 arch/arm/boards/ls1021aiot/lowlevel.c |   6 +-
 arch/arm/boards/ls1046ardb/board.c    |   6 -
 arch/arm/boards/ls1046ardb/lowlevel.c |  29 ++-
 arch/arm/boards/ls1046ardb/start.S    |  14 +-
 arch/arm/boards/tqmls1046a/board.c    |  37 +++-
 arch/arm/boards/tqmls1046a/lowlevel.c | 327 ++++++++++++++++++++++++++++++----
 arch/arm/boards/tqmls1046a/start.S    |  19 +-
 arch/arm/dts/fsl-ls1046a.dtsi         |   5 +
 arch/arm/mach-layerscape/Kconfig      |  14 +-
 arch/arm/mach-layerscape/Makefile     |   2 +-
 arch/arm/mach-layerscape/ppa-entry.S  |  32 ----
 arch/arm/mach-layerscape/ppa.c        | 147 ---------------
 arch/arm/mach-layerscape/soc.c        |  32 ++++
 arch/arm/mach-layerscape/tfa.c        |  32 ++++
 arch/arm/mach-layerscape/xload-qspi.c |  19 +-
 arch/arm/mach-layerscape/xload.c      |  12 +-
 drivers/mci/imx-esdhc-pbl.c           |  13 +-
 firmware/Kconfig                      |   3 +
 firmware/Makefile                     |   2 +-
 images/Makefile.layerscape            |  36 ++--
 include/mach/layerscape/layerscape.h  |  11 +-
 include/mach/layerscape/xload.h       |  16 +-
 test/generate-dummy-fw.sh             |   2 +-
 24 files changed, 516 insertions(+), 313 deletions(-)
---
base-commit: dda64a15ea026c95ccd8bd8a8b70c7e070af1a15
change-id: 20241021-arm-layerscape-tfa-74bb4fe5713e

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




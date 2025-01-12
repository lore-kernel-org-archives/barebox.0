Delivery-date: Sun, 12 Jan 2025 09:35:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtR4-0007eF-2J
	for lore@lore.pengutronix.de;
	Sun, 12 Jan 2025 09:35:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtR4-0006wN-1L
	for lore@pengutronix.de; Sun, 12 Jan 2025 09:35:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dFE094nqcbxVne58waYWx35GNJMTKYhicigWI7363o8=; b=SLUwHPONddkfIpZoepUG8HHu+k
	yRV7OdyMcsbdI0BtY+mHmrXcbJ7s1RmQncWxC4BBX6LWNG/Iv8SunDRjAMUtPcL2JntJU78GB7nr0
	BIqyCn3u+6wUqwmd3t2DbzwgFR5lk9NSslgfvX2ORuSoytN/3ielDV67+MoWJcTurM8fwoxuPPS+d
	Vj4CaDN49Ouf7f4UBpMgXlMF3k3KJfMFvQ54llkF0bzo6Vob6QeWkUn7KU72XRT0s6pXKjbKjeNKJ
	4WiLzkfWT5gywoV8Wx0bgAiydU/VKe/6vy11bB+dCAbUmPxdFKubCoVBW5p2V5fEr8zLGVAuHS3DM
	OG1goROg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtQe-00000002Kun-1YnE;
	Sun, 12 Jan 2025 08:34:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtQa-00000002KtQ-3CkJ
	for barebox@lists.infradead.org;
	Sun, 12 Jan 2025 08:34:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQZ-0006gH-Ht; Sun, 12 Jan 2025 09:34:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQX-0003Np-0N;
	Sun, 12 Jan 2025 09:34:33 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQY-001LPJ-0p;
	Sun, 12 Jan 2025 09:34:33 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Felix Singer <felixsinger@posteo.net>
Date: Sun, 12 Jan 2025 09:34:19 +0100
Message-Id: <20250112083432.320215-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_003436_859692_ED3F14D0 
X-CRM114-Status: GOOD (  14.14  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/13] images: add barebox FIT image target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The generic barebox-dt-2nd.img depends on the user to fish out
the correct device tree from arch/${SRCARCH}/dts and to instruct
the preceding boot stage to pass that device tree to the barebox image.

To make this easier, especially with an eye towards using this as a
coreboot payload, let's have the barebox build system produce a FIT
image combining barebox-dt-2nd.img and all the enabled device trees.

As this introduces a python3 and python3-libfdt dependency that wasn't
there before, this is only built by default if CONFIG_BOARD_GENERIC_FIT
is enabled or make barebox.fit is explicitly invoked.

Ahmad Fatoum (13):
  ARM: dts: add device trees for the QEMU Virt machine
  treewide: collect the name of all board device trees
  kbuild: collect available device trees in dtbs-list
  scripts: add new scripts_dtc target
  kbuild: restrict dtbs target to enabled DTs by default
  kbuild: improve make help description
  kbuild: allow dependency on any file in images/
  arch: maintain Linux kernel and mkimage ARCH mapping in Kconfig
  arch: make BOARD_GENERIC_DT a user-selectable option across archs
  images: add barebox FIT image target
  MAKEALL: rename target in symbols to more appropiate defconfig
  MAKEALL: add support for building arbitrary targets
  ci: container: add python3-libfdt dependency for barebox.fit

 .gitignore                              |   1 +
 Documentation/devicetree/index.rst      |   4 +-
 Documentation/user/barebox.rst          |  31 +-
 MAKEALL                                 |  76 ++---
 Makefile                                |  47 ++-
 arch/Kconfig                            |  43 +++
 arch/arm/Kconfig                        |  15 +-
 arch/arm/configs/multi_v5_v6_defconfig  |   2 +-
 arch/arm/configs/rockchip_v7a_defconfig |   2 +-
 arch/arm/configs/rockchip_v8_defconfig  |   2 +-
 arch/arm/configs/rpi_defconfig          |   2 +-
 arch/arm/configs/stm32mp_defconfig      |   2 +-
 arch/arm/dts/Makefile                   |   3 +
 arch/arm/dts/qemu-virt32.dts            | 402 +++++++++++++++++++++++
 arch/arm/dts/qemu-virt64.dts            | 403 ++++++++++++++++++++++++
 arch/kvx/dts/Makefile                   |   4 +-
 arch/mips/Kconfig                       |   9 +
 arch/openrisc/Kconfig                   |   4 +
 arch/openrisc/dts/Makefile              |   2 +-
 arch/powerpc/Kconfig                    |   8 +
 arch/riscv/Kconfig                      |  19 +-
 arch/riscv/Kconfig.socs                 |   2 +-
 arch/riscv/configs/rv64i_defconfig      |   2 +-
 arch/sandbox/Kconfig                    |   4 +
 arch/sandbox/dts/Makefile               |   2 +-
 arch/x86/Kconfig                        |  10 +
 drivers/of/Kconfig                      |  11 +
 images/Makefile                         |   9 +
 scripts/Kbuild.include                  |   6 +
 scripts/Makefile                        |   3 +-
 scripts/Makefile.build                  |  11 +
 scripts/Makefile.dtbs                   |  32 ++
 scripts/Makefile.lib                    |  20 ++
 scripts/make_fit.py                     | 331 +++++++++++++++++++
 test/Containerfile                      |   1 +
 35 files changed, 1429 insertions(+), 96 deletions(-)
 create mode 100644 arch/arm/dts/qemu-virt32.dts
 create mode 100644 arch/arm/dts/qemu-virt64.dts
 create mode 100644 scripts/Makefile.dtbs
 create mode 100755 scripts/make_fit.py

-- 
2.39.5




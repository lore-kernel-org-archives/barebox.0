Delivery-date: Thu, 05 Jun 2025 14:45:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN9yb-0040yB-2i
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 14:45:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN9yZ-0005p5-E8
	for lore@pengutronix.de; Thu, 05 Jun 2025 14:45:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jmC2WBA76c4PtHdrN01rFRjRybZsAkK0X2AQNML4x/I=; b=IJBgDNUhVa7uKbPfzE5sLpw0Vg
	us3HSmKmIWUVkPkakQps9of0cJdJNDCk4jBU9Im/78cpLt99+0ZRSfto7MyDaOKRMdKDydEDZKEUN
	2FyHgo07lIMLTeqqos/HR4MTHNxW0BBrt7DaXpa3GWi0T/zlh2wTmnYY02+1TJy8CEa1TW0wvEOVk
	LJ9Ivu9jfevsIH0snYfLsNFRCIRb+EMKAES0rpmY5Bwam4e8NeTuSFP6ZTx0IwMe5iBKMtmLfW8No
	b6HVsCv8oaGA3ReEMbm8n7U/FaVbUfGYFCGfsbL9mGEf0hlraYH9oi69OgZOuRU1mTRT9quQhRcg3
	ky+Epv8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9xx-0000000FVKr-4Aen;
	Thu, 05 Jun 2025 12:45:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9vU-0000000FV3N-0N0k
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 12:42:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0003Ms-P0; Thu, 05 Jun 2025 14:42:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-001xgM-1c;
	Thu, 05 Jun 2025 14:42:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0024bQ-1P;
	Thu, 05 Jun 2025 14:42:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 05 Jun 2025 14:42:25 +0200
Message-Id: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALGQQWgC/1XMyw6CMBCF4Vchs3ZMLykFV76HYUHsFCZKIS0SD
 OHdrSQuXP4nOd8GiSJTgkuxQaSFE48hhzoVcO/b0BGyyw1KKCOMstjGAR8a26FUT/RWSGm9rq0
 3kC9TJM/rwd2a3D2neYzvQ1/kd/1B1T+0SBSofVVR6aRwdX2dKHSvOY6B17MjaPZ9/wDV7LoKr
 QAAAA==
X-Change-ID: 20250527-arm-k3-am62l-f70117f397f5
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749127350; l=6501;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=QfCC7XFZRHK1Fzpfzip+3afKWj6rmgB6p89L/TdTnmU=;
 b=Ds+yA15UCLcXf7cXlDgz+Y0YVc6aJQcKyRlnCviXjRlsXnlUvrCRSVY4MAQoqw204TDoYBRW9
 ojl5sgCJP1NAHf/zyEGMp01WUdOjVlRho+sD+2TiMN/R+RC/ZEcI4kk
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_054232_310200_C4F5AA19 
X-CRM114-Status: GOOD (  19.89  )
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
Subject: [PATCH v2 00/33] ARM: K3: add support for AM62L
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The AM62L is a new SoC from TI similar to the AM625, but still needs
some work to support it.

While the peripherals are quite similar to AM625, TI restructured the
startup process. Unlike the AM625 we no longer start on the Cortex-R5
core, but instead directly on the first Cortex A53 core. The SDRAM setup
is no longer part of barebox, but instead done in the TF-A. The initial
image is composed of a BL1 and several binary-only blobs. The second
stage is directly the BL31 image and our barebox image.

The dts(i) are not yet upstream, but currently posted for review, so we
need to import them into barebox for now. I hope this will be obsolete
soon.

The DMA driver needs some adjustments for the AM62L, patches for this
are taken from the TI downstrem U-Boot and the TI downstream Linux
repository.

The first board supported is the AM62L EVM board.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Changes in v2:
- Added AM62lx documentation
- rework k3img tool to be more flexible
- add OP-TEE support
- Link to v1: https://lore.barebox.org/20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de

---
Sascha Hauer (33):
      scripts/k3img: make more flexible
      images: K3: rename %.k3img target to %.k3_am62x_img
      ARM: K3: prepare support for other SoCs
      ARM: dts: add k3-am62l dts(i) files
      ARM: dts: am62l: Fix assigned-clock-parents
      ARM: K3: add am62lx base support
      ARM: Makefile: descend into mach-* for cleaning
      ARM: k3: rename yaml files from am625 to am62x
      firmware: add ti-linux-firmware submodule
      scripts/ti-board-config.py: fix length
      ARM: k3: add yaml files for AM62l
      k3: ringacc: pass ringrt address in struct k3_ringacc_init_data
      drivers: soc: ti: k3-ringacc: handle absence of tisci
      drivers: soc: ti: k3-ringacc: fix k3_ringacc_ring_reset_sci
      dma: ti: k3-psil: Add PSIL data for AM62L
      dma: ti: k3-udma: Refactor common bits for AM62L support
      dma: ti: k3-udma-common: Update common code for AM62L DMAs
      dma: ti: k3-udma-am62l: Add AM62L support DMA drivers
      ARM: dts: am62l: Add ethernet ports
      ARM: dts: am62l evm: Add ethernet ports
      ARM: k3: am62l: add barebox specific am62l.dtsi
      net: davinci_mdio: Use fallback clock rate
      firmware: arm_scmi: Add support for clock parents
      clk: add struct clk_parent_data
      clk: arm_scmi: implement clock parent setting
      ARM: dts: am62l3-evm: add MMC aliases
      dma: ti: k3-udma: limit asel to am625
      gpio: increase ARCH_NR_GPIOS to 512
      ARM: dts: k3-am62l: reserve memory for TF-A and OP-TEE
      ARM: k3: add AM62l3 EVM board support
      ARM: K3: am62l: add serial aliases
      Documentation: boards: k3: split generic and am62x specific documentation
      Documentation: boards: k3: add AM62lx documentation

 .gitmodules                                        |    3 +
 Documentation/boards/ti-k3-am62lx.rst              |   79 ++
 Documentation/boards/ti-k3-am62x.rst               |   99 ++
 Documentation/boards/ti-k3.rst                     |  109 +-
 arch/arm/Makefile                                  |    4 +-
 arch/arm/boards/Makefile                           |    1 +
 arch/arm/boards/am625-sk/board.c                   |    2 +-
 arch/arm/boards/am625-sk/lowlevel.c                |    2 +-
 arch/arm/boards/am62lx-evm/Makefile                |    1 +
 arch/arm/boards/am62lx-evm/lowlevel.c              |   37 +
 arch/arm/boards/beagleplay/lowlevel.c              |    2 +-
 arch/arm/dts/Makefile                              |    1 +
 arch/arm/dts/k3-am62l-barebox.dtsi                 |   45 +
 arch/arm/dts/k3-am62l-main.dtsi                    |  768 +++++++++++
 arch/arm/dts/k3-am62l-thermal.dtsi                 |   25 +
 arch/arm/dts/k3-am62l-wakeup.dtsi                  |  133 ++
 arch/arm/dts/k3-am62l.dtsi                         |  121 ++
 arch/arm/dts/k3-am62l3-evm.dts                     |  378 ++++++
 arch/arm/dts/k3-am62l3.dtsi                        |   67 +
 arch/arm/dts/k3-pinctrl.h                          |    7 +
 arch/arm/mach-k3/Kconfig                           |   14 +
 arch/arm/mach-k3/Makefile                          |   27 +-
 arch/arm/mach-k3/am62lx.c                          |  155 +++
 arch/arm/mach-k3/am62x.c                           |  256 ++++
 .../{board-cfg-am625.yaml => board-cfg-am62x.yaml} |    0
 arch/arm/mach-k3/common.c                          |  260 +---
 arch/arm/mach-k3/ddrss.c                           |   12 +-
 .../{pm-cfg-am625.yaml => pm-cfg-am62x.yaml}       |    0
 .../{rm-cfg-am625.yaml => rm-cfg-am62x.yaml}       |    0
 arch/arm/mach-k3/sec-cfg-am62l.yaml                |  379 ++++++
 .../{sec-cfg-am625.yaml => sec-cfg-am62x.yaml}     |    0
 drivers/clk/clk-scmi.c                             |   80 +-
 drivers/dma/ti/Makefile                            |    2 +-
 drivers/dma/ti/k3-psil-am62l.c                     |   50 +
 drivers/dma/ti/k3-psil-priv.h                      |    1 +
 drivers/dma/ti/k3-psil.c                           |    2 +
 drivers/dma/ti/k3-udma-am62l.c                     |  593 ++++++++
 drivers/dma/ti/k3-udma-common.c                    | 1188 ++++++++++++++++
 drivers/dma/ti/k3-udma-hwdef.h                     |    7 +
 drivers/dma/ti/k3-udma.c                           | 1434 +-------------------
 drivers/dma/ti/k3-udma.h                           |  357 +++++
 drivers/firmware/arm_scmi/clock.c                  |  179 ++-
 drivers/net/davinci_mdio.c                         |    9 +-
 drivers/soc/ti/k3-navss-ringacc.c                  |  161 ++-
 firmware/ti-linux-firmware                         |    1 +
 images/Makefile.k3                                 |  127 +-
 include/gpio.h                                     |    2 +-
 include/linux/clk.h                                |   13 +
 include/linux/scmi_protocol.h                      |    6 +
 include/mach/k3/common.h                           |    9 +-
 include/soc/ti/k3-navss-ringacc.h                  |    4 +
 scripts/k3img                                      |  182 +--
 scripts/ti-board-config.py                         |    5 +-
 53 files changed, 5425 insertions(+), 1974 deletions(-)
---
base-commit: 2d619db48e92bfe160684b5411697e6a59f4a620
change-id: 20250527-arm-k3-am62l-f70117f397f5

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




Delivery-date: Wed, 28 May 2025 13:48:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFGw-001AqL-33
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 13:48:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFGw-0004OR-8s
	for lore@pengutronix.de; Wed, 28 May 2025 13:48:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VOf1c0yVrsJEQVcEpo43Ia8NUA641Bd1WeQpPofIaqk=; b=uZ0kB0FU7vOyuueKUbQzWqJhXT
	XIMODrQLB1Q3upPLAhUuVIzv7TJpwH4hGTpzEZDDGLdhLnyHpfgzpQMVxCB64+QUjxJX9AGnyp6Q+
	f+jsZypyGl21Mcts6aQTcVGtGEBCBgdA6BCfhhyeDC6/zvh7gdO4T5lTiwdDR9SY5/D8vQa35qgnP
	y9GHSfi54uQyrHTY5U+6tXXvbbxL81u5NtWYXX3iQQXfxtZ0UqSTUr1aFg7Tql3guncRfAtIc+Um2
	FR2WrhhIMzxv7ejINbKq3LfQHr3rdwapVjf08BThCYGYn5Sa8Jv4/CNlRLppcZF6wqIhoWvmxYseM
	7zbFll9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFGR-0000000D0zL-1nH5;
	Wed, 28 May 2025 11:48:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFEK-0000000D0LX-0CIC
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 11:45:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-00021S-SE; Wed, 28 May 2025 13:45:38 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-000a7B-1e;
	Wed, 28 May 2025 13:45:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-00CB0R-1L;
	Wed, 28 May 2025 13:45:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 May 2025 13:45:12 +0200
Message-Id: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEn3NmgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDUyNz3cSiXN1sY93EXDOjHN00cwNDQ/M0Y0vzNFMloJaCotS0zAqwcdG
 xtbUANYCoxV4AAAA=
X-Change-ID: 20250527-arm-k3-am62l-f70117f397f5
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748432738; l=5835;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=hF3VkrKVnX98zzBWNQtebZJC5GFluy/9k+FwrVhgWyc=;
 b=WmpMUTjOfMkoSG5plNfvgVZED+STI19p+hj+rdxt5cy5g3u26s35f33aafsXkZpACDvwaAgkS
 EZpZRkzMSV8Bjymkch5V0AeEk17ayYRfyqQi5kZ0zC+gRcpNbbTIo9y
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_044556_095709_9BE6C4A6 
X-CRM114-Status: GOOD (  17.94  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/31] ARM: K3: add support for AM62L
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
Sascha Hauer (31):
      scripts: k3img: remove duplicate case value
      ARM: K3: prepare support for other SoCs
      ARM: k3: make k3img destination addresses configurable
      ARM: dts: add k3-am62l dts(i) files
      ARM: dts: am62l: Fix assigned-clock-parents
      ARM: K3: add am62lx base support
      ARM: Makefile: descend into mach-* for cleaning
      ARM: k3: rename yaml files from am625 to am62x
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
      ARM: dts: k3-am62l: reserve memory for TF-A
      scripts: k3img: make dmdata optional
      scripts: k3img: handle bootcore_opts
      ARM: k3: add AM62l3 EVM board support

 arch/arm/Makefile                                  |    4 +-
 arch/arm/boards/Makefile                           |    1 +
 arch/arm/boards/am625-sk/board.c                   |    2 +-
 arch/arm/boards/am625-sk/lowlevel.c                |    2 +-
 arch/arm/boards/am62lx-evm/Makefile                |    1 +
 arch/arm/boards/am62lx-evm/lowlevel.c              |   35 +
 arch/arm/boards/beagleplay/lowlevel.c              |    2 +-
 arch/arm/dts/Makefile                              |    1 +
 arch/arm/dts/k3-am62l-barebox.dtsi                 |   30 +
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
 images/Makefile.k3                                 |  113 +-
 include/gpio.h                                     |    2 +-
 include/linux/clk.h                                |   13 +
 include/linux/scmi_protocol.h                      |    6 +
 include/mach/k3/common.h                           |    9 +-
 include/soc/ti/k3-navss-ringacc.h                  |    4 +
 scripts/k3img                                      |   73 +-
 scripts/ti-board-config.py                         |    5 +-
 48 files changed, 5180 insertions(+), 1788 deletions(-)
---
base-commit: a123526affb9bb81e9d18f1260d4df350420a389
change-id: 20250527-arm-k3-am62l-f70117f397f5

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




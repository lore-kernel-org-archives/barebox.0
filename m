Delivery-date: Tue, 09 Jan 2024 17:17:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEmk-00AUHw-1D
	for lore@lore.pengutronix.de;
	Tue, 09 Jan 2024 17:17:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEmi-0000OB-24
	for lore@pengutronix.de; Tue, 09 Jan 2024 17:17:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=z5S8y60dcli0ZpEeentTJEq9dNRGhkHQCn8kqIaR33Q=; b=sFLgunOxbzR/2uh/JoIKmtVKK3
	jjkWqFxxNU8+Fg4xPJ9kEUfExabEjyNMceeQ05Kdo1SrNdkZT8ZpRewfXqFj9S3DcQlrc+udvHVvg
	KM0sDT8wMiFJlnkwa9+t70v3dEUDir20HosnyyraVe01qxICVNB7614TPlcVt9ndo0F/ul52IzGO+
	LDrgi5UGWcTvBCSCUCRSkguFb/63xNFMwOIydesTDrCl1KmFnxOFG7QW9Q7lHp0lV+8qiR1dK828A
	CU386AM9bx8/7Q6ZfR9ClnaEcbx6pLlA8Vm4bLcuOmd0Qx+RdwlFxZOqXUMPMSv1hxRkGc5nMb3fK
	HsrHuCPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElU-008nrc-1s;
	Tue, 09 Jan 2024 16:15:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElJ-008nig-2C
	for barebox@lists.infradead.org;
	Tue, 09 Jan 2024 16:15:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-0007l2-Sy; Tue, 09 Jan 2024 17:15:28 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-001WCI-EB; Tue, 09 Jan 2024 17:15:28 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-00E7P0-1D;
	Tue, 09 Jan 2024 17:15:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  9 Jan 2024 17:15:06 +0100
Message-Id: <20240109161527.3237581-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_081533_758453_EC59B472 
X-CRM114-Status: GOOD (  13.48  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 00/21] Add more Layerscape LS1028a stuff
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series has some additions to the recently merged LS1028a support.
Like on the LS1046a we have to fixup several iommu related device tree
properties to make DMA work under Linux. Also the upstream dts files do
not have a psci node, so add one in order to bring up the secondary CPU
core. This time we also have some little things like bootsource
detection, barebox update handler registration and MULTIARCH support for
Layerscape.

Sascha Hauer (20):
  memory: Fix reserve_sdram_region() return value
  ARM: Layerscape: consolidate initcalls into one
  ARM: Layerscape: LS1028a: reserve DDR region for TF-A
  ARM: Layerscape: icid: make readonly arrays const
  ARM: Layerscape: icid: rename functions
  ARM: Layerscape: icid: move re-usable code to separate functions
  ARM: Layerscape: icid: use of_property_write_u32_array() in
    of_set_iommu_prop()
  ARM: Layerscape: icid: use of_property_write_u32_array() in
    of_set_qportal_iommu_prop()
  ARM: Layerscape: icid: factor out setup_icid_offsets()
  immap_lsch3: Add more stuff
  ARM: Layerscape: LS1028a: fixup icids
  ARM: psci: make header self contained
  ARM: Layerscape: LS1028a: add psci node
  ARM: Layerscape: move over to MULTIARCH
  ARM: enable Layerscape boards in multi_v8_defconfig
  ARM: multi_v8_defconfig: disable CONFIG_MCI_STARTUP
  clk: layerscape: increase PLL divider array
  ARM: Layerscape: LS1028a: implement bootsource detection
  ARM: Layerscape: LS1028a: extend layerscape image filetype detection
    for LS1028a
  ARM: Layerscape: LS1028a: Add barebox update handler

Uwe Kleine-König (1):
  ARM: Layerscape: add basic support for NXP LS1028a RDB

 arch/arm/Kconfig                              |  27 +-
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/ls1028ardb/Makefile           |   5 +
 arch/arm/boards/ls1028ardb/board.c            |  45 +++
 arch/arm/boards/ls1028ardb/lowlevel.c         | 142 +++++++
 arch/arm/boards/ls1028ardb/ls1028ardb_pbi.cfg |  14 +
 .../boards/ls1028ardb/ls1028ardb_rcw_sd.cfg   |  14 +
 arch/arm/boards/ls1028ardb/start.S            |  19 +
 arch/arm/configs/layerscape_defconfig         |   6 +-
 arch/arm/configs/multi_v8_defconfig           |  14 +-
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/fsl-ls1028a-rdb.dts              |  59 +++
 arch/arm/dts/fsl-ls1028a.dtsi                 |   7 +
 arch/arm/include/asm/psci.h                   |   2 +
 arch/arm/mach-layerscape/Kconfig              |  15 +-
 arch/arm/mach-layerscape/boot.c               |  53 ++-
 arch/arm/mach-layerscape/icid.c               | 379 ++++++++++++++----
 arch/arm/mach-layerscape/ls102xa_stream_id.c  |   8 +-
 arch/arm/mach-layerscape/pblimage.c           |   6 +-
 arch/arm/mach-layerscape/restart.c            |   8 +-
 arch/arm/mach-layerscape/soc.c                | 101 +++++
 common/filetype.c                             |   2 +
 common/memory.c                               |   4 +-
 drivers/clk/clk-qoric.c                       |   3 +-
 drivers/mci/imx-esdhc-pbl.c                   |   3 +-
 images/Makefile.layerscape                    |   9 +
 include/mach/layerscape/bbu.h                 |   8 +
 include/mach/layerscape/layerscape.h          |  41 ++
 include/soc/fsl/immap_lsch3.h                 | 119 ++++++
 29 files changed, 996 insertions(+), 119 deletions(-)
 create mode 100644 arch/arm/boards/ls1028ardb/Makefile
 create mode 100644 arch/arm/boards/ls1028ardb/board.c
 create mode 100644 arch/arm/boards/ls1028ardb/lowlevel.c
 create mode 100644 arch/arm/boards/ls1028ardb/ls1028ardb_pbi.cfg
 create mode 100644 arch/arm/boards/ls1028ardb/ls1028ardb_rcw_sd.cfg
 create mode 100644 arch/arm/boards/ls1028ardb/start.S
 create mode 100644 arch/arm/dts/fsl-ls1028a-rdb.dts
 create mode 100644 arch/arm/dts/fsl-ls1028a.dtsi

-- 
2.39.2




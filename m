Delivery-date: Mon, 17 Feb 2025 19:23:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk5m3-003aOo-1x
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 19:23:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk5m0-0003Td-34
	for lore@pengutronix.de; Mon, 17 Feb 2025 19:23:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eWmpileinEpe/o2p7RgpuU6ToAcZpcF3dFxodRjG3GY=; b=yeALdQ5RZqf1jsDP749vr3tRrx
	+7bQBAX3D54uJx9g+NSxk0X71D8UrS0I2BVKYBZb9CFx8AXr8lZgzTwKxs+Ie4SNNvS0i1YtiZB/f
	PhXQl4n2mofXQupqq9eA/Yxcf8N6yyZUgTUhFyX0momn3C7EW4DbJm6GyiM9grqbM8CRkSjAlEQhT
	6Lumc6U40gWPave5fNZFVDScFSR4JLVflMDL//hde8YSK7597qgtILXbOoGZ1Sbpf84/g6OFVQfR2
	KDHZPLq6DqAmR1z6DF9PcImBsgKK/8NcMhY9V+wlhXRupGI6iNfVz0USRo+GFm8XkxX6XDegdfjIb
	j+29WWSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5lJ-00000005aZr-04Cw;
	Mon, 17 Feb 2025 18:22:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5Xq-00000005YxJ-09nh
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 18:08:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Xm-00011B-5c
	for barebox@lists.infradead.org; Mon, 17 Feb 2025 19:08:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Xl-001S7X-3C
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 19:08:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Xl-00Gc9q-2t
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 19:08:33 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 17 Feb 2025 19:08:27 +0100
Message-Id: <20250217180833.3955657-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_100838_080090_F8B858D1 
X-CRM114-Status: UNSURE (   9.37  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/6] of: partition: add Linux CONFIG_OF_PARTITION-compatible adaptive fixup mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox has for many years supported a superset of the upstream OF
partitions binding by parsing partitions out of SD/eMMC and EEPROM
in addition to MTD.

Unfortunately, we didn't upstream our binding and a different binding
went upstream into Linux v6.13-rc1 along with Linux commit
2e3a191e89f9 ("block: add support for partition table defined in OF").

Since then, if CONFIG_OF_PARTITION, which is disabled by default, is
enabled, Linux will ignore any GPT/MBR if an SD/eMMC node has a
fixed-partitions compatible subnode.

This is different from the barebox behavior, which allows both OF
partitions and GPT/MBR to co-exist as long as they don't conflict.

As many barebox boards:

  - Place the environment in non-partitioned space prior to the first
    partition

  - Fixup all fixed-partitions into the kernel device tree by default

this can result in breakage if a newer kernel is booted with
CONFIG_OF_PARTITION enabled.

To resolve this, this series introduces the barebox,fixed-partitions
compatible and uses that in Linux device tree fixups for SD/eMMC
by default.

Ahmad Fatoum (6):
  of: factor out of_node_is_fixed_partitions check
  of: of_path: support barebox,fixed-partitions
  ARM: IMX8MP: var-dart-dt8mcustomboard.dts: use new-style partition
    binding
  ARM: dts: prefix all non-MTD fixed-partitions with barebox,
  of: partition: refactor of_partition_binding checks into switch
  of: partition: add Linux CONFIG_OF_PARTITION-compatible adaptive fixup
    mode

 .../devicetree/bindings/mtd/partition.rst     | 27 +++++++-
 Documentation/user/state.rst                  |  4 +-
 arch/arm/dts/am335x-phytec-state.dtsi         |  2 +-
 .../dts/fsl-ls1046a-tqmls1046a-mbls10xxa.dts  |  2 +-
 arch/arm/dts/imx50-kindle-common.dtsi         |  2 +-
 arch/arm/dts/imx51-zii-rdu1.dts               |  2 +-
 arch/arm/dts/imx6dl-colibri-iris.dts          |  2 +-
 arch/arm/dts/imx6qdl-phytec-mira.dtsi         |  2 +-
 arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi  |  2 +-
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi  |  2 +-
 arch/arm/dts/imx6qdl-phytec-state.dtsi        |  2 +-
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi            |  2 +-
 arch/arm/dts/imx6ul-liteboard.dts             |  4 +-
 arch/arm/dts/imx6ul-phytec-state.dtsi         |  2 +-
 arch/arm/dts/imx6ul-tqma6ul-common.dtsi       |  4 +-
 arch/arm/dts/imx6ul-webasto-ccbv2.dts         |  2 +-
 arch/arm/dts/imx6ul-webasto-marvel.dts        |  2 +-
 arch/arm/dts/imx7d-ac-sxb.dtsi                |  4 +-
 arch/arm/dts/imx7d-flex-concentrator-mfg.dts  |  2 +-
 arch/arm/dts/imx7d-gome-e143_01.dts           |  2 +-
 arch/arm/dts/imx7d-phyboard-zeta.dts          |  2 +-
 arch/arm/dts/imx7s-warp.dts                   |  2 +-
 arch/arm/dts/imx8mm-innocomm-wb15-evk.dts     |  4 +-
 arch/arm/dts/imx8mm-phyboard-polis-rdk.dts    |  4 +-
 arch/arm/dts/imx8mp-debix-model-a.dts         |  4 +-
 arch/arm/dts/imx8mp-debix-som-a-bmb-08.dts    |  4 +-
 arch/arm/dts/imx8mp-karo-qsxp-ml81.dtsi       |  2 +-
 .../dts/imx8mp-var-dart-dt8mcustomboard.dts   | 25 ++++----
 arch/arm/dts/rk3566-cm3-io.dts                |  4 +-
 arch/arm/dts/rk3566-pinetab2.dtsi             |  4 +-
 arch/arm/dts/rk3568-bpi-r2-pro.dts            |  4 +-
 arch/arm/dts/rk3568-evb1-v10.dts              |  4 +-
 arch/arm/dts/rk3568-mecsbc.dts                |  4 +-
 arch/arm/dts/rk3568-rock-3a.dts               |  4 +-
 arch/arm/dts/rk3568-wolfvision-pf5.dts        |  2 +-
 arch/arm/dts/rk3588-orangepi-5-plus.dts       |  4 +-
 arch/arm/dts/rk3588-rock-5b.dts               |  4 +-
 arch/arm/dts/socfpga_arria10_achilles.dts     |  2 +-
 arch/arm/dts/socfpga_arria10_mercury_aa1.dts  |  2 +-
 arch/arm/dts/state-example.dtsi               |  4 +-
 drivers/of/base.c                             |  6 +-
 drivers/of/of_path.c                          |  9 ++-
 drivers/of/partition.c                        | 62 ++++++++++++-------
 include/of.h                                  |  6 ++
 44 files changed, 149 insertions(+), 96 deletions(-)

-- 
2.39.5




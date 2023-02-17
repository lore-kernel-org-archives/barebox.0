Delivery-date: Fri, 17 Feb 2023 18:32:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4ap-00AI2d-Kt
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 18:32:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4ao-0004iU-6t
	for lore@pengutronix.de; Fri, 17 Feb 2023 18:32:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8UtRgpE8aW5k4wxpr19/arKfeAFG6dhMnh075s0U9sw=; b=lDeg/WeipNqwFUR3OxEpWsSb5h
	g55nlTgxQ4ZJXJ3ED47cMlu8cI0ExFdt14Sv86uMgVZjvpU3/cG/WMT8b54hhKXk94N4dvABSMN7W
	RvZ/6T4+R5ef3AJA2M3y/PA9e8OfiWMQmKUHze1+S44sZHzT0y1A61XDpIdDUoKKzpiOaVG9UTlFr
	kW7OL5G8oWE1k4fUYScUBPqakcb9cKW0ndJlYrVb7NwneJGprB2oq6EC3yAUexBScsRwd4zRonQdV
	Okx7jVbt9lJVOhFKeCD/DYlNOmNseqcKrV49iDrTTewSTgbxgiA8+Gpk4KgrxiftHgYzGQXGvqBoC
	ZpjQkxmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4a2-00FFTd-C0; Fri, 17 Feb 2023 17:31:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4Zb-00FFFt-7R
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 17:31:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4Za-0004C1-2m
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 18:31:02 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZY-005dTV-2d
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 18:31:01 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZV-007ixN-SV
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 18:30:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 17 Feb 2023 18:30:37 +0100
Message-Id: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_093103_297450_D1AFA541 
X-CRM114-Status: GOOD (  11.90  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 00/20] dts: avoid DT breakage new fancy DTC v1.7.0 syntax
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The fresh v1.7.0 release of the device tree compiler now contains
fancy new syntax:

  &{i2c1/at24@50} {
	partitions {
		/* something */
	};
  };

instead of &{/soc/bus1/bus2/i2c@12345678/at24@50}, which is overly
verbose or &i2c1 { at24@50 }, which will break once someone renames
it upstream to please the schema checker.

Let's update to this new DTC release and change a lot of non-portable DT
we have to use this new syntax or use existing labels if available or
just absolute paths. This also fixes some breakage, but most of it is
future-proofing.

I did some build testing and fixed the fallout, but Sascha's build of all
configs may turn up some breakage too, which I would fix for v2.

Ahmad Fatoum (20):
  scripts/dtc: Update to upstream version v1.7.0
  scripts/dtc: update-dts-source.sh: don't fail if libfdt/ exists
  Documentation: devicetree: describe new label-relative-path syntax
  ARM: dts: use DT labels instead of paths where possible
  MIPS: dts: ath79: ar9331: use path references when extending nodes
  ARM: dts: tegra: switch to path and label references
  ARM: i.MX51: ccmx51: support newer device trees
  ARM: i.MX6: gw54xx: rename watchdog nodes
  ARM: i.MX6: karo-tx6x: fix now renamed DT nodes
  ARM: dts: zii: use phandle-relative paths for extending nodes
  ARM: dts: AT91: use label-relative paths for extending nodes
  ARM: dts: Layerscape: drop unneeded EEPROM node overriding
  ARM: dts: Layerscape: use label-relative paths references
  ARM: dts: vf610-zii-cfu1: remove duplicate LED
  ARM: dts: i.MX53: ccxmx53: remove unused /memory
  ARM: dts: i.MX: use label-relative references
  ARM: dts: i.MX: delete now renamed memory nodes as well.
  ARM: dts: socfpga: cut down on NAND node duplication
  ARM: dts: i.MX8MN: evk: use upstream flash node definition
  ARM: dts: i.MX8MN: evk: reduce duplication in barebox-added nodes

 Documentation/devicetree/index.rst            |   45 +-
 arch/arm/boards/ccxmx51/ccxmx51.c             |    8 +-
 arch/arm/boards/gateworks-ventana/board.c     |    5 +
 arch/arm/boards/karo-tx6x/board.c             |    4 +-
 arch/arm/dts/armada-370-mirabox-bb.dts        |    2 +-
 arch/arm/dts/armada-370-rn104-bb.dts          |    2 +-
 arch/arm/dts/armada-385-turris-omnia-bb.dts   |    2 +-
 arch/arm/dts/armada-xp-db-bb.dts              |    2 +-
 arch/arm/dts/armada-xp-gp-bb.dts              |    2 +-
 .../arm/dts/armada-xp-openblocks-ax3-4-bb.dts |    2 +-
 arch/arm/dts/armada-xp-rn2120-bb.dts          |    2 +-
 arch/arm/dts/at91-sama5d27_som1.dtsi          |    2 +-
 arch/arm/dts/at91-sama5d27_som1_ek.dts        |    3 +-
 arch/arm/dts/at91-skov-arm9cpu.dts            |    8 +-
 arch/arm/dts/at91sam9263ek.dts                |   46 +-
 arch/arm/dts/fsl-ls1046a-rdb.dts              |   35 +-
 arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts     |   16 +-
 arch/arm/dts/imx50.dtsi                       |    2 +-
 arch/arm/dts/imx51-genesi-efika-sb.dts        |    7 +-
 arch/arm/dts/imx51-zii-rdu1.dts               |  151 +-
 arch/arm/dts/imx53-ccxmx53.dtsi               |    7 -
 arch/arm/dts/imx6qdl-nitrogen6x.dtsi          |    6 +-
 arch/arm/dts/imx6qdl-prti6q-nor.dtsi          |   14 +-
 arch/arm/dts/imx6qdl-skov-imx6.dtsi           |   42 +-
 arch/arm/dts/imx6qdl-tx6x.dtsi                |    6 +-
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi            |   59 +-
 arch/arm/dts/imx6sx-udoo-neo-full.dts         |    5 +-
 arch/arm/dts/imx6ul-prti6g.dts                |   14 +-
 arch/arm/dts/imx7d-ddrc.dtsi                  |    6 +-
 arch/arm/dts/imx7d-zii-rmu2.dts               |   49 +-
 arch/arm/dts/imx8mm-evkb.dts                  |    4 +-
 arch/arm/dts/imx8mn-evk.dts                   |   83 -
 arch/arm/dts/imx8mn-evk.dtsi                  |   16 +-
 arch/arm/dts/imx8mq-zii-ultra.dtsi            |   38 +-
 arch/arm/dts/socfpga_arria10_achilles.dts     |    8 +-
 arch/arm/dts/socfpga_arria10_mercury_aa1.dts  |    8 +-
 arch/arm/dts/socfpga_cyclone5_socdk.dts       |   20 +-
 arch/arm/dts/socfpga_cyclone5_socrates.dts    |   69 +-
 arch/arm/dts/tegra124.dtsi                    |   58 +-
 arch/arm/dts/tegra20-colibri-iris.dts         |   98 +-
 arch/arm/dts/tegra20.dtsi                     |    8 +-
 arch/arm/dts/tegra30-beaver.dts               | 1442 ++++++++---------
 arch/arm/dts/tegra30.dtsi                     |    8 +-
 arch/arm/dts/vf610-ddrmc.dtsi                 |    4 +-
 arch/arm/dts/vf610-zii-cfu1.dts               |    6 -
 .../mips/dts/ar9331-dptechnics-dpt-module.dts |   16 +-
 arch/mips/dts/ar9331.dtsi                     |   12 +-
 scripts/dtc/checks.c                          |  293 +++-
 scripts/dtc/data.c                            |    6 +-
 scripts/dtc/dtc-lexer.l                       |    4 +-
 scripts/dtc/dtc-parser.y                      |   32 +-
 scripts/dtc/dtc.c                             |    6 +-
 scripts/dtc/dtc.h                             |   79 +-
 scripts/dtc/fdtget.c                          |   15 +-
 scripts/dtc/flattree.c                        |   21 +-
 scripts/dtc/fstree.c                          |    2 +-
 scripts/dtc/libfdt/Makefile.libfdt            |    2 +-
 scripts/dtc/libfdt/fdt.c                      |  144 +-
 scripts/dtc/libfdt/fdt.h                      |    4 +-
 scripts/dtc/libfdt/fdt_addresses.c            |    2 +-
 scripts/dtc/libfdt/fdt_overlay.c              |   34 +-
 scripts/dtc/libfdt/fdt_ro.c                   |  175 +-
 scripts/dtc/libfdt/fdt_rw.c                   |   64 +-
 scripts/dtc/libfdt/fdt_strerror.c             |    5 +-
 scripts/dtc/libfdt/fdt_sw.c                   |   50 +-
 scripts/dtc/libfdt/fdt_wip.c                  |    2 +-
 scripts/dtc/libfdt/libfdt.h                   |  175 +-
 scripts/dtc/libfdt/libfdt_internal.h          |  145 +-
 scripts/dtc/livetree.c                        |   47 +-
 scripts/dtc/srcpos.c                          |    2 +-
 scripts/dtc/treesource.c                      |   56 +-
 scripts/dtc/update-dtc-source.sh              |    2 +-
 scripts/dtc/util.c                            |   18 +-
 scripts/dtc/util.h                            |    9 +-
 scripts/dtc/version_gen.h                     |    2 +-
 scripts/dtc/yamltree.c                        |   24 +-
 76 files changed, 2132 insertions(+), 1740 deletions(-)

-- 
2.30.2




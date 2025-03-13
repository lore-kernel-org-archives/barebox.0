Delivery-date: Thu, 13 Mar 2025 08:49:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdJP-00DTcB-31
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 08:49:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdJO-0008HQ-G5
	for lore@pengutronix.de; Thu, 13 Mar 2025 08:49:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rGO9dl58awFp70YEkOb0YoXdd9xxP7H1iQDNBOO9U6I=; b=PnsqSOcX+KHFm0xQedW/syOFYN
	s+fOjEs3Gvj1CchDT96h7pAmASrKebQ+ZNEl/ksfaZbOTn/tt7e1bqTwM2wGDqvURXu6Oxt2M1Gr9
	WiU5SAWIzU2sbqg/1PL2mxAzY7hiq+YFHnl9PvDy+4J28X/20Tufy5Z6UMfGF+DRExi0m4fmoLmiz
	Ql8MBqYUte5PtQkdij3uPRecbdDp0jmeg6SvK8/+9yFHgOdQoikD6HqQei6FoyooluweD05f/gAUJ
	8hrkwSqboAyJvFqrZAHnXCPIgwfrPC/9VdpaCq+vyNnx6YpnJXBKy+pd64YSJ2EJ2SKHPnc6M/k/O
	6gJebUdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsdIx-0000000AQc4-1V1h;
	Thu, 13 Mar 2025 07:48:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsd5j-0000000AOUi-1wzP
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 07:34:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd5i-0005mN-6w
	for barebox@lists.infradead.org; Thu, 13 Mar 2025 08:34:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd5i-005Uva-03
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 08:34:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd5h-003pwb-2x
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 08:34:53 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 13 Mar 2025 08:34:23 +0100
Message-Id: <20250313073445.764875-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_003455_509716_26180331 
X-CRM114-Status: UNSURE (   9.72  )
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
Subject: [PATCH 00/22] add support for clang-analyzer with scan-build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With the changes, it's now possible to build barebox for sandbox
with allyesconfig with clang under scan-build with:

  export LLVM=-19 # or whatever your clang suffix is if you've one
  scan-build${LLVM} --use-cc=clang${LLVM} make

For this build to run to completion, a number of things that clang
treats as errors need to be resolved as well, which is included
in this series.

Ahmad Fatoum (22):
  kbuild: add support for clang-analyzer with scan-build
  soc: ti: k3-navss-ringacc: fix COMPILE_TEST link error
  treewide: fix missing headers in sandbox allyesconfig
  drivers: don't cast pointer directly to enum
  firmware: arm_scmi: smc: compile only for ARM
  video: stm32-ltdc: fix printing uninitialized variable
  usb: core: remove unnecessary comparison
  ddr_spd: fix always true sub-condition
  hush: fix make_string behavior on empty strings
  nvmem: fix clang-analyzer false-positive use of uninitialized value
  string: initialize string array in string selftest
  commands: ubsan: hide zero division in test
  crypto: ecc: fix clang-analyzer warning about NULL dereference
  mci_spi: fix possible use of uninitialized variable
  mtd: have mtd_read populate retlen always
  of: fdt: silence possible static analyzer false positive
  ubi: workaround zero division on malformed input in ubi_assert
  video: Rockchip: fix zero division in rk3588_calc_cru_cfg
  lib: scatterlist: don't assert last element for empty sglist
  scripts: omap3-usb-loader: fix clang-analyzer false-positive
  clk: analogbits: wrpll-cln28hpc: bail out before zero division
  watchdog: stm32_iwdg: bail out before zero division

 Makefile                                   |  9 +++++++++
 commands/ubsan.c                           |  2 ++
 common/ddr_spd.c                           |  6 ++----
 common/hush.c                              |  4 ++++
 crypto/ecc.c                               |  2 ++
 drivers/aiodev/lm75.c                      |  2 +-
 drivers/clk/analogbits/wrpll-cln28hpc.c    |  3 +++
 drivers/dma/ti/Kconfig                     |  6 ++++++
 drivers/dma/ti/k3-udma.c                   |  2 +-
 drivers/firmware/arm_scmi/Kconfig          |  1 +
 drivers/mci/mci_spi.c                      |  2 +-
 drivers/mfd/tps65219.c                     |  1 +
 drivers/mtd/core.c                         |  9 ++++-----
 drivers/mtd/ubi/build.c                    |  3 ++-
 drivers/net/ksz8864rmn.c                   |  2 +-
 drivers/nvmem/core.c                       |  2 +-
 drivers/of/fdt.c                           |  3 +++
 drivers/pmdomain/ti/ti-k3.c                |  1 +
 drivers/regulator/fan53555.c               |  2 +-
 drivers/regulator/tps65219-regulator.c     |  1 +
 drivers/soc/Makefile                       |  2 +-
 drivers/soc/ti/Kconfig                     | 11 +++++++++++
 drivers/soc/ti/Makefile                    |  4 +++-
 drivers/soc/ti/k3-navss-ringacc.c          |  1 +
 drivers/usb/core/common.c                  |  2 +-
 drivers/video/rockchip/rockchip_drm_vop2.c |  6 +++---
 drivers/video/stm32_ltdc.c                 |  6 ++----
 drivers/watchdog/stm32_iwdg.c              |  3 +++
 lib/scatterlist.c                          |  2 +-
 scripts/omap3-usb-loader.c                 |  9 ++++++---
 test/self/string.c                         |  2 +-
 31 files changed, 80 insertions(+), 31 deletions(-)

-- 
2.39.5




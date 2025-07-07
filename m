Delivery-date: Mon, 07 Jul 2025 13:55:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uYkRe-00F0zz-30
	for lore@lore.pengutronix.de;
	Mon, 07 Jul 2025 13:55:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uYkRc-0002lL-Rv
	for lore@pengutronix.de; Mon, 07 Jul 2025 13:55:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EJ5eCJFq9xvj85PPcV2+ols1jsEGmk6DWVLesrjXWNA=; b=R/ELS2Hu4av364
	+v5FvqkkmpsyEuaUwYcx3D3xgTM+fT82abea7MS+cKEPneecj5N6rhil3YGUpKFnk8om3oL6WXYm1
	75NfYKPlWFRgnad31L0jVh5ghTOInFw2GA16iMt4Lmznh0kaJPf0YAeiViiT/lTYM4gj5VHz6xsOC
	1miDwARYwYkFiWFXDHJgDxVD16BuyOfBpkJVaw/MANHUOmEEoPOOKhsFH9ZvQakaSZvicJ9gNh6Tj
	o6zbQGHb03TXG8FbDsUel1tghIJdDWx6Z2sZMVSfuNsykWO63ahUmyGjJX2hDa46rA72KY/OIDGiG
	rmP+pq68GbXjEe2w9Gqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYkQp-00000002LRT-0NA5;
	Mon, 07 Jul 2025 11:54:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYjvx-00000002Gdt-0nRh
	for barebox@lists.infradead.org;
	Mon, 07 Jul 2025 11:22:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1uYjvu-0001uY-Ii; Mon, 07 Jul 2025 13:22:50 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 07 Jul 2025 13:22:42 +0200
Message-Id: <20250707-v2024-10-0-topic-socfpga-agilex5-v4-0-af7ee9182480@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAKua2gC/5XNQWrDMBAF0KsErasyGtmWnVXvEbqwpJEzUCwju
 cIh+O6VA6WLdpHu5s+H9+8iU2LK4ny6i0SFM8e5hublJNx1nCeS7GsWCNgowEGW45IKJMg1Lux
 kji4s0yjHiT9oa6WD3ljrjDemEZVZEgXeHhOX95qvnNeYbo/Foo7vP/CiajV0PqA3fvSheVton
 j7XFGfeXj2JY6Hgt9oCqv4JFWulwXahBdMrsH+q+kftUD+h6lrR4GkgrSw69Uvd9/0LtxJlh4E
 BAAA=
X-Change-ID: 20241029-v2024-10-0-topic-socfpga-agilex5-c087bbc7d774
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250707_042253_235347_DC70490C 
X-CRM114-Status: GOOD (  15.42  )
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
Subject: [PATCH v4 00/10] ARM: SoCFPGA: Add initial support for Agilex5
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds basic support for the Altera Agilex5 SoCFPGA series.
Currently only booting from QSPI is supported. Flashing the image to the
QSPI has to be done with quartus_pgm, therefore there are still some
essential things left to have proper support for this platform.

Nevertheless it boots from QSPI and starts linux on the included
Arrow AXE5 board.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Changes in v4:
- add commit hash and url for origin of agilex5 code
- cleanup xstrdup/xzalloc/kzalloc usage
- agilex5 clock support
  - dev_get_resource -> dev_request_mem_resource
  - core_initcall -> core_platform_driver
  - minor cleanups
- xgmac
  - return proper error code in xgmac_read_rom_hwaddr
  - don't use DMA_DEVICE_BROKEN in dma_alloc_coherent
  - unmap before free
- Link to v3: https://lore.barebox.org/20250623-v2024-10-0-topic-socfpga-agilex5-v3-0-e9de9e31b2c1@pengutronix.de

Changes in v3:
- use phydev_dbg in adin.c
- cleanup debugging leftovers in clk driver
- xgmac: fixup edev to priv conversion
- xgmac: code cleanup
- xgmac: switch to gpiod API
- fix uart setup; didn't work without DEBUG_LL
- Link to v2: https://lore.barebox.org/20250218-v2024-10-0-topic-socfpga-agilex5-v2-0-30b6f507810b@pengutronix.de

Changes in v2:
- reorder patches
- rebase to v2025.01.0
- rework xgmac to use correct DMA buffers
- fix variable/functions scopes by adding name prefixes
- add pr_fmt where necessary
- axe5: board: convert from postcore_initcall to device_platform_driver
- Link to v1: https://lore.barebox.org/20241029-v2024-10-0-topic-socfpga-agilex5-v1-0-96df2d7dadf4@pengutronix.de

---
Steffen Trumtrar (10):
      ARM: socfpga: kconfig: sort entries
      mach: socfpga: debug_ll: rework putc_ll
      reset: reset-socfpga: build only for 32-bit socfpga
      arm: socfgpa: add support for SoCFPGA Agilex5
      clk: support init->parent_data
      linux: clk: add fw_name
      clk: socfpga: add agilex5 clock support
      net: phy: add Analog Devices ADIN1300
      net: add support for Designware XGMAC (10gb) ethernet
      ARM: socfpga: add Arrow AXE5 Agilex5 board

 arch/arm/Kconfig                              |   3 -
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/arrow-axe5-eagle/Makefile     |   3 +
 arch/arm/boards/arrow-axe5-eagle/board.c      |  24 +
 arch/arm/boards/arrow-axe5-eagle/lowlevel.c   |  83 +++
 arch/arm/configs/socfpga-agilex5_defconfig    |  81 +++
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/socfpga_agilex5.dtsi             |  51 ++
 arch/arm/dts/socfpga_agilex5_axe5_eagle.dts   |  92 +++
 arch/arm/mach-socfpga/Kconfig                 |  57 +-
 arch/arm/mach-socfpga/Makefile                |  13 +
 arch/arm/mach-socfpga/agilex5-clock-manager.c | 383 ++++++++++++
 arch/arm/mach-socfpga/agilex5-sdram.c         | 347 +++++++++++
 arch/arm/mach-socfpga/agilex5-secreg.c        | 289 +++++++++
 arch/arm/mach-socfpga/arria10-init.c          |   2 +-
 arch/arm/mach-socfpga/atf.c                   |  34 ++
 arch/arm/mach-socfpga/cpu_init.c              |  43 ++
 arch/arm/mach-socfpga/cyclone5-init.c         |   2 +-
 arch/arm/mach-socfpga/iossm_mailbox.c         | 511 ++++++++++++++++
 arch/arm/mach-socfpga/iossm_mailbox.h         | 157 +++++
 arch/arm/mach-socfpga/mailbox_s10.c           | 347 +++++++++++
 arch/arm/mach-socfpga/secure_reg_helper.c     |  75 +++
 arch/arm/mach-socfpga/smc_api.c               |  43 ++
 arch/arm/mach-socfpga/soc64-system-manager.c  | 102 ++++
 arch/arm/mach-socfpga/soc64-wrap-handoff.c    | 124 ++++
 common/Kconfig.debug_ll                       |  17 +
 drivers/clk/clk.c                             |  49 +-
 drivers/clk/socfpga/Makefile                  |   4 +-
 drivers/clk/socfpga/clk-agilex5.c             | 829 +++++++++++++++++++++++++
 drivers/clk/socfpga/clk-gate-s10.c            | 178 ++++++
 drivers/clk/socfpga/clk-periph-s10.c          | 157 +++++
 drivers/clk/socfpga/clk-pll-s10.c             | 137 +++++
 drivers/clk/socfpga/clk.h                     |   9 +
 drivers/clk/socfpga/stratix10-clk.h           |  73 +++
 drivers/net/Kconfig                           |  18 +
 drivers/net/Makefile                          |   2 +
 drivers/net/designware_xgmac.c                | 837 ++++++++++++++++++++++++++
 drivers/net/designware_xgmac.h                | 296 +++++++++
 drivers/net/designware_xgmac_socfpga.c        | 156 +++++
 drivers/net/phy/Kconfig                       |   7 +
 drivers/net/phy/Makefile                      |   1 +
 drivers/net/phy/adin.c                        | 362 +++++++++++
 drivers/reset/Kconfig                         |   6 +
 drivers/reset/Makefile                        |   2 +-
 firmware/Kconfig                              |   3 +
 firmware/Makefile                             |   1 +
 images/Makefile.socfpga                       |  17 +
 include/linux/clk.h                           |   2 +
 include/mach/socfpga/agilex5-clk.h            | 266 ++++++++
 include/mach/socfpga/atf.h                    |  14 +
 include/mach/socfpga/debug_ll.h               |  44 +-
 include/mach/socfpga/generic.h                |   3 +
 include/mach/socfpga/init.h                   |   2 +
 include/mach/socfpga/intel-smc.h              | 545 +++++++++++++++++
 include/mach/socfpga/mailbox_s10.h            | 191 ++++++
 include/mach/socfpga/secure_reg_helper.h      |  19 +
 include/mach/socfpga/smc_api.h                |  12 +
 include/mach/socfpga/soc64-firewall.h         | 177 ++++++
 include/mach/socfpga/soc64-handoff.h          |  50 ++
 include/mach/socfpga/soc64-regs.h             | 195 ++++++
 include/mach/socfpga/soc64-reset-manager.h    |  40 ++
 include/mach/socfpga/soc64-sdram.h            | 203 +++++++
 include/mach/socfpga/soc64-system-manager.h   | 176 ++++++
 63 files changed, 7929 insertions(+), 39 deletions(-)
---
base-commit: 89bf1fcc998fc5fea0ce613d9930dd9ee39c0fb2
change-id: 20241029-v2024-10-0-topic-socfpga-agilex5-c087bbc7d774

Best regards,
-- 
Steffen Trumtrar <s.trumtrar@pengutronix.de>




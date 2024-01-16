Delivery-date: Tue, 16 Jan 2024 18:09:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmvt-002FOi-23
	for lore@lore.pengutronix.de;
	Tue, 16 Jan 2024 18:09:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmvu-0007VD-9P
	for lore@pengutronix.de; Tue, 16 Jan 2024 18:09:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ki7uUvi6PU+1qK1QA7HHDR+E28W0CE8r73ENmEaF/hs=; b=j1vlFJrS4tykQlZbZH/pOocTRP
	oaWc9KO4WTa29VczygP7WkgHkS/UQ83wwGBg1RJ0wiE4FCwWjIsJ4ONgAFZcUy4tvnzhtPZtG5igd
	fXO4aLgeyvz7aZGxRnbb6elPlI6kMuQCv4IsFUpIXZNWOWzNDebS0Q6l40kFPEAtUHlCs+NU9oKGB
	TAykHZP2tXBRFYPX5wennucaF4p6gZq36613294/mNJ1z/SdFXEJyooFjBvUcZWtg3qu1DWmMdfmQ
	su2k8sNjj/jJ5igiJYdldchQN+NrflgWPcjR5M3uJ+1Bv39z1Cy5ZcWu5r2UHNnGgIU+m9Wt6oHqt
	tpD0d5uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmup-00Chx3-0Y;
	Tue, 16 Jan 2024 17:07:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmug-00Chq3-0d
	for barebox@lists.infradead.org;
	Tue, 16 Jan 2024 17:07:49 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rPmue-0006lg-T8
	for barebox@lists.infradead.org; Tue, 16 Jan 2024 18:07:44 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 16 Jan 2024 18:07:20 +0100
Message-Id: <20240116170738.209954-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_090746_397942_21A9E398 
X-CRM114-Status: GOOD (  13.08  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 00/18] Dynamic OP-TEE Loading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi all,                                                                                                                                                                                                            
by this series it is supported to load OP-TEE to random DRAM locations.
The location is parsed and configured if the builtin OP-TEE contains a
header-v1. For this to work we needed to cleanup the imx-scratch code
(patches1-4).

I've tested this series on i.MX8MM and i.MX8MP SoCs using the eMMC and
QSPI boot mode. The USB boot mode was tested on i.MX8MM only.

This series is based on origin/next
(c324e9ea7f8808ae069cd8bd0aa53021c1239bd2).

Regards,
  Marco

Marco Felsch (17):
  ARM: i.MX8M: atf: make use of imx8m*_save_bootrom_log macros
  ARM: i.MX8M: bundle imx-scratch code
  ARM: i.MX8M: scratch: make imx_scratch_space private
  ARM: i.MX8M: romapi: refactor saving the bootrom log
  ARM: i.MX8M: scratch: add optee_hdr area
  common: limit BOOTM_OPTEE to 32bit systems
  common: add OPTEE_SHM_SIZE to configure optee shared memory
  optee: add header version check
  optee: add helper functions to set/get the optee memory base
  optee: optee_verify_header: constify optee_header
  ARM64: mmu: add dynamic optee memory mapping support
  ARM: i.MX8M: add dynamic optee memory of-fixup support
  drivers: tee: optee: add support for dynamic optee memory base address
  ARM: i.MX8M: atf: add support for optee hdr parsing
  ARM: i.MX8M: allow board code to configure the bl33 loadaddr
  ARM: i.MX8M: cleanup MX8M*_ATF_BL33_BASE_ADDR defines
  ARM: i.MX8M: fix optee of-fixup logic

Rouven Czerwinski (1):
  optee: add support to verify 64-bit headers as well

 .../boards/imx/zii-imx8mq-dev/openocd.cfg     | 10 +-
 arch/arm/boards/phytec-som-imx8mq/lowlevel.c  |  2 +-
 arch/arm/boards/zii-imx8mq-dev/lowlevel.c     |  2 +-
 arch/arm/cpu/mmu_64.c                         | 14 ++-
 arch/arm/mach-imx/Makefile                    |  2 +-
 arch/arm/mach-imx/atf.c                       | 83 +++++++++++++----
 arch/arm/mach-imx/esdctl.c                    |  4 +
 arch/arm/mach-imx/imx8m.c                     |  9 +-
 arch/arm/mach-imx/romapi.c                    | 35 +++----
 arch/arm/mach-imx/scratch.c                   | 91 +++++++++++++++++++
 arch/arm/mach-imx/xload-common.c              |  8 --
 arch/arm/mach-imx/xload-qspi.c                | 14 +--
 common/Kconfig                                | 11 ++-
 common/Makefile                               |  2 +-
 common/optee.c                                | 44 ++++++++-
 drivers/mci/imx-esdhc-pbl.c                   | 12 ++-
 drivers/tee/optee/of_fixup.c                  | 26 +++++-
 include/asm-generic/memory_layout.h           |  6 ++
 include/mach/imx/atf.h                        |  2 -
 include/mach/imx/romapi.h                     | 13 +--
 include/mach/imx/scratch.h                    | 21 +++++
 include/mach/imx/xload.h                      | 28 +++---
 include/tee/optee.h                           | 23 ++++-
 23 files changed, 347 insertions(+), 115 deletions(-)
 create mode 100644 arch/arm/mach-imx/scratch.c
 create mode 100644 include/mach/imx/scratch.h

-- 
2.39.2




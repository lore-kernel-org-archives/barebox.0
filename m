Delivery-date: Thu, 11 Jan 2024 12:50:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNtZs-00Cw0v-1q
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 12:50:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNtZr-0002Gd-V7
	for lore@pengutronix.de; Thu, 11 Jan 2024 12:50:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4gHh4w2MXimVnGDxRk4nx31yvvkQc0a49ZswIg/5C/g=; b=ke/HusKE1kymuUcoxnO9AqotGD
	tIp7+S3iYG0zt16XLN6gcHmJBy+2oYDJB6PB7p3rKw1jEAXWs1uybZxMh65x2iI4QEgRPMU9C1WGe
	j/xEyWVdVq7B9bBiGTMBWPzwHEb5aoHqmf/EYfulgZ198ruuWZpgVdHbYj8IqxFRoFsOcwKmL9c90
	ZxEA/AQerPS+sv0W4OMOrhaLxTLQ1IsxGuXeUpR0JjkyXRDfv1Al+uom4/ZRYYZXvMzd5+9s8SmZP
	ZKTuI3xCUEy43gbh7AJobhj3+f8ZBApt3+3jbv1mkv3DkG7F+NTowrgBv590DLYyqyrkXc5xGmRFh
	7UTWDafQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtYa-00HSla-1s;
	Thu, 11 Jan 2024 11:49:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtYP-00HSac-16
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 11:49:01 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rNtYK-000137-FP
	for barebox@lists.infradead.org; Thu, 11 Jan 2024 12:48:52 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 11 Jan 2024 12:48:23 +0100
Message-Id: <20240111114841.2676939-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_034857_618359_1F480656 
X-CRM114-Status: GOOD (  12.10  )
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
Subject: [PATCH 00/18] Dynamic OP-TEE Loading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi all,

by this series it is supported to load OP-TEE to random DRAM locations.
The location is parsed and configured if the builtin OP-TEE contains a
header-v1. For this to work we needed to cleanup the imx-scratch code
(patches1-4).

I've tested this series on i.MX8MM and i.MX8MP SoCs using the eMMC and
QSPI boot mode. The USB boot mode was tested on i.MX8MM only.

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
 arch/arm/mach-imx/imx8m.c                     |  8 +-
 arch/arm/mach-imx/romapi.c                    | 35 +++----
 arch/arm/mach-imx/scratch.c                   | 91 +++++++++++++++++++
 arch/arm/mach-imx/xload-common.c              |  8 --
 arch/arm/mach-imx/xload-qspi.c                | 18 ++--
 common/Kconfig                                | 11 ++-
 common/Makefile                               |  2 +-
 common/optee.c                                | 44 ++++++++-
 drivers/mci/imx-esdhc-pbl.c                   | 13 +--
 drivers/tee/optee/of.c                        | 26 +++++-
 include/mach/imx/atf.h                        |  2 -
 include/mach/imx/romapi.h                     | 13 +--
 include/mach/imx/scratch.h                    | 21 +++++
 include/mach/imx/xload.h                      | 28 +++---
 include/tee/optee.h                           |  7 +-
 22 files changed, 326 insertions(+), 118 deletions(-)
 create mode 100644 arch/arm/mach-imx/scratch.c
 create mode 100644 include/mach/imx/scratch.h

-- 
2.39.2




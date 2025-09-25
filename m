Delivery-date: Thu, 25 Sep 2025 14:00:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1ke8-000vtw-07
	for lore@lore.pengutronix.de;
	Thu, 25 Sep 2025 14:00:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1ke5-0005G8-TD
	for lore@pengutronix.de; Thu, 25 Sep 2025 14:00:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mGpGgJuxWd6hscmq7DN3y8hDzLx2l5+Pa2Qcd6Vm2nU=; b=VgL9AxBlocfNiE
	YV5nRoK/5fMGvmOtvKPl9VEk6KayWqoiL5B00RhR/hFVTLJkC3L3xIt3D0QWm61Xl/3tJT83qN7M1
	pQPm06/e9xTPGO9PLs/+3kXKOCARXs4PDS1No6k19PEETPvSvQJcyy1+3hetBgAMogNaHZkMxpxry
	Y49ISt/XDk7f4enqNo2QerMKHsAAN43XkP5Rbev+vEzDyXKEOlrcPGxpm87ZE4v+axTk8rr31rmoz
	h+z60tvtx3BG161/renTSBCd5eXvNhLcqB7xA8x5KOI0/aVMO6L5s/6h0x9QeOchtdHHkvYlg2I4P
	6f7aWHNRYcnzD9b+zSJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1kdP-00000008k3E-032k;
	Thu, 25 Sep 2025 11:59:39 +0000
Received: from cczrelay02.in2p3.fr ([134.158.66.142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1kdI-00000008jum-2Qsu
	for barebox@lists.infradead.org;
	Thu, 25 Sep 2025 11:59:36 +0000
Received: from [127.0.1.1] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay02.in2p3.fr (8.14.4/8.14.4) with ESMTP id 58PBxEkp016594
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Thu, 25 Sep 2025 13:59:25 +0200
From: David Picard <david.picard@clermont.in2p3.fr>
Date: Thu, 25 Sep 2025 13:59:07 +0200
Message-Id: <20250925-boards-enclustra-sa2-add-support-v2-0-6820ad6c6256@clermont.in2p3.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIsu1WgC/4WNQQ6DIBAAv2I4dw2gRe2p/2g8UMFKYoHsomlj/
 HupSc89zhxmNkYWnSV2KTaGdnXkgs8gTwUbJu0fFpzJzCSXZ94JBfeg0RBYP8wLJdRAWoI2Bmi
 JMWCCuuG1rCqtWiVYzkS0o3sdi1ufeXKUAr6P4yq+9hdv/sdXARykse2oOsEbLa7DbPEZfCqdl
 7EqR2T9vu8f64CjYtgAAAA=
X-Change-ID: 20250916-boards-enclustra-sa2-add-support-4704233a6861
To: Sascha Hauer <s.hauer@pengutronix.de>,
        BAREBOX <barebox@lists.infradead.org>
Cc: David Picard <david.picard@clermont.in2p3.fr>, Ahmad Fatoum <ahmad@a3f.at>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758801565; l=3411;
 i=david.picard@clermont.in2p3.fr; s=20250917; h=from:subject:message-id;
 bh=GbXKnRG+OCVg69pXnDZAIS77dZWBWEYNZha9GRj3ZMI=;
 b=v0wuapuZeMUBGmZfedYxgtb8LxwNgbUb4B++m2ZxaUaCQIncmP9pO+6y6YBR1jxqvv1KXmkHB
 TOwj4t842bADJxHjLhji2WFLtL0LdAp25y9i5Kka+hsZjtVMflorq/h
X-Developer-Key: i=david.picard@clermont.in2p3.fr; a=ed25519;
 pk=Ew2hyxWdBXm7qaK2tHrk3KcOlOjoh3+irqJPSHtq/PU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_045932_895281_282E880F 
X-CRM114-Status: GOOD (  10.15  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 00/10] ARM: boards: add support for Enclustra Mercury
 SA2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support for the Enclustra Mercury+ SA2, a Cyclone V based
SoC FPGA.
https://www.enclustra.com/en/products/system-on-chip-modules/mercury-sa2/

The SoM provides a 64MiB NOR QSPI flash, DDR3, Ethernet PHY, RTC.

The Cyclone V features a hardware ARM core (aka HPS) that can boot
from SD card (MMC), QSPI flash. This patch series focusses on MMC.

Signed-off-by: David Picard <david.picard@clermont.in2p3.fr>
---
Changes in v2:
- EDITME: describe what is new in this series revision.
- EDITME: use bulletpoints and terse descriptions.
- Link to v1: https://lore.kernel.org/r/20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr

---
David Picard (8):
      Add handoff files
      Add Enclustra Mercury+ SA2 module
      ARM: dts: socfpga: use upstream SA2 device tree
      ARM: dts: socfpga: adapt upstream SA2 device tree
      boards: enclustra-sa2: read MAC address from EEPROM
      boards: enclustra-sa2: configure SI5338
      boards: enclustra-sa2: enable SI5338
      boards: enclustra-sa2: read S/N from EEPROM

Sascha Hauer (2):
      lib: add crc16 support
      nvmem: add support for Atmel sha204(a)

 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/enclustra-sa2/Makefile             |   2 +
 .../boards/enclustra-sa2/Si5338-RevB-Registers.h   | 433 +++++++++++++
 arch/arm/boards/enclustra-sa2/board.c              | 148 +++++
 .../boards/enclustra-sa2/iocsr_config_cyclone5.c   | 678 +++++++++++++++++++++
 arch/arm/boards/enclustra-sa2/lowlevel.c           |  15 +
 arch/arm/boards/enclustra-sa2/pinmux_config.c      | 241 ++++++++
 arch/arm/boards/enclustra-sa2/pll_config.h         | 107 ++++
 arch/arm/boards/enclustra-sa2/sdram_config.h       | 112 ++++
 arch/arm/boards/enclustra-sa2/sequencer_auto.h     | 225 +++++++
 .../boards/enclustra-sa2/sequencer_auto_ac_init.c  |  67 ++
 .../enclustra-sa2/sequencer_auto_inst_init.c       | 158 +++++
 arch/arm/boards/enclustra-sa2/sequencer_defines.h  | 165 +++++
 arch/arm/boards/enclustra-sa2/si5338_config.c      | 252 ++++++++
 arch/arm/boards/enclustra-sa2/si5338_config.h      |  22 +
 arch/arm/configs/socfpga-xload_defconfig           |   1 +
 arch/arm/configs/socfpga_defconfig                 |   3 +-
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/socfpga_cyclone5_mercury_sa2.dts      |  17 +
 arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi     | 213 +++++++
 arch/arm/mach-socfpga/Kconfig                      |   8 +
 drivers/nvmem/Kconfig                              |  15 +
 drivers/nvmem/Makefile                             |   2 +
 drivers/nvmem/atmel-i2c.c                          | 302 +++++++++
 drivers/nvmem/atmel-i2c.h                          | 180 ++++++
 drivers/nvmem/atmel-sha204a.c                      | 114 ++++
 images/Makefile.socfpga                            |   8 +
 include/linux/crc16.h                              |  21 +
 lib/Kconfig                                        |   3 +
 lib/Makefile                                       |   1 +
 lib/crc16.c                                        |  69 +++
 31 files changed, 3582 insertions(+), 2 deletions(-)
---
base-commit: 85c11b44889eb73921b2095f2c42492ac3d686a0
change-id: 20250916-boards-enclustra-sa2-add-support-4704233a6861

Best regards,
-- 
David Picard <david.picard@clermont.in2p3.fr>




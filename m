Delivery-date: Wed, 17 Sep 2025 17:52:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyuRs-0047rL-0A
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 17:52:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyuRq-00011H-4e
	for lore@pengutronix.de; Wed, 17 Sep 2025 17:51:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p7l82FAjvbaG6qGxhQ9WK4fTddc4USzx+VFjjm0ZR4A=; b=N1XtM+jiq+NfEB
	/lckbGa9JVhKzS5aQxLVD4kv8wZFzaTqXOnJmYVvoFQgwgTW8t4PijpCXOZuiDSxU0Ih6+HQKtXcq
	eJRoP4nB+MiqlER7rM42Xi5G1Dmseu53PGAyYT4YmWGDVtegLf/b+f6nchB3yCSyO8oSdcIwwFOZX
	u30wi8J3SecccPssUZaQVO6YNaYpCFUnVO6KHy0pPxLrDWVTX9jvb1pMNGlsTDIaZvyHe9smvRWTX
	BTuuAktqfhkXhh45pM2aFOQav+tesUnTTAl55t7+3IvOEOYmNoEREes60dT95o37gzNbp/5hDZ2ZP
	qmtlMyoULBrZbvBFNjiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyuRN-0000000Ctdv-3hC1;
	Wed, 17 Sep 2025 15:51:29 +0000
Received: from cczrelay01.in2p3.fr ([134.158.66.141])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyuRK-0000000CtAB-3esj
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 15:51:28 +0000
Received: from [127.0.1.1] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay01.in2p3.fr (8.14.4/8.14.4) with ESMTP id 58HFNoC5032210
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Wed, 17 Sep 2025 17:24:01 +0200
From: David Picard <david.picard@clermont.in2p3.fr>
Date: Wed, 17 Sep 2025 17:22:03 +0200
Message-Id: <20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABvSymgC/x3NSwrDMAwA0asErSuwncT9XCV0ocZKKyi2kZJSC
 Ll7TZdvM7ODsQob3LodlD9iUnKDP3Uwvyg/GSU1Q3BhdFcf8VFIkyHn+b3ZqoRGASkltK3Wois
 OZzeEvqd4iR5apiov8v0vpvtx/AB34sSIcgAAAA==
X-Change-ID: 20250916-boards-enclustra-sa2-add-support-4704233a6861
To: Sascha Hauer <s.hauer@pengutronix.de>,
        BAREBOX <barebox@lists.infradead.org>
Cc: David Picard <david.picard@clermont.in2p3.fr>, Ahmad Fatoum <ahmad@a3f.at>,
        Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758122641; l=3020;
 i=david.picard@clermont.in2p3.fr; s=20250917; h=from:subject:message-id;
 bh=jFGDENMkvvZbrvdK38xGi65b+d0MYmKYMb30uwIXwNI=;
 b=17d+uz294vdMvmsOCmCRYclNA3/ZJJbDsjXNJNVP5CuDr3M9EzmCHbilLp2fSFz3nHQ+w7DOO
 PQRCwX6853UDSSzNtTFoRvuQFqMyBsCApzlQeq3mJvniPbXB2rqalLj
X-Developer-Key: i=david.picard@clermont.in2p3.fr; a=ed25519;
 pk=Ew2hyxWdBXm7qaK2tHrk3KcOlOjoh3+irqJPSHtq/PU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_085127_202575_9B7B2078 
X-CRM114-Status: UNSURE (   8.78  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/11] ARM: boards: add support for Enclustra Mercury SA2
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
Ahmad Fatoum (3):
      ARM: dts: socfpga: use upstream SA2 device tree
      gpio: dw: support numbering via aliases
      gpio: dw: make deep probe compatible

David Picard (8):
      Add handoff files
      Add Enclustra Mercury+ SA2 module
      Add Enclustra devicetree files
      ARM: dts: socfpga: adapt upstream SA2 device tree
      boards: enclustra-sa2: read MAC address from EEPROM
      boards: enclustra-sa2: enable bridges
      boards: enclustra-sa2: configure SI5338
      boards: enclustra-sa2: enable SI5338

 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/enclustra-sa2/Makefile             |   2 +
 .../boards/enclustra-sa2/Si5338-RevB-Registers.h   | 433 +++++++++++++
 arch/arm/boards/enclustra-sa2/atsha204a.c          | 436 +++++++++++++
 arch/arm/boards/enclustra-sa2/atsha204a.h          |  19 +
 arch/arm/boards/enclustra-sa2/board.c              |  83 +++
 arch/arm/boards/enclustra-sa2/crc16.c              |  65 ++
 arch/arm/boards/enclustra-sa2/crc16.h              |  28 +
 .../boards/enclustra-sa2/iocsr_config_cyclone5.c   | 678 +++++++++++++++++++++
 arch/arm/boards/enclustra-sa2/lowlevel.c           |  13 +
 arch/arm/boards/enclustra-sa2/pinmux_config.c      | 241 ++++++++
 arch/arm/boards/enclustra-sa2/pll_config.h         | 107 ++++
 arch/arm/boards/enclustra-sa2/sdram_config.h       | 112 ++++
 arch/arm/boards/enclustra-sa2/sequencer_auto.h     | 225 +++++++
 .../boards/enclustra-sa2/sequencer_auto_ac_init.c  |  67 ++
 .../enclustra-sa2/sequencer_auto_inst_init.c       | 158 +++++
 arch/arm/boards/enclustra-sa2/sequencer_defines.h  | 165 +++++
 arch/arm/boards/enclustra-sa2/si5338_config.c      | 326 ++++++++++
 arch/arm/boards/enclustra-sa2/si5338_config.h      |  22 +
 arch/arm/configs/socfpga-xload_defconfig           |   1 +
 arch/arm/configs/socfpga_defconfig                 |   3 +-
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/socfpga_cyclone5_mercury_sa2.dts      |  17 +
 arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi     | 187 ++++++
 arch/arm/mach-socfpga/Kconfig                      |   9 +
 drivers/gpio/Kconfig                               |   1 +
 drivers/gpio/gpio-dw.c                             |  48 +-
 images/Makefile.socfpga                            |   8 +
 28 files changed, 3434 insertions(+), 22 deletions(-)
---
base-commit: 89bf1fcc998fc5fea0ce613d9930dd9ee39c0fb2
change-id: 20250916-boards-enclustra-sa2-add-support-4704233a6861

Best regards,
-- 
David Picard <david.picard@clermont.in2p3.fr>




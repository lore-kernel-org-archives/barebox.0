Delivery-date: Mon, 02 Dec 2024 09:08:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI1UI-0030M8-1e
	for lore@lore.pengutronix.de;
	Mon, 02 Dec 2024 09:08:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI1UI-0007fr-Bm
	for lore@pengutronix.de; Mon, 02 Dec 2024 09:08:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CnE5SFr4a+FdariTQQIgbE30NDBJDvZtl4r7SUnt7To=; b=wHH0XEffR5PCB2OZg7jd5v/W+I
	DGQCPb93Vcgqq2TW5GTP9Z0Z69oQMWuUINXQeyGpS0VF7Lk+J/vmiqn5zS+qiu+WKtdaO9/p6synz
	lJYtVUmBvMZ92YSi8yOkQMUnF/ZKOFd2QNiTHDKknBZ53fgTMtRWbY3bNF5N4Ejg4JffA8LPY4zSY
	YYfBHqOzG7OcZ1/EkTicp7/ZemsCWMWAFzYc7Gupf4K325Gvvp/H6+xV5jmYKyG9IABb03oWrU8Mp
	q3o/rgpqDe93uIKB6B3fvFpdT3v7cfI74b4BC76DU9JW//+cojE902+hCBGdQt8XzJyQs7Edh3jEJ
	5ztztihQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI1Tj-00000005NLI-1z5R;
	Mon, 02 Dec 2024 08:08:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI1Th-00000005NKT-0ryN
	for barebox@lists.infradead.org;
	Mon, 02 Dec 2024 08:08:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI1Tf-0007U3-T9; Mon, 02 Dec 2024 09:08:19 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI1Te-001GJa-2z;
	Mon, 02 Dec 2024 09:08:19 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI1Tf-00EZ80-1y;
	Mon, 02 Dec 2024 09:08:19 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  2 Dec 2024 09:08:18 +0100
Message-Id: <20241202080818.3471605-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241202080818.3471605-1-a.fatoum@pengutronix.de>
References: <20241202080818.3471605-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_000821_241937_48C5FDF9 
X-CRM114-Status: GOOD (  17.66  )
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
Subject: [PATCH master v2 2/2] ARM: omap: add two smaller MLO defconfigs for AM335x
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Beaglebone Black remains a popular board and it's not a good look to
have it not compile by default due to barebox getting too big.

As we keep running into size issues with the MLO defconfig, let's accept
that we die bite off more than we could chew and split off the defconfigs
into one for SD/MMC and another for NOR/NAND and document that users
should prefer those instead.

Reported-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - add correct configs to generated_configs
---
 Documentation/boards/am335x.rst    | 28 +++++++++++++++++++++++++---
 arch/arm/Makefile                  |  6 ++++++
 common/boards/configs/nomci.config |  1 +
 common/boards/configs/nomtd.config |  1 +
 4 files changed, 33 insertions(+), 3 deletions(-)
 create mode 100644 common/boards/configs/nomci.config
 create mode 100644 common/boards/configs/nomtd.config

diff --git a/Documentation/boards/am335x.rst b/Documentation/boards/am335x.rst
index f54611428bb3..ec7322a0acdf 100644
--- a/Documentation/boards/am335x.rst
+++ b/Documentation/boards/am335x.rst
@@ -8,9 +8,15 @@ loader from the same medium.
 Building barebox
 ----------------
 
-The TI AM335x boards in barebox are covered by the ``am335x_mlo_defconfig``
-for the MLO and ``omap_defconfig`` for the regular barebox image. The
-resulting images will be placed under ``images/``:
+Booting with barebox on the TI AM335x is a two-stage process and unlike
+more recently added SoCs, requires building barebox twice, each time
+with a different defconfig:
+
+* ``omap_defconfig`` for the regular (second-stage) barebox image
+* For the MLO first-stage, either ``am335x_mlo_sdmmc_defconfig`` for
+  SD/eMMC or ``am335x_mlo_rawflash_defconfig`` for raw NOR/NAND.
+
+The resulting images will be placed under ``images/``:
 
 ::
 
@@ -30,6 +36,22 @@ resulting images will be placed under ``images/``:
 
 Some boards come in different variants, make sure to pick the correct one.
 
+Size Constraints
+^^^^^^^^^^^^^^^^
+
+As the MLO needs to setup DRAM first, it must fit into the 109KiB
+of available on-Chip SRAM. Depending on the boards, drivers and general
+features enabled by your config, barebox may exceed this size resulting
+in an error message during build, e.g.::
+
+  images/start_am33xx_myirtech_sram.pblb size 111800 > maximum size 111616
+
+If you run into this issue, consider disabling some unneeded config options
+for the MLO via ``make menuconfig`` and try again.
+The ``am335x_mlo_sdmmc_defconfig`` and ``am335x_mlo_rawflash_defconfig``
+defconfigs do just that by disabling ``CONFIG_MTD`` and ``CONFIG_MCI``,
+respectively.
+
 Starting and updating barebox
 -----------------------------
 
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 6785432c52ca..270f5dfdc1c0 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -2,6 +2,12 @@
 
 KBUILD_DEFCONFIG := multi_v8_defconfig
 
+generated_configs += am335x_mlo_sdmmc_defconfig am335x_mlo_rawflash_defconfig
+am335x_mlo_sdmmc_defconfig:
+	$(call merge_into_defconfig,am335x_mlo_defconfig,nomtd)
+am335x_mlo_rawflash_defconfig:
+	$(call merge_into_defconfig,am335x_mlo_defconfig,nomci)
+
 KBUILD_CPPFLAGS	+= -D__ARM__ -fno-strict-aliasing
 # Explicitly specifiy 32-bit ARM ISA since toolchain default can be -mthumb:
 ifeq ($(CONFIG_CPU_64),y)
diff --git a/common/boards/configs/nomci.config b/common/boards/configs/nomci.config
new file mode 100644
index 000000000000..f541645cccfc
--- /dev/null
+++ b/common/boards/configs/nomci.config
@@ -0,0 +1 @@
+# CONFIG_MCI is not set
diff --git a/common/boards/configs/nomtd.config b/common/boards/configs/nomtd.config
new file mode 100644
index 000000000000..f29845573ae6
--- /dev/null
+++ b/common/boards/configs/nomtd.config
@@ -0,0 +1 @@
+# CONFIG_MTD is not set
-- 
2.39.5




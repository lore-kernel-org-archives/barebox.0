Delivery-date: Tue, 27 Apr 2021 22:25:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbUGq-0006ZK-7B
	for lore@lore.pengutronix.de; Tue, 27 Apr 2021 22:25:24 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbUGo-0006Gd-BB
	for lore@pengutronix.de; Tue, 27 Apr 2021 22:25:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O+TYpfM3w3GUoJmy2usY3bgBf4jCivjiDVT5Eu+uH8k=; b=ROjAZL1Ud4/Gm/mjvWbjzj8mK
	kmUBKTsAWrNCLb9TKigR6e0FGGsjMcKqL6dBvgxFDEpa7UkSZoWkh9fHFjcEFGFyaj9aS6lx1dmFB
	JIS9EBHimsmcnqrHJw1TFIhqt+fzkKlrMUJg2xDI00bYOfpkHtVHNVwPwuLT2xWC+i7PoNDXSfzOG
	j5Iqv0P4BXlvS0jZKankSl98XACyHNbHMzh+Cm7zM1077sX0EYndrG+D4myy8yv3pZm3NGiuMfomY
	yrQ0I69j7icd64HQ9AOQIZcwhnqO4EPAWDwYPBqSbm/JnO8YCaUzoP8P06MhvH7Mq3a5khjAsBZYi
	n6SPPJY1g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbUFm-002C4P-0C; Tue, 27 Apr 2021 20:24:18 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbUFO-002Bwb-OY
 for barebox@desiato.infradead.org; Tue, 27 Apr 2021 20:23:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=p+2O8plneVdrCHfpJx7RRkdeKr8Ic79nJNCCydzsPDE=; b=lihSwz0s6d9Sg8KZ5f8kcly6O9
 RH+X89y8Mg2ss++EWctsPHzknudBBpb1lxGi8ML9jxCovAkuC8ViB/szcoLtYu265t+Jb2Z8eq7zu
 ix+6cKscpcj8B4nz2d8oqVoikaIvDD1iOE2uKWy0qZX50ATxmvo1y92wGbu8Em/YKvMXw1aMMz7v1
 KuoWgXLUqk1j2Q6/fKs72SMFUFnZK5LeVONFTIXgMwP/W4deh29pDn/1jeauS6b5NIg9slmMD/ReQ
 hxgyopMiMwuR4Okl98T0Pw5O/c9b126gQ1CLeGSOVnlMfEBLAPEgXWUkaNEPam/p0yryp8sMOSx7d
 8Gu6Kffg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbUFM-00GyKl-55
 for barebox@lists.infradead.org; Tue, 27 Apr 2021 20:23:53 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lbUEo-0005XW-Pg; Tue, 27 Apr 2021 22:23:18 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lbUEm-00016V-0S; Tue, 27 Apr 2021 22:23:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 27 Apr 2021 22:23:01 +0200
Message-Id: <20210427202309.32077-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210427202309.32077-1-a.fatoum@pengutronix.de>
References: <20210427202309.32077-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_132352_214577_062523F5 
X-CRM114-Status: GOOD (  17.21  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 04/12] RISC-V: support multi-image for all machines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We already got rid of arch/riscv/mach-virt. Now do the same for
arch/riscv/mach-erizo. This will enable us to build images for all
RISC-V boards at once.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/Kconfig                         | 31 ++--------------------
 arch/riscv/Kconfig.socs                    | 24 +++++++++++++++++
 arch/riscv/Makefile                        |  2 +-
 arch/riscv/configs/erizo_generic_defconfig |  1 +
 arch/riscv/configs/virt32_defconfig        |  2 +-
 arch/riscv/configs/virt64_defconfig        |  2 +-
 arch/riscv/mach-erizo/Kconfig              | 11 --------
 7 files changed, 30 insertions(+), 43 deletions(-)
 create mode 100644 arch/riscv/Kconfig.socs
 delete mode 100644 arch/riscv/mach-erizo/Kconfig

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index c0583f31536b..a4aa799acf01 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -19,31 +19,6 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x0
 
-menu "Machine selection"
-
-choice
-	prompt "System type"
-	default MACH_ERIZO
-
-config MACH_ERIZO
-	bool "erizo family"
-	select ARCH_RV32I
-	select HAS_DEBUG_LL
-	select HAS_NMON
-	select USE_COMPRESSED_DTB
-	select RISCV_M_MODE
-	select RISCV_TIMER
-
-config MACH_VIRT
-	bool "virt family"
-	select BOARD_RISCV_GENERIC_DT
-	select CLINT_TIMER
-	help
-	  Generates an image tht can be be booted by QEMU. The image is called
-	  barebox-dt-2nd.img
-
-endchoice
-
 choice
 	prompt "Base ISA"
 	default ARCH_RV32I
@@ -63,6 +38,8 @@ config ARCH_RV64I
 
 endchoice
 
+source "arch/riscv/Kconfig.socs"
+
 config CPU_SUPPORTS_32BIT_KERNEL
 	bool
 
@@ -82,8 +59,6 @@ config 64BIT
 	select ARCH_DMA_ADDR_T_64BIT
 	select PHYS_ADDR_T_64BIT
 
-source "arch/riscv/mach-erizo/Kconfig"
-
 config BOARD_RISCV_GENERIC_DT
 	select BOARD_GENERIC_DT
 	bool "Build generic RISC-V device tree 2nd stage image"
@@ -93,8 +68,6 @@ config BOARD_RISCV_GENERIC_DT
 	  in a1 like the Kernel does, so it could be used anywhere where a Kernel
 	  image could be used. The image will be called images/barebox-dt-2nd.img
 
-endmenu
-
 menu "RISC-V specific settings"
 
 config RISCV_OPTIMZED_STRING_FUNCTIONS
diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
new file mode 100644
index 000000000000..b0e38d8f2cca
--- /dev/null
+++ b/arch/riscv/Kconfig.socs
@@ -0,0 +1,24 @@
+menu "SoC selection"
+
+config SOC_ERIZO
+	bool "Erizo SoC"
+	select ARCH_RV32I
+	select HAS_DEBUG_LL
+	select HAS_NMON
+	select USE_COMPRESSED_DTB
+	select RISCV_M_MODE
+	select RISCV_TIMER
+
+config BOARD_ERIZO_GENERIC
+	depends on SOC_ERIZO
+	def_bool y
+
+config SOC_VIRT
+	bool "QEMU Virt Machine"
+	select BOARD_RISCV_GENERIC_DT
+	select CLINT_TIMER
+	help
+	  Generates an image tht can be be booted by QEMU. The image is called
+	  barebox-dt-2nd.img
+
+endmenu
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 1a41d15477b5..09a94d69b220 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -19,7 +19,7 @@ LDFLAGS_pbl += $(riscv-ldflags-y)
 cflags-y += $(riscv-cflags-y)
 LDFLAGS_barebox += -nostdlib
 
-machine-$(CONFIG_MACH_ERIZO)	:= erizo
+machine-$(CONFIG_SOC_ERIZO)	:= erizo
 
 LDFLAGS_barebox += $(riscv-ldflags-y)
 
diff --git a/arch/riscv/configs/erizo_generic_defconfig b/arch/riscv/configs/erizo_generic_defconfig
index 839b652ab53d..247a17913048 100644
--- a/arch/riscv/configs/erizo_generic_defconfig
+++ b/arch/riscv/configs/erizo_generic_defconfig
@@ -1,3 +1,4 @@
+CONFIG_SOC_ERIZO=y
 # CONFIG_GLOBALVAR is not set
 CONFIG_STACK_SIZE=0x20000
 CONFIG_MALLOC_SIZE=0x100000
diff --git a/arch/riscv/configs/virt32_defconfig b/arch/riscv/configs/virt32_defconfig
index 83e3ca1bade8..218fee57b711 100644
--- a/arch/riscv/configs/virt32_defconfig
+++ b/arch/riscv/configs/virt32_defconfig
@@ -1,4 +1,4 @@
-CONFIG_MACH_VIRT=y
+CONFIG_SOC_VIRT=y
 CONFIG_RISCV_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_STACK_SIZE=0x20000
 CONFIG_MALLOC_SIZE=0x0
diff --git a/arch/riscv/configs/virt64_defconfig b/arch/riscv/configs/virt64_defconfig
index 17ce16637d96..04a4f1e2f4cb 100644
--- a/arch/riscv/configs/virt64_defconfig
+++ b/arch/riscv/configs/virt64_defconfig
@@ -1,4 +1,4 @@
-CONFIG_MACH_VIRT=y
+CONFIG_SOC_VIRT=y
 CONFIG_ARCH_RV64I=y
 CONFIG_RISCV_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_STACK_SIZE=0x20000
diff --git a/arch/riscv/mach-erizo/Kconfig b/arch/riscv/mach-erizo/Kconfig
deleted file mode 100644
index 2400b4437b10..000000000000
--- a/arch/riscv/mach-erizo/Kconfig
+++ /dev/null
@@ -1,11 +0,0 @@
-if MACH_ERIZO
-
-choice
-	prompt "Board type"
-
-config BOARD_ERIZO_GENERIC
-	bool "erizo generic board"
-
-endchoice
-
-endif
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


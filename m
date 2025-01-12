Delivery-date: Sun, 12 Jan 2025 09:35:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtRK-0007gH-1l
	for lore@lore.pengutronix.de;
	Sun, 12 Jan 2025 09:35:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtRJ-00079m-Al
	for lore@pengutronix.de; Sun, 12 Jan 2025 09:35:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DNQTQxroHzsKs2lPDCF19rslufBe1ezBOst2KbRpGS4=; b=kZKFYtuGUztWI/ol5a71LBXFM/
	WQ5jR3TTYcMaE0VroGe24Athqn0VOzpYvagwsnxUu3mV3WdpOONdoVyN5yXRNB5lOGMzvMiqpHARr
	/u8nqiAekaBTOUxDZuKggTdQejOpltserAVFAf/dSun0mrb6tQstikISx1IsDafNfjZ7HPQ7sqzCq
	hTXxPwCZ4YDsU6+4K+kMdY/pOvxpTFsSY9US4GqeKDHqYqbAalkc5slLw1tAE2wFqg8Rodys+DxJM
	lWSAP7cSiY0XGTXy0ZQQn2K06Ojy6w5OVJ3x33obP9Yxk4yYSJnb3IDOcgLBr5mU0n0LNmYLcputg
	IFjsZjhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtQt-00000002L4s-3OHJ;
	Sun, 12 Jan 2025 08:34:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtQq-00000002L2q-3OYA
	for barebox@lists.infradead.org;
	Sun, 12 Jan 2025 08:34:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQZ-0006gR-Hy; Sun, 12 Jan 2025 09:34:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQX-0003OE-1j;
	Sun, 12 Jan 2025 09:34:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQY-001LPJ-2B;
	Sun, 12 Jan 2025 09:34:33 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Felix Singer <felixsinger@posteo.net>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 12 Jan 2025 09:34:28 +0100
Message-Id: <20250112083432.320215-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250112083432.320215-1-a.fatoum@pengutronix.de>
References: <20250112083432.320215-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_003453_002206_86294552 
X-CRM114-Status: GOOD (  17.60  )
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
Subject: [PATCH 09/13] arch: make BOARD_GENERIC_DT a user-selectable option across archs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of having one option per architecture, let's give the existing
BOARD_GENERIC_DT option a prompt and make architecture specific options,
if any, depend on it instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devicetree/index.rst      |  4 ++--
 Documentation/user/barebox.rst          |  6 +++---
 arch/Kconfig                            | 18 ++++++++++++++++++
 arch/arm/Kconfig                        |  6 +++---
 arch/arm/configs/multi_v5_v6_defconfig  |  2 +-
 arch/arm/configs/rockchip_v7a_defconfig |  2 +-
 arch/arm/configs/rockchip_v8_defconfig  |  2 +-
 arch/arm/configs/rpi_defconfig          |  2 +-
 arch/arm/configs/stm32mp_defconfig      |  2 +-
 arch/riscv/Kconfig                      | 10 +---------
 arch/riscv/Kconfig.socs                 |  2 +-
 arch/riscv/configs/rv64i_defconfig      |  2 +-
 12 files changed, 34 insertions(+), 24 deletions(-)

diff --git a/Documentation/devicetree/index.rst b/Documentation/devicetree/index.rst
index f85ce6608d14..cd9270da1d21 100644
--- a/Documentation/devicetree/index.rst
+++ b/Documentation/devicetree/index.rst
@@ -120,7 +120,7 @@ from the `Device-Tree Compiler`_ project.
 .. _Device-Tree Compiler: https://git.kernel.org/pub/scm/utils/dtc/dtc.git
 
 These utilities are built as part of the barebox build process. Additionally,
-libfdt is compiled once more as part of the ``CONFIG_BOARD_ARM_GENERIC_DT``
+libfdt is compiled once more as part of the ``CONFIG_BOARD_GENERIC_DT``
 if selected.
 
 Steps to update ``scripts/dtc``:
@@ -129,7 +129,7 @@ Steps to update ``scripts/dtc``:
   directory of your barebox ``git-checkout``.
 * Run ``scripts/dtc/update-dtc-source.sh`` from the top-level barebox directory.
 * Wait till ``dtc`` build, test, install and commit conclude.
-* Compile-test with ``CONFIG_BOARD_ARM_GENERIC_DT=y``.
+* Compile-test with ``CONFIG_BOARD_GENERIC_DT=y``.
 * If ``scripts/dtc/Makefile`` or barebox include file changes are necessary,
   apply them manually in a commit preceding the ``dtc`` update.
 
diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index 43e5a631ba1a..c6969ae3de1d 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -204,9 +204,9 @@ Bringing barebox to a board for the first time is highly board specific, see you
 board documentation for initial bringup.
 
 For ARM and RISC-V, the barebox build can additionally generate a generic DT image
-(enable ``CONFIG_BOARD_ARM_GENERIC_DT`` or ``CONFIG_BOARD_RISCV_GENERIC_DT``,
-respectively). The resulting ``images/barebox-dt-2nd.img`` can be booted just
-like a Linux kernel that is passed an external device tree. For example:
+(enable ``CONFIG_BOARD_GENERIC_DT``). The resulting ``images/barebox-dt-2nd.img``
+can be booted just like a Linux kernel that is passed an external device tree.
+For example:
 
 .. code-block:: console
 
diff --git a/arch/Kconfig b/arch/Kconfig
index f6ac75eafd11..e1c08bcd7b99 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -29,3 +29,21 @@ config ARCH_LINUX_NAME
 config ARCH_MKIMAGE_NAME
 	string
 	default "invalid"
+
+config HAVE_ARCH_BOARD_GENERIC_DT
+	bool
+
+menu "General architecture-dependent options"
+
+config BOARD_GENERIC_DT
+	depends on HAVE_ARCH_BOARD_GENERIC_DT
+	bool "Build generic device tree 2nd stage image"
+	default y
+	help
+	  This enables compilation of a generic image that can be started 2nd
+	  stage from qemu, barebox, or other bootloaders. It picks up a device
+	  tree passed by the Linux kernel's boot convention for the given
+	  architecture and thus can be used anywhere that a Kernel image could be used.
+	  The image will be called images/barebox-dt-2nd.img
+
+endmenu
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index df730b96b815..1bf30a126dc5 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -14,6 +14,7 @@ config ARM
 	select RELOCATABLE
 	select PBL_RELOCATABLE
 	select USE_COMPRESSED_DTB
+	select HAVE_ARCH_BOARD_GENERIC_DT if OFDEVICE
 	default y
 
 config ARCH_LINUX_NAME
@@ -269,15 +270,14 @@ source "arch/arm/mach-zynqmp/Kconfig"
 
 config BOARD_ARM_VIRT
 	bool
-	select BOARD_ARM_GENERIC_DT
+	select BOARD_GENERIC_DT
 	select BOARD_QEMU_VIRT
 	select OF_OVERLAY
 
 config BOARD_ARM_GENERIC_DT
-	select BOARD_GENERIC_DT
+	def_bool BOARD_GENERIC_DT
 	select ARM_AMBA
 	depends on OFDEVICE
-	bool "Build generic ARM device tree 2nd stage image"
 	help
 	  This enables compilation of a generic image that can be started 2nd
 	  stage from barebox or from qemu. It picks up a device tree passed
diff --git a/arch/arm/configs/multi_v5_v6_defconfig b/arch/arm/configs/multi_v5_v6_defconfig
index d668ad6a8c22..7748ec43b0ce 100644
--- a/arch/arm/configs/multi_v5_v6_defconfig
+++ b/arch/arm/configs/multi_v5_v6_defconfig
@@ -8,7 +8,7 @@ CONFIG_MACH_PCA100=y
 CONFIG_MACH_PCM038=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
-CONFIG_BOARD_ARM_GENERIC_DT=y
+CONFIG_BOARD_GENERIC_DT=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
diff --git a/arch/arm/configs/rockchip_v7a_defconfig b/arch/arm/configs/rockchip_v7a_defconfig
index 5dc41bff3556..378ceb0e43f4 100644
--- a/arch/arm/configs/rockchip_v7a_defconfig
+++ b/arch/arm/configs/rockchip_v7a_defconfig
@@ -2,7 +2,7 @@ CONFIG_ARCH_ROCKCHIP=y
 CONFIG_CACHE_L2X0=y
 CONFIG_MACH_RADXA_ROCK=y
 CONFIG_MACH_PHYTEC_SOM_RK3288=y
-CONFIG_BOARD_ARM_GENERIC_DT=y
+CONFIG_BOARD_GENERIC_DT=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_BOARD_APPEND_ATAG=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index 6dbfd9a49c7f..83799ac492e7 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -7,7 +7,7 @@ CONFIG_MACH_PROTONIC_MECSBC=y
 CONFIG_MACH_RADXA_ROCK3=y
 CONFIG_MACH_RADXA_ROCK5=y
 CONFIG_MACH_RADXA_CM3=y
-CONFIG_BOARD_ARM_GENERIC_DT=y
+CONFIG_BOARD_GENERIC_DT=y
 CONFIG_64BIT=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_PSCI_CLIENT=y
diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
index 500c92a8218e..b280704ff187 100644
--- a/arch/arm/configs/rpi_defconfig
+++ b/arch/arm/configs/rpi_defconfig
@@ -3,7 +3,7 @@ CONFIG_MACH_RPI=y
 CONFIG_MACH_RPI2=y
 CONFIG_MACH_RPI3=y
 CONFIG_MACH_RPI_CM3=y
-CONFIG_BOARD_ARM_GENERIC_DT=y
+CONFIG_BOARD_GENERIC_DT=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
index 6ca11e5c2d7a..41e6540c55a2 100644
--- a/arch/arm/configs/stm32mp_defconfig
+++ b/arch/arm/configs/stm32mp_defconfig
@@ -7,7 +7,7 @@ CONFIG_MACH_STM32MP15X_EV1=y
 CONFIG_MACH_PROTONIC_STM32MP1=y
 CONFIG_MACH_PROTONIC_STM32MP13=y
 CONFIG_MACH_PHYTEC_PHYCORE_STM32MP1=y
-CONFIG_BOARD_ARM_GENERIC_DT=y
+CONFIG_BOARD_GENERIC_DT=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_BOARD_APPEND_ATAG=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index ad724565d7bb..be2146b3facb 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -17,6 +17,7 @@ config RISCV
 	select HAS_KALLSYMS
 	select RISCV_TIMER if RISCV_SBI
 	select HW_HAS_PCI
+	select HAVE_ARCH_BOARD_GENERIC_DT
 
 config ARCH_LINUX_NAME
 	string
@@ -71,15 +72,6 @@ config 64BIT
 	select ARCH_DMA_ADDR_T_64BIT
 	select PHYS_ADDR_T_64BIT
 
-config BOARD_RISCV_GENERIC_DT
-	select BOARD_GENERIC_DT
-	bool "Build generic RISC-V device tree 2nd stage image"
-	help
-	  This enables compilation of a generic image that can be started 2nd
-	  stage from barebox or from qemu. It picks up a device tree passed
-	  in a1 like the Kernel does, so it could be used anywhere where a Kernel
-	  image could be used. The image will be called images/barebox-dt-2nd.img
-
 menu "RISC-V specific settings"
 
 config RISCV_OPTIMZED_STRING_FUNCTIONS
diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index cef9cd52300c..ccda688faf6d 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -18,7 +18,7 @@ config BOARD_ERIZO_GENERIC
 config SOC_VIRT
 	bool "QEMU Virt Machine"
 	select RISCV_S_MODE
-	select BOARD_RISCV_GENERIC_DT
+	select BOARD_GENERIC_DT
 	select HAS_CACHE
 	select HAS_DEBUG_LL
 	help
diff --git a/arch/riscv/configs/rv64i_defconfig b/arch/riscv/configs/rv64i_defconfig
index 53c367c5e415..7f18ec08f37a 100644
--- a/arch/riscv/configs/rv64i_defconfig
+++ b/arch/riscv/configs/rv64i_defconfig
@@ -7,7 +7,7 @@ CONFIG_BOARD_ALLWINNER_D1=y
 CONFIG_BOARD_BEAGLEV=y
 CONFIG_BOARD_BEAGLEV_BETA=y
 CONFIG_BOARD_HIFIVE=y
-CONFIG_BOARD_RISCV_GENERIC_DT=y
+CONFIG_BOARD_GENERIC_DT=y
 CONFIG_RISCV_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_STACK_SIZE=0x20000
 CONFIG_MALLOC_SIZE=0x0
-- 
2.39.5




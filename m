Delivery-date: Tue, 07 Jan 2025 15:38:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVAjM-000Lpy-1e
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 15:38:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVAjI-0007pn-Pp
	for lore@pengutronix.de; Tue, 07 Jan 2025 15:38:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/2/L4GBSKcp2AjWtzuhF3RGNlFblgNOy+7AZbett1j4=; b=BzAZCMj+ITbYRwUxfxaNxfxRDs
	qV3+n1LdzvgxaybUTutT6uBb08W4NMbvCxTsL8cE+SXFxKYk3rX46JvrS3YsMHXxt/2L1EGz1cGL5
	WJ1iEPL0JdA/bcI9QeXs/XyZFc6IcIk0XGBo2ARiDzGiJReFagWKIrUqDN7aNiCfoVJmBRCA8gGM/
	pWc2f0tbPkS34k2Rnpz9ceEKL4XzBbzABdDUoP47aaMY7G6B/fAgFfOVNlZb9Wb3On3ygYd8gjnsN
	gOiiN2+TZ8tg9rDMNeBZOy0n9TdFUjarN8B9Y0y7r76pum+jkypEwEug9Rw+5id7qqliCfH4UalcO
	55vHG86A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVAie-00000005FMY-1k1s;
	Tue, 07 Jan 2025 14:38:08 +0000
Received: from zdiv.net ([46.226.106.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVAiY-00000005FEx-1ot9
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 14:38:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1736260669;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/2/L4GBSKcp2AjWtzuhF3RGNlFblgNOy+7AZbett1j4=;
	b=ibnCEawkI0DH4pW5n6lkJ3xNAMXPYmW/FBHVM4dNb+cB1002RxRk7XupVd/yxMIXp7R/cs
	e1lSO1iRt8ae683PGgCscv50lCIneLix89R4uf8bLtTU/+fGtmVUGzfTfldIkSgv/Kerr+
	oKnJ0u00j2vDYJHDepCHP0z5U1JHaaunjf4T2lVkpxekC1uArw7Zjf4EO5v/plWPNiqzvO
	focEJuhwJopdDMNDywgZVdt7sjtwGGfyNPNAK1wUWOD3a9CLBIFK79VdU3KqezfuIjJtRj
	K4JQVKp+Kjs4a8MpRnVcarTXyvd6/DvbIcB5gOzMlQbeszMADc4Y85igaSnxnQ==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:cfea:c4a:f4aa:bbd])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 410580db (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Tue, 7 Jan 2025 15:37:49 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Tue,  7 Jan 2025 15:37:39 +0100
Message-ID: <20250107143740.16903-6-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250107143740.16903-1-jmaselbas@zdiv.net>
References: <20250107143740.16903-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_063802_744330_97C01445 
X-CRM114-Status: GOOD (  14.07  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 5/6] ARM: sunxi: Introduce mach-sunxi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add some boilerplate, Makefiles, Kbuild.
A generic barebox-dt-2nd.img image can be build for A64 SoC using
the sunxi_v8_defconfig.

This image can be booted from u-boot and has been tested on Pine64+,
it should work on other A64 SoC such as the pinephone, and other Pine64
boards, it might also work on H6 SoC which uses the same sd/mmc controler.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
v1->v2:
 - removed RELOCATABLE and HAVE_PBL_MULTI_IMAGES from Kconfig (Ahmad)
 - used __dummy__.o insead of an empty file (Ahmad)
 - removed include/mach/sunxi/barebox-arm.h (Ahmad)

 arch/arm/Kconfig                    | 12 ++++++++++++
 arch/arm/Makefile                   |  1 +
 arch/arm/configs/sunxi_v8_defconfig | 12 ++++++++++++
 arch/arm/mach-sunxi/Kconfig         | 12 ++++++++++++
 arch/arm/mach-sunxi/Makefile        |  1 +
 5 files changed, 38 insertions(+)
 create mode 100644 arch/arm/configs/sunxi_v8_defconfig
 create mode 100644 arch/arm/mach-sunxi/Kconfig
 create mode 100644 arch/arm/mach-sunxi/Makefile

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 0251f2dcef..83adfaddf7 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -109,6 +109,17 @@ config ARCH_SOCFPGA
 	select CPU_V7
 	select COMMON_CLK
 
+config ARCH_SUNXI
+	bool "Allwinner SoCs"
+	depends on 64BIT
+	select CLKDEV_LOOKUP
+	select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
+	select GPIOLIB
+	select OFDEVICE
+	select OFTREE
+	select PINCTRL
+
 config ARCH_TEGRA
 	bool "NVIDIA Tegra"
 	depends on 32BIT
@@ -256,6 +267,7 @@ source "arch/arm/mach-omap/Kconfig"
 source "arch/arm/mach-pxa/Kconfig"
 source "arch/arm/mach-rockchip/Kconfig"
 source "arch/arm/mach-socfpga/Kconfig"
+source "arch/arm/mach-sunxi/Kconfig"
 source "arch/arm/mach-stm32mp/Kconfig"
 source "arch/arm/mach-versatile/Kconfig"
 source "arch/arm/mach-vexpress/Kconfig"
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 270f5dfdc1..e4041cf715 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -102,6 +102,7 @@ machine-$(CONFIG_ARCH_ROCKCHIP)		+= rockchip
 machine-$(CONFIG_ARCH_SAMSUNG)		+= samsung
 machine-$(CONFIG_ARCH_SOCFPGA)		+= socfpga
 machine-$(CONFIG_ARCH_STM32MP)		+= stm32mp
+machine-$(CONFIG_ARCH_SUNXI)		+= sunxi
 machine-$(CONFIG_ARCH_VERSATILE)	+= versatile
 machine-$(CONFIG_ARCH_VEXPRESS)		+= vexpress
 machine-$(CONFIG_ARCH_TEGRA)		+= tegra
diff --git a/arch/arm/configs/sunxi_v8_defconfig b/arch/arm/configs/sunxi_v8_defconfig
new file mode 100644
index 0000000000..ebadd1c950
--- /dev/null
+++ b/arch/arm/configs/sunxi_v8_defconfig
@@ -0,0 +1,12 @@
+CONFIG_ARCH_SUNXI=y
+CONFIG_64BIT=y
+CONFIG_BOARD_ARM_GENERIC_DT=y
+CONFIG_ARCH_SUN50I_A64=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_MCI=y
+CONFIG_MCI_SUNXI_SMHC=y
+CONFIG_CMD_DMESG=y
+CONFIG_MCI_STARTUP=y
+CONFIG_FS_FAT=y
+CONFIG_IMAGE_COMPRESSION_XZKERN=y
+CONFIG_MMU=y
diff --git a/arch/arm/mach-sunxi/Kconfig b/arch/arm/mach-sunxi/Kconfig
new file mode 100644
index 0000000000..e8d23772c2
--- /dev/null
+++ b/arch/arm/mach-sunxi/Kconfig
@@ -0,0 +1,12 @@
+if ARCH_SUNXI
+
+config ARCH_SUN50I_A64
+	bool "Allwinner A64 SoC"
+	select CPU_V8
+	select CPU_SUPPORTS_64BIT_KERNEL
+	select CLOCKSOURCE_ARM_ARCHITECTED_TIMER
+	select PINCTRL_SUN50I_A64
+	help
+	  Allwinner A64 (sun50iw1) SoC
+
+endif
diff --git a/arch/arm/mach-sunxi/Makefile b/arch/arm/mach-sunxi/Makefile
new file mode 100644
index 0000000000..16a218658a
--- /dev/null
+++ b/arch/arm/mach-sunxi/Makefile
@@ -0,0 +1 @@
+obj- := __dummy__.o
-- 
2.47.1




Delivery-date: Wed, 12 Feb 2025 11:57:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiAQR-001OWs-1P
	for lore@lore.pengutronix.de;
	Wed, 12 Feb 2025 11:57:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiAQQ-0000Fr-5V
	for lore@pengutronix.de; Wed, 12 Feb 2025 11:57:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tKRP0ToYzakr3cp1wHr6vlz5TNxmOgN2fXIc+uuri5g=; b=IcyMrY4WJ0kz6u+KVhM+MXXbUI
	BNZEEtDvyg5Oh5wIpVS2fu+lqaGMxtyRJFj7MoYIy4G/Lpp3qK6yHpO1AWBElehsMgWOWh/sblE0S
	YYBMdprTv7MbXo+noDbSrbbm/Xxcnm57UhrRXeGv4xa4G7p+S14+MImy3OSFT4zRyLe2TVyvkvsdk
	gYJctXX9Q9iuHqzSwWVMpAtAJd3FO9inkp5gtAEhnzZK/oLmSiuYZAJhSLMxXfZKqGlRs3Zed0VX+
	TYyB968EOIqTNLH7jw3vUsruA+yZsu2UkEYLFCXIphlZdULS0sMiHrtznrBPsdNS4lTgdkZjBKXc6
	qzfOf0jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiAPs-000000074S2-08x8;
	Wed, 12 Feb 2025 10:56:28 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiAJI-0000000734j-3Lgw
	for barebox@lists.infradead.org;
	Wed, 12 Feb 2025 10:49:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1739357365;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tKRP0ToYzakr3cp1wHr6vlz5TNxmOgN2fXIc+uuri5g=;
	b=gBrpERX4+eUQpUCyyM0mK/7fkROoF4ouHWNwuTALGILKfIHEQG6a5Yrvd0BDnbmbLExB/O
	pQk2ly6XT0CqlBPbhbBkKWFOyl7wy0vGFPfwKK01BndCviCM1w7jvbBMt42Iuci7BgLcul
	nETLy0G6r4lhk3LgaXegEFU/O8b4ldFfusv/w3tgPkmMNLHPg1byjJ3Wuj6NPxLLFxo0ji
	eVVWG318eXyqXX5q26oyzuMHLreQubMZwov/aLcHDZBX9BzVntXN30QJOPcp+RR0F/2JGr
	+32iqaWG9STPfASl0qxgsiUnxd8NHYYYw9uqqBLZQgE72lF2hkR2eo4h285/pA==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:6f02:8f71:b5f4:2800])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 9929e82c (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Wed, 12 Feb 2025 11:49:25 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Wed, 12 Feb 2025 11:48:41 +0100
Message-ID: <20250212104842.504-6-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250212104842.504-1-jmaselbas@zdiv.net>
References: <20250212104842.504-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_024941_121061_EC05EB16 
X-CRM114-Status: GOOD (  15.57  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 5/6] ARM: sunxi: Introduce mach-sunxi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add some boilerplate, Makefiles, Kbuild.
A generic barebox-dt-2nd.img image can be build for A64 SoC using
the multi_v8_defconfig.

This image can be booted from u-boot and has been tested on Pine64+,
it should work on other A64 SoC such as the pinephone, and other Pine64
boards, it might also work on H6 SoC which uses the same sd/mmc controler.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
v1->v2:
 - removed RELOCATABLE and HAVE_PBL_MULTI_IMAGES from Kconfig (Ahmad)
 - used __dummy__.o insead of an empty file (Ahmad)
 - removed include/mach/sunxi/barebox-arm.h (Ahmad)
v2->v3:
 - add arch sun50i-a64 + mci driver to the multi_v8_defconfig (Sascha)
 - remove the sunxi_v8_defconfig

 arch/arm/Kconfig                    | 12 ++++++++++++
 arch/arm/Makefile                   |  1 +
 arch/arm/configs/multi_v8_defconfig |  2 ++
 arch/arm/mach-sunxi/Kconfig         | 13 +++++++++++++
 arch/arm/mach-sunxi/Makefile        |  1 +
 5 files changed, 29 insertions(+)
 create mode 100644 arch/arm/mach-sunxi/Kconfig
 create mode 100644 arch/arm/mach-sunxi/Makefile

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 2e52ed7b50..3d8f2eeca7 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -173,6 +173,17 @@ config ARCH_K3
 	select COMMON_CLK_OF_PROVIDER
 	select PM_GENERIC_DOMAINS
 
+config ARCH_SUNXI
+	bool "Allwinner (sunxi) SoCs"
+	depends on ARCH_MULTIARCH
+	select CLKDEV_LOOKUP
+	select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
+	select GPIOLIB
+	select OFDEVICE
+	select OFTREE
+	select PINCTRL
+
 config ARCH_LAYERSCAPE
 	bool "NXP Layerscape based"
 	depends on ARCH_MULTIARCH
@@ -259,6 +270,7 @@ source "arch/arm/mach-omap/Kconfig"
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
diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index 20bd0575f5..b1e66e85f4 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -3,6 +3,7 @@ CONFIG_ARCH_IMX=y
 CONFIG_ARCH_K3=y
 CONFIG_ARCH_LAYERSCAPE=y
 CONFIG_ARCH_ROCKCHIP=y
+CONFIG_ARCH_SUN50I_A64=y
 CONFIG_ARCH_ZYNQMP=y
 CONFIG_MACH_KOENIGBAUER_ALPHAJET=y
 CONFIG_MACH_INNOCOMM_WB15=y
@@ -207,6 +208,7 @@ CONFIG_MCI=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_DW=y
 CONFIG_MCI_ROCKCHIP_DWCMSHC=y
+CONFIG_MCI_SUNXI_SMHC=y
 CONFIG_MCI_IMX_ESDHC=y
 CONFIG_MCI_ARASAN=y
 CONFIG_COMMON_CLK_SCMI=y
diff --git a/arch/arm/mach-sunxi/Kconfig b/arch/arm/mach-sunxi/Kconfig
new file mode 100644
index 0000000000..4fdd0877bf
--- /dev/null
+++ b/arch/arm/mach-sunxi/Kconfig
@@ -0,0 +1,13 @@
+menu "Allwinner (sunxi) boards"
+        depends on ARCH_SUNXI
+
+config ARCH_SUN50I_A64
+	bool "Allwinner A64 SoC"
+	select CPU_V8
+	select CPU_SUPPORTS_64BIT_KERNEL
+	select CLOCKSOURCE_ARM_ARCHITECTED_TIMER
+	select PINCTRL_SUN50I_A64
+	depends on 64BIT
+	default y
+
+endmenu
diff --git a/arch/arm/mach-sunxi/Makefile b/arch/arm/mach-sunxi/Makefile
new file mode 100644
index 0000000000..16a218658a
--- /dev/null
+++ b/arch/arm/mach-sunxi/Makefile
@@ -0,0 +1 @@
+obj- := __dummy__.o
-- 
2.48.1




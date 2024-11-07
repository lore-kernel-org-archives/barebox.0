Delivery-date: Thu, 07 Nov 2024 16:00:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t93zS-005xax-1H
	for lore@lore.pengutronix.de;
	Thu, 07 Nov 2024 16:00:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t93zS-0001wd-EZ
	for lore@pengutronix.de; Thu, 07 Nov 2024 16:00:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CPd4ODVHGCzt67kUn7jQOtFtcwfFWRs24WQn8ze6HH0=; b=tJlFwyWJirsRm+s0UE8DnXGR5m
	shCVQKy1a7Ogs+Imsn5wdI8+ltgZY4qYupuEq9MeUH9Z3x1I5Dyfie3Ybqj+MLvbpg4sG3RRJibgQ
	G0YsgohUHTwtW+Vxh1efr1e64IUNotzCAp2r5U1B1GNhccBvQJEmheJVuvLpKdiIt8jyCUkrbZIjc
	iFeXpo4KqIfypRgV/U+DNMYaAh7Qr1Uz2tvhT4Aqq1lVtqnAeovZRHmIrWs64J0Laq+bX/o4oAmJ8
	RS8ic5O85D+ln6bWUUj+Z9MMDHvjTtsw1sVGp/DBnaw+PT7/CgGdpyecuJ6RwgztBh4rQMJbEb3XQ
	9xqvQ8NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t93yt-00000007Mch-1d8x;
	Thu, 07 Nov 2024 14:59:31 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t93x6-00000007MBO-1pTd
	for barebox@lists.infradead.org;
	Thu, 07 Nov 2024 14:57:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1730991449;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CPd4ODVHGCzt67kUn7jQOtFtcwfFWRs24WQn8ze6HH0=;
	b=WekgUuGTfeQNUG45vIooYFVnzC0iSLS+TZV2snokNFmMqMoXu2gWvc0+a/YFKwCTMQpGQ1
	q4HnWm1t6Y6i0cNkG9KzbcxaGC2aM0OhAJaL3mkDuGAmcHextPlGRuw5Vr41RvVLRzkH/P
	Cy+Qg4r3BpjTKmL/gmlg8Sk0aj/L/D6CviOLC8oAlL/k57GC/gI32quxo/T+RNX7CZ/+G0
	lct6iXemWbBpHC/5aJrIPuD0DO3csHLBm5uMrOgHGxRn7/bplUq/l5yDDzxsTJFweipLaq
	rNj9I9h2MZxCzk7czCyRigR+hzzAKHBMTCRm0myGoi0Kug3cjnv91TmlQZ2n6Q==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:1b71:4dca:dfdc:1e52])
	by zdiv.net (OpenSMTPD) with ESMTPSA id c64fa74a (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Thu, 7 Nov 2024 15:57:29 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Thu,  7 Nov 2024 15:57:22 +0100
Message-ID: <20241107145722.5145-7-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241107145722.5145-1-jmaselbas@zdiv.net>
References: <20241107145722.5145-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_065740_864968_91E6DCCC 
X-CRM114-Status: GOOD (  13.61  )
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
Subject: [PATCH 6/6] ARM: sunxi: Introduce mach-sunxi
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
 arch/arm/Kconfig                    | 14 ++++++++++++++
 arch/arm/Makefile                   |  1 +
 arch/arm/configs/sunxi_v8_defconfig | 12 ++++++++++++
 arch/arm/mach-sunxi/Kconfig         | 12 ++++++++++++
 arch/arm/mach-sunxi/Makefile        |  1 +
 arch/arm/mach-sunxi/common.c        |  0
 include/mach/sunxi/barebox-arm.h    |  7 +++++++
 7 files changed, 47 insertions(+)
 create mode 100644 arch/arm/configs/sunxi_v8_defconfig
 create mode 100644 arch/arm/mach-sunxi/Kconfig
 create mode 100644 arch/arm/mach-sunxi/Makefile
 create mode 100644 arch/arm/mach-sunxi/common.c
 create mode 100644 include/mach/sunxi/barebox-arm.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 9b90c8009a..fa163f182c 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -109,6 +109,19 @@ config ARCH_SOCFPGA
 	select CPU_V7
 	select COMMON_CLK
 
+config ARCH_SUNXI
+	bool "Allwinner SoCs"
+	depends on 64BIT
+	select CLKDEV_LOOKUP
+	select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
+	select GPIOLIB
+	select HAVE_PBL_MULTI_IMAGES
+	select OFDEVICE
+	select OFTREE
+	select PINCTRL
+	select RELOCATABLE
+
 config ARCH_TEGRA
 	bool "NVIDIA Tegra"
 	depends on 32BIT
@@ -256,6 +269,7 @@ source "arch/arm/mach-omap/Kconfig"
 source "arch/arm/mach-pxa/Kconfig"
 source "arch/arm/mach-rockchip/Kconfig"
 source "arch/arm/mach-socfpga/Kconfig"
+source "arch/arm/mach-sunxi/Kconfig"
 source "arch/arm/mach-stm32mp/Kconfig"
 source "arch/arm/mach-versatile/Kconfig"
 source "arch/arm/mach-vexpress/Kconfig"
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 6785432c52..d562892a98 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -96,6 +96,7 @@ machine-$(CONFIG_ARCH_ROCKCHIP)		+= rockchip
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
index 0000000000..f95691b59a
--- /dev/null
+++ b/arch/arm/mach-sunxi/Makefile
@@ -0,0 +1 @@
+obj-y += common.o
diff --git a/arch/arm/mach-sunxi/common.c b/arch/arm/mach-sunxi/common.c
new file mode 100644
index 0000000000..e69de29bb2
diff --git a/include/mach/sunxi/barebox-arm.h b/include/mach/sunxi/barebox-arm.h
new file mode 100644
index 0000000000..2ce1db587b
--- /dev/null
+++ b/include/mach/sunxi/barebox-arm.h
@@ -0,0 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef MACH_SUNXI_BAREBOX_ARM_H
+#define MACH_SUNXI_BAREBOX_ARM_H
+
+#include <asm/barebox-arm.h>
+
+#endif
-- 
2.46.2




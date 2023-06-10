Delivery-date: Sat, 10 Jun 2023 12:33:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7vuX-000xwJ-Hw
	for lore@lore.pengutronix.de; Sat, 10 Jun 2023 12:33:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7vuU-0006ut-HY
	for lore@pengutronix.de; Sat, 10 Jun 2023 12:33:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FPgemaQDaUp8Le1t4KHmzXdDfyZmWJMb/niQdwmz8nU=; b=NnNuVmbH8h1zby
	fQEKeGJY3eyK+jkxL4y9vyLAqMbxgV3r0scW/lbmLFKSOQbd9rc4gBd4KPL/SKSwH+oequqmmSbBi
	VHI3BDAD12RVp1fedg/41aiPxJe2RACb3qI40vuTHqWB1pItS24o20TqdWlu4inD5dVJyVu/rmoJK
	SbGgCLXNoubo+b476J9eMJmZEFUXFAidumYAmCg4VKM+LwWvB5LLn6gvW75ds4tMotmkV7pNkFPfj
	XntXAF6DpbSpSgyane4i6h6yNX9DdsLP6/6YSFVCyMytDV5GrYHtvq0Rq2TwmMEkalYJPVrCFHvDF
	V4VOeieV1UVSpTX4x7mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7vtC-00FqUC-1p;
	Sat, 10 Jun 2023 10:32:10 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7vt6-00FqO8-2W
	for barebox@lists.infradead.org;
	Sat, 10 Jun 2023 10:32:07 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2b203891b2cso29569481fa.3
        for <barebox@lists.infradead.org>; Sat, 10 Jun 2023 03:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686393121; x=1688985121;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FPgemaQDaUp8Le1t4KHmzXdDfyZmWJMb/niQdwmz8nU=;
        b=qNAoBQr59agMMWHRwK/2sFnOPrxP73SyUMTBtJTtVGXj1eK9Y7XOUTMwilDR+pPnPm
         lpkUDQL9GQA38rZD22K58aVut8UXtcmWWpQa0Srte9oReuL0HwVC90awlvmSVMmF3fgg
         j3o1KPo5ViDYinIIz/pnXdBtfUYGkgoGCFiNFInSSnWWZrz2AFQmIFRdrefz6gH+CiTV
         x95pcYOsYXh3TECTka6nsLi/qW6HeDUdmLStBZSsJ4OzOJ3AnY4zgXwT/LDfQ07GOIEy
         DnZ1DbkAis2RBXxJVU3Nj/S17UI5a22HWQfT0eT/GQxITM7qhDtSQVHs+UdXwBxZm/Sz
         qULA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686393121; x=1688985121;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FPgemaQDaUp8Le1t4KHmzXdDfyZmWJMb/niQdwmz8nU=;
        b=EejitzLCg3qgVWXOcznsom9rFQ8lpjaKSiAgBHbVtL3Q3MJB70kqchQbDGPgB9nSP1
         NV8ClUwb3dOG2WqoT4S9wyA2J2wzYbSBXAD2JqrymDFyc3flDZRkmgOfUrL1T0oMFKOM
         VXcZ+pbfhl8svZTEReTn5WsL8fnqyL8pIuVmcjfVsjWlLuMRgF2nKuf1zpqCSiy1V8sr
         KfNHFc5vS0uLQIZ+R21pJ6+1yM0g+Z/NIaihDWSezJIS2E4sS+l4rGx6ei+E5TbRwMSQ
         sw8mM6DYm3hNh2fXSN7tbCSozWLIehcxQhgtilkmWlwzkJf6Of3ORTMOAKtCo4iBtLnQ
         ld8A==
X-Gm-Message-State: AC+VfDx/oJCI0yI/yRLuabXcRvfMyZu1+yk4cMK2UlFqLaemTCnWmCxj
	RQNA61g/IU+D6z988OIXka2JLJTh/74=
X-Google-Smtp-Source: ACHHUZ5NBiZB4cvkZIpfe1khGBS4XPjzYeufASjYhTYzThDdSB6/O4RQY6M2VL13eAbbUerv1DP4ow==
X-Received: by 2002:a2e:a0ce:0:b0:2b0:2d23:79b with SMTP id f14-20020a2ea0ce000000b002b02d23079bmr521269ljm.3.1686393121169;
        Sat, 10 Jun 2023 03:32:01 -0700 (PDT)
Received: from cinco.. ([109.252.8.26])
        by smtp.gmail.com with ESMTPSA id s16-20020a2e81d0000000b002adf8d948dasm792727ljg.35.2023.06.10.03.32.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Jun 2023 03:32:00 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Sat, 10 Jun 2023 13:32:18 +0300
Message-Id: <20230610103220.566369-3-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230610103220.566369-1-antonynpavlov@gmail.com>
References: <20230610103220.566369-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230610_033204_832273_18E63679 
X-CRM114-Status: GOOD (  13.19  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFC 2/4] ARM: add sc6531e and F+ Ezzy 4 phone support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/Kconfig                          |  9 +++++
 arch/arm/Makefile                         |  1 +
 arch/arm/boards/Makefile                  |  1 +
 arch/arm/boards/ezzy-4/Makefile           |  3 ++
 arch/arm/boards/ezzy-4/env/init/automount | 27 +++++++++++++
 arch/arm/boards/ezzy-4/lowlevel.c         | 19 +++++++++
 arch/arm/configs/ezzy-4_defconfig         | 49 +++++++++++++++++++++++
 arch/arm/dts/Makefile                     |  1 +
 arch/arm/dts/ezzy-4.dts                   | 22 ++++++++++
 arch/arm/mach-sc6531e/Kconfig             | 17 ++++++++
 arch/arm/mach-sc6531e/Makefile            |  3 ++
 11 files changed, 152 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index e76ee0f6dfe..b46d73f5084 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -84,6 +84,14 @@ config ARCH_DIGIC
 	help
 	  Support for Canon's digital cameras that use the DIGIC4 chip.
 
+config ARCH_SC6531E
+	bool "SC6531E-based devices"
+	depends on 32BIT
+	select CPU_ARM926T
+	select GPIOLIB
+	help
+	  Support for feature phones based on the SC6531E chipset.
+
 config ARCH_EP93XX
 	bool "Cirrus Logic EP93xx"
 	depends on 32BIT
@@ -330,6 +338,7 @@ source "arch/arm/mach-nomadik/Kconfig"
 source "arch/arm/mach-omap/Kconfig"
 source "arch/arm/mach-pxa/Kconfig"
 source "arch/arm/mach-rockchip/Kconfig"
+source "arch/arm/mach-sc6531e/Kconfig"
 source "arch/arm/mach-socfpga/Kconfig"
 source "arch/arm/mach-stm32mp/Kconfig"
 source "arch/arm/mach-versatile/Kconfig"
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 2208b071ac1..96a32aca8b4 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -104,6 +104,7 @@ machine-$(CONFIG_ARCH_OMAP)		+= omap
 machine-$(CONFIG_ARCH_PXA)		+= pxa
 machine-$(CONFIG_ARCH_ROCKCHIP)		+= rockchip
 machine-$(CONFIG_ARCH_SAMSUNG)		+= samsung
+machine-$(CONFIG_ARCH_SC6531E)		+= sc6531e
 machine-$(CONFIG_ARCH_SOCFPGA)		+= socfpga
 machine-$(CONFIG_ARCH_STM32MP)		+= stm32mp
 machine-$(CONFIG_ARCH_VERSATILE)	+= versatile
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 2877debad53..8abd8872757 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -44,6 +44,7 @@ obj-$(CONFIG_MACH_EMBEST_MARSBOARD)		+= embest-marsboard/
 obj-$(CONFIG_MACH_EMBEST_RIOTBOARD)		+= embest-riotboard/
 obj-$(CONFIG_MACH_ELTEC_HIPERCAM)		+= eltec-hipercam/
 obj-y						+= freescale-mx51-babbage/
+obj-$(CONFIG_MACH_EZZY4)			+= ezzy-4/
 obj-$(CONFIG_MACH_FREESCALE_MX53_LOCO)		+= freescale-mx53-qsb/
 obj-$(CONFIG_MACH_FREESCALE_MX53_VMX53)		+= freescale-mx53-vmx53/
 obj-$(CONFIG_MACH_FREESCALE_MX7_SABRESD)	+= freescale-mx7-sabresd/
diff --git a/arch/arm/boards/ezzy-4/Makefile b/arch/arm/boards/ezzy-4/Makefile
new file mode 100644
index 00000000000..458f5209008
--- /dev/null
+++ b/arch/arm/boards/ezzy-4/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/ezzy-4/env/init/automount b/arch/arm/boards/ezzy-4/env/init/automount
new file mode 100644
index 00000000000..6be2b6508a0
--- /dev/null
+++ b/arch/arm/boards/ezzy-4/env/init/automount
@@ -0,0 +1,27 @@
+#!/bin/sh
+
+version
+echo
+help
+echo
+cpuinfo
+echo
+iomem
+echo
+meminfo
+echo
+of_dump
+echo
+drvinfo
+echo
+
+timeout 3
+echo
+
+echo sleep 0
+sleep 1
+echo sleep 1
+sleep 1
+echo sleep 2
+sleep 1
+echo sleep 3
diff --git a/arch/arm/boards/ezzy-4/lowlevel.c b/arch/arm/boards/ezzy-4/lowlevel.c
new file mode 100644
index 00000000000..e06ac493bc6
--- /dev/null
+++ b/arch/arm/boards/ezzy-4/lowlevel.c
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <linux/sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+extern char __dtb_ezzy_4_start[];
+
+void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+{
+	void *fdt;
+
+	arm_cpu_lowlevel_init();
+
+	fdt = __dtb_ezzy_4_start + get_runtime_offset();
+
+	barebox_arm_entry(0x14000000, SZ_4M, fdt);
+}
diff --git a/arch/arm/configs/ezzy-4_defconfig b/arch/arm/configs/ezzy-4_defconfig
new file mode 100644
index 00000000000..4701f78fc6a
--- /dev/null
+++ b/arch/arm/configs/ezzy-4_defconfig
@@ -0,0 +1,49 @@
+CONFIG_TEXT_BASE=0x14300000
+CONFIG_ARCH_SC6531E=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
+CONFIG_IMAGE_COMPRESSION_NONE=y
+CONFIG_MALLOC_SIZE=0x100000
+CONFIG_PROMPT="ezzy-4 > "
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/ezzy-4/env"
+CONFIG_DEBUG_LL=y
+CONFIG_DEBUG_INITCALLS=y
+CONFIG_DEBUG_PBL=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+# CONFIG_CMD_BOOTM is not set
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_GO=y
+# CONFIG_CMD_MOUNT is not set
+# CONFIG_CMD_UMOUNT is not set
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_MD5SUM=y
+# CONFIG_CMD_PWD is not set
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_SLEEP=y
+# CONFIG_CMD_CLEAR is not set
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_CMD_UPTIME=y
+CONFIG_OFDEVICE=y
+# CONFIG_SPI is not set
+CONFIG_CLOCKSOURCE_DUMMY_RATE=2000
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_ZLIB=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 98f4c4e0194..ef21d1ab60c 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -8,6 +8,7 @@ lwl-$(CONFIG_MACH_ADVANTECH_ROM_742X) += imx6dl-advantech-rom-7421.dtb.o
 lwl-$(CONFIG_MACH_AFI_GF) += am335x-afi-gf.dtb.o
 lwl-$(CONFIG_MACH_BEAGLEBONE) += am335x-bone.dtb.o am335x-boneblack.dtb.o am335x-bone-common.dtb.o
 lwl-$(CONFIG_MACH_CANON_A1100) += canon-a1100.dtb.o
+lwl-$(CONFIG_MACH_EZZY4) += ezzy-4.dtb.o
 lwl-$(CONFIG_MACH_CLEP7212) += ep7212-clep7212.dtb.o
 lwl-$(CONFIG_MACH_CM_FX6) += imx6dl-cm-fx6.dtb.o imx6q-cm-fx6.dtb.o imx6q-utilite.dtb.o
 lwl-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs700-m60-6s.dtb.o
diff --git a/arch/arm/dts/ezzy-4.dts b/arch/arm/dts/ezzy-4.dts
new file mode 100644
index 00000000000..7b326bb23c8
--- /dev/null
+++ b/arch/arm/dts/ezzy-4.dts
@@ -0,0 +1,22 @@
+/dts-v1/;
+
+/ {
+	model = "F+ Ezzy 4";
+	compatible = "f+,ezzy-4";
+
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	chosen { };
+
+	memory {
+		device_type = "memory";
+		reg = <0x14000000 0x00400000>;
+	};
+
+	timer: timer@81003000 {
+		compatible = "sc6531e-timer";
+		reg = <0x81003000 0x100>;
+		status = "okay";
+	};
+};
diff --git a/arch/arm/mach-sc6531e/Kconfig b/arch/arm/mach-sc6531e/Kconfig
new file mode 100644
index 00000000000..f0c4b16550c
--- /dev/null
+++ b/arch/arm/mach-sc6531e/Kconfig
@@ -0,0 +1,17 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+if ARCH_SC6531E
+
+choice
+	prompt "board type"
+
+config MACH_EZZY4
+	bool "F+ Ezzy 4"
+
+endchoice
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x00001900 if MACH_EZZY4
+
+endif
diff --git a/arch/arm/mach-sc6531e/Makefile b/arch/arm/mach-sc6531e/Makefile
new file mode 100644
index 00000000000..1c2b374603c
--- /dev/null
+++ b/arch/arm/mach-sc6531e/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+obj- := __dummy__.o
-- 
2.39.0




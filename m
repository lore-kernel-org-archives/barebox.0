Delivery-date: Fri, 03 Mar 2023 10:31:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1ld-007O6t-8v
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:31:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1lc-00056P-9H
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:31:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0aqsXV6xEixeY0qXIZThreuuXPMUWurWzEGz0Seu6Mg=; b=ephIXn/6r4l4YJMUd0Luh21ZVZ
	en0kVc6/jQfxgXen8lilvNt1KYo3qaY9edCTfiVzyIqyufAGGWOd52rbfk3efy2G8/rh9qRaRZZR0
	dvtInZAIF+6O4AWNwiTnx5dJWc9tM2HEVR/7y8fN2JiKJfFF7V21R5benhD2UVhr+lQhincXFWBJN
	aNtDac1Krj3hP7GHfjCVY+0Q0VXlrJvZjpg/y2/hsJgRFxIgIc/1oyKgQTwq7qelVg7CiGyNt2mxU
	HwtJCIkENebHC/gDm1zodhIT00G3dmGdyH3L88T+4o+YLo1ezAarqsbuo2dt5SGGx7j7JDCwbbUlF
	P0R9todg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1kO-005kqp-LM; Fri, 03 Mar 2023 09:30:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1cL-005epV-23
	for barebox@bombadil.infradead.org; Fri, 03 Mar 2023 09:22:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=0aqsXV6xEixeY0qXIZThreuuXPMUWurWzEGz0Seu6Mg=; b=fQziMYXLaxTjAlHSmayzG/latv
	VgXkJ9FJVNG5YgC6y6uUfCzmRMmkE7AEQ3w26/8+ev+cXAwZ0FXEs8zWCcAGxBtlGW7hL+h0auIU7
	isd3mIkXHe5Bh1l7mTXXjWtcFxYwoYwub9HvMa+F1QxAB6qyP07TbOQt8Je1fQ8YNXtuwfvEgiMBO
	j+2SjnsSEZu8E0uuWxUfXtXKP/UEesiKtV+O8nmMW+0LIS2NAZLomOPuIy1iKUFvU6s6SBNDquI11
	c+xLt6wI3fSfWJTyBQs+c5ppmKReH7W/iyHFvqckuX3PBQRLoRnDYilaXjh0gUastHzpnDV/Lm8S5
	HjGlrhWQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pY1bs-00FdLE-15
	for barebox@lists.infradead.org;
	Fri, 03 Mar 2023 09:22:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bj-0000Hn-MR; Fri, 03 Mar 2023 10:21:43 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bi-001Wjf-W2; Fri, 03 Mar 2023 10:21:43 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bb-00F2kC-1S; Fri, 03 Mar 2023 10:21:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:21:19 +0100
Message-Id: <20230303092131.3063587-39-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_092153_277956_03925C05 
X-CRM114-Status: GOOD (  11.78  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 38/50] ARM: zynqmp: Add multi-arch support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                | 32 ++++++++++++++++----------------
 arch/arm/include/asm/debug_ll.h |  6 ++++--
 arch/arm/mach-zynqmp/zynqmp.c   |  3 +++
 common/Kconfig                  |  7 +++++++
 4 files changed, 30 insertions(+), 18 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 7ac24ba1de..a7b8b0da01 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -231,22 +231,6 @@ config ARCH_ZYNQ
 	select PBL_IMAGE
 	select GPIOLIB
 
-config ARCH_ZYNQMP
-	bool "Xilinx ZynqMP-based boards"
-	select CPU_V8
-	select HAS_DEBUG_LL
-	select HAVE_PBL_MULTI_IMAGES
-	select ARM_SMCCC
-	select COMMON_CLK
-	select COMMON_CLK_OF_PROVIDER
-	select CLKDEV_LOOKUP
-	select GPIOLIB
-	select OFDEVICE
-	select OFTREE
-	select RELOCATABLE
-	select CPU_SUPPORTS_64BIT_KERNEL
-	select HAS_MACB
-
 config ARCH_ARM64_VIRT
 	bool "ARM64 QEMU Virt board"
 	select CPU_V8
@@ -296,6 +280,22 @@ config ARCH_ROCKCHIP
 	select HAVE_PBL_MULTI_IMAGES
 	select HAS_DEBUG_LL
 
+config ARCH_ZYNQMP
+	bool "Xilinx ZynqMP-based boards"
+	select CPU_V8
+	select HAS_DEBUG_LL
+	select HAVE_PBL_MULTI_IMAGES
+	select ARM_SMCCC
+	select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
+	select CLKDEV_LOOKUP
+	select GPIOLIB
+	select OFDEVICE
+	select OFTREE
+	select RELOCATABLE
+	select CPU_SUPPORTS_64BIT_KERNEL
+	select HAS_MACB
+
 source "arch/arm/cpu/Kconfig"
 source "arch/arm/mach-at91/Kconfig"
 source "arch/arm/mach-bcm283x/Kconfig"
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index 7c1152c6d9..8005980f28 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -15,11 +15,13 @@
 #include <mach/omap/debug_ll.h>
 #endif
 
+#ifdef CONFIG_DEBUG_ZYNQMP_UART
+#include <mach/zynqmp/debug_ll.h>
+#endif
+
 #ifdef CONFIG_DEBUG_QEMU_ARM64_VIRT
 #define DEBUG_LL_UART_ADDR		0x9000000
 #include <debug_ll/pl011.h>
-#elif defined CONFIG_ARCH_ZYNQMP
-#include <mach/zynqmp/debug_ll.h>
 #elif defined CONFIG_ARCH_MVEBU
 #include <mach/mvebu/debug_ll.h>
 #elif defined CONFIG_ARCH_DAVINCI
diff --git a/arch/arm/mach-zynqmp/zynqmp.c b/arch/arm/mach-zynqmp/zynqmp.c
index 312325956a..f86bda1693 100644
--- a/arch/arm/mach-zynqmp/zynqmp.c
+++ b/arch/arm/mach-zynqmp/zynqmp.c
@@ -147,6 +147,9 @@ static int zynqmp_init(void)
 	enum bootsource boot_src;
 	int boot_instance;
 
+	if (!of_machine_is_compatible("xlnx,zynqmp"))
+		return 0;
+
 	zynqmp_get_bootsource(&boot_src, &boot_instance);
 	bootsource_set_raw(boot_src, boot_instance);
 
diff --git a/common/Kconfig b/common/Kconfig
index eeb33f3042..c396c3a238 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1470,6 +1470,13 @@ config DEBUG_RPI4_MINI_UART
 	  Say Y here if you want low-level debugging support on
 	  RaspberryPi 4 board mini UART.
 
+config DEBUG_ZYNQMP_UART
+	bool "Zynqmp Debug UART"
+	depends on ARCH_ZYNQMP
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on Zynqmp.
+
 config DEBUG_ERIZO
 	bool "Erizo ns16550 port"
 	depends on SOC_ERIZO
-- 
2.30.2




Delivery-date: Fri, 14 Jan 2022 09:40:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8I81-001sZL-1i
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 09:40:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8I7z-0000yA-GB
	for lore@pengutronix.de; Fri, 14 Jan 2022 09:40:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lEB6iH6/2wiSYJvQjSba8tPkhKkURMiBmAD6whnb858=; b=H4FtqDppHo0a+K
	A1TVaO2kuEcyTF7kWfedBmYLJcH3jUUBUmMfzVilHL18LPTQ7N1J6FA29kMEyg9wNPq+T3odNh7I4
	MUPHD3EJXmBx9YJUFF+9hdJsY8thH5BBx4LPhXy7SrP40iepDxlUpyqofNK4nI1HawjYkY578nL94
	yXdYm1ToSL/VhhxPn/fJBhi1XdIVxGZcDIwAhYuHqIXJ9j6xPG3SkCv0zgwhK1jVbDNFDxtM+s5xf
	BU6+cIIwwscrhkhJrOoADksUhAsGwKSpndqiksueQUcC6+yxmFGo2SjMiGqZr6HiG9fyGn2TY5qSg
	6MRF75SaDYafqh1UEN7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8I6m-008IHB-UL; Fri, 14 Jan 2022 08:38:53 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8I6T-008ICF-8G
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 08:38:35 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 617911C000D;
 Fri, 14 Jan 2022 08:38:30 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 14 Jan 2022 09:38:24 +0100
Message-Id: <20220114083825.726347-2-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220114083825.726347-1-ahmad@a3f.at>
References: <20220114083825.726347-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_003833_588137_9592954B 
X-CRM114-Status: GOOD (  16.29  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] ARM64: rockchip: add config symbol for ARMv8-based rk3399
 SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

As preperation for adding support for the RK3399-based Radxa Rock Pi
N10, define the ARCH_RK3399 config symbol and associated boilerplate.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/mach-rockchip/Kconfig                 | 18 +++++++++++++++++-
 arch/arm/mach-rockchip/atf.c                   |  4 ++++
 arch/arm/mach-rockchip/include/mach/atf.h      |  6 ++++++
 arch/arm/mach-rockchip/include/mach/debug_ll.h |  6 ++++++
 .../mach-rockchip/include/mach/rk3399-regs.h   | 16 ++++++++++++++++
 common/Kconfig                                 | 10 +++++++++-
 firmware/Makefile                              |  2 ++
 7 files changed, 60 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/mach-rockchip/include/mach/rk3399-regs.h

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 596de663f9e3..98ef35769ffd 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -6,7 +6,7 @@ menu "Rockchip Features"
 config ARCH_TEXT_BASE
 	hex
 	default 0x68000000 if ARCH_RK3188
-	default 0x0 if ARCH_RK3288
+	default 0x0
 
 config RK_TIMER
 	hex
@@ -32,6 +32,15 @@ config ARCH_ROCKCHIP_V8
 	select CPU_V8
 	select SYS_SUPPORTS_64BIT_KERNEL
 	select ARM_ATF
+	select RELOCATABLE
+
+config ARCH_RK3399
+	bool
+	select ARCH_ROCKCHIP_V8
+
+config ARCH_RK3399PRO
+	bool
+	select ARCH_RK3399
 
 config ARCH_RK3568
 	bool
@@ -66,6 +75,13 @@ config MACH_PINE64_QUARTZ64
 
 comment "select board features:"
 
+config ARCH_RK3399_OPTEE
+	bool "Build rk3399 OP-TEE binary into barebox"
+	depends on ARCH_RK3399
+	help
+	  With this option enabled the RK3399 OP-TEE binary is compiled
+	  into barebox and started along with the BL31 trusted firmware.
+
 config ARCH_RK3568_OPTEE
 	bool "Build rk3568 OP-TEE binary into barebox"
 	depends on ARCH_RK3568
diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index de22784489b5..0512ff99f456 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -60,6 +60,10 @@ static unsigned long load_elf64_image_phdr(const void *elf)
 		   SOC##_BAREBOX_LOAD_ADDRESS, (uintptr_t)fdt);                 \
 } while (0)                                                                     \
 
+void rk3399_atf_load_bl31(void *fdt)
+{
+	rockchip_atf_load_bl31(RK3399, rk3399_bl31_bin, rk3399_op_tee_bin, fdt);
+}
 
 void rk3568_atf_load_bl31(void *fdt)
 {
diff --git a/arch/arm/mach-rockchip/include/mach/atf.h b/arch/arm/mach-rockchip/include/mach/atf.h
index ab328cc8d20a..d1bae5a7714f 100644
--- a/arch/arm/mach-rockchip/include/mach/atf.h
+++ b/arch/arm/mach-rockchip/include/mach/atf.h
@@ -4,17 +4,23 @@
 #define __MACH_ATF_H
 
 /* First usable DRAM address. Lower mem is used for ATF and OP-TEE */
+#define RK3399_DRAM_BOTTOM		0xa00000
 #define RK3568_DRAM_BOTTOM		0xa00000
 
 /* OP-TEE expects to be loaded here */
+#define RK3399_OPTEE_LOAD_ADDRESS	0x200000
 #define RK3568_OPTEE_LOAD_ADDRESS	0x200000
 
 /*
  * board lowlevel code should relocate barebox here. This is where
  * OP-TEE jumps to after initialization.
  */
+#define RK3399_BAREBOX_LOAD_ADDRESS	(RK3399_DRAM_BOTTOM + 1024*1024)
 #define RK3568_BAREBOX_LOAD_ADDRESS	(RK3568_DRAM_BOTTOM + 1024*1024)
 
+#ifndef __ASSEMBLY__
+void rk3399_atf_load_bl31(void *fdt);
 void rk3568_atf_load_bl31(void *fdt);
+#endif
 
 #endif /* __MACH_ATF_H */
diff --git a/arch/arm/mach-rockchip/include/mach/debug_ll.h b/arch/arm/mach-rockchip/include/mach/debug_ll.h
index 73fc5b5db2ff..42e35188a20a 100644
--- a/arch/arm/mach-rockchip/include/mach/debug_ll.h
+++ b/arch/arm/mach-rockchip/include/mach/debug_ll.h
@@ -8,6 +8,7 @@
 #include <mach/rk3188-regs.h>
 #include <mach/rk3288-regs.h>
 #include <mach/rk3568-regs.h>
+#include <mach/rk3399-regs.h>
 
 #ifdef CONFIG_DEBUG_LL
 
@@ -29,6 +30,11 @@
 
 #define UART_CLOCK		24000000
 #define RK_DEBUG_SOC		RK3568
+
+#elif defined CONFIG_DEBUG_ROCKCHIP_RK3399_UART
+
+#define UART_CLOCK		24000000
+#define RK_DEBUG_SOC		RK3399
 #define serial_out(a, v)	writel(v, a)
 #define serial_in(a)		readl(a)
 
diff --git a/arch/arm/mach-rockchip/include/mach/rk3399-regs.h b/arch/arm/mach-rockchip/include/mach/rk3399-regs.h
new file mode 100644
index 000000000000..57033b651085
--- /dev/null
+++ b/arch/arm/mach-rockchip/include/mach/rk3399-regs.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __MACH_RK3399_REGS_H
+#define __MACH_RK3399_REGS_H
+
+/* UART */
+#define RK3399_UART0_BASE	0xff180000
+#define RK3399_UART1_BASE	0xff190000
+#define RK3399_UART2_BASE	0xff1a0000
+#define RK3399_UART3_BASE	0xff1b0000
+#define RK3399_UART4_BASE	0xff370000
+
+#define RK3399_IRAM_BASE	0xff8c0000
+#define RK3399_STIMER_BASE	0xff8680a0
+
+#endif
diff --git a/common/Kconfig b/common/Kconfig
index 482faea933a6..1843a81b3d97 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1358,6 +1358,13 @@ config DEBUG_ROCKCHIP_RK3568_UART
 	  Say Y here if you want kernel low-level debugging support
 	  on RK3568.
 
+config DEBUG_ROCKCHIP_RK3399_UART
+	bool "RK3399 Debug UART"
+	depends on ARCH_RK3399
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on RK3399.
+
 config DEBUG_SOCFPGA_UART0
 	bool "Use SOCFPGA UART0 for low-level debug"
 	depends on ARCH_SOCFPGA
@@ -1474,7 +1481,8 @@ config DEBUG_OMAP_UART_PORT
 config DEBUG_ROCKCHIP_UART_PORT
 	int "RK3xxx UART debug port" if DEBUG_ROCKCHIP_RK3188_UART || \
 				DEBUG_ROCKCHIP_RK3288_UART || \
-				DEBUG_ROCKCHIP_RK3568_UART
+				DEBUG_ROCKCHIP_RK3568_UART || \
+				DEBUG_ROCKCHIP_RK3399_UART
 	default 2
 	depends on ARCH_ROCKCHIP
 	help
diff --git a/firmware/Makefile b/firmware/Makefile
index 8873f5178d33..87bd033f6e5c 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -18,6 +18,8 @@ firmware-$(CONFIG_FIRMWARE_IMX8MP_ATF) += imx8mp-bl31.bin
 firmware-$(CONFIG_FIRMWARE_IMX8MQ_ATF) += imx8mq-bl31.bin
 firmware-$(CONFIG_ARCH_RK3568) += rk3568-bl31.bin
 firmware-$(CONFIG_ARCH_RK3568_OPTEE) += rk3568-op-tee.bin
+firmware-$(CONFIG_ARCH_RK3399) += rk3399-bl31.bin
+firmware-$(CONFIG_ARCH_RK3399_OPTEE) += rk3399-op-tee.bin
 firmware-$(CONFIG_DRIVER_NET_FSL_FMAN) += fsl_fman_ucode_ls1046_r1.0_106_4_18.bin
 
 firmware-$(CONFIG_ARCH_LAYERSCAPE_PPA) += ppa-ls1046a.bin
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


Delivery-date: Thu, 04 May 2023 10:19:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUBL-004LLV-Op
	for lore@lore.pengutronix.de; Thu, 04 May 2023 10:19:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUBJ-0001wj-6t
	for lore@pengutronix.de; Thu, 04 May 2023 10:19:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=27VKaR+57q8OH/uteh2/IN5H5ASj26JVg4mGOFZ/DvI=; b=zRLOxqe6482hKPE0uSWkC4h2dh
	XyLq4XSaazfngp3EiogtH+6BcI6YnJx9ssTNxLGA1DvagJjxnBtTKd7akrrIWhOrxOhSlC9H6ysIC
	InxAw4C6UZ1fHioVK8Lp5WByd6jEiJ0M0So9lnBNpmFt9lHWHLtKboN/66hMGuPF/X+3dxqqkYgkI
	ob/jX8iQk+jTIDxiry+gcXG8f5cefnE4F+Eh1jjB9d2WCOGjRcxdLm4urzVLyRY73EL5B7N0Ddvyk
	moEv5/waQR2opLxLlVbWhhBSMyjqnGjaGLiRS7VafTFWgeeMjJ15w6sXw8EnN5/bdCkWeo2IjCn/f
	evoCjc8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puUA5-0074Ys-0B;
	Thu, 04 May 2023 08:18:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puU9w-0074TL-1v
	for barebox@lists.infradead.org;
	Thu, 04 May 2023 08:17:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9u-0001Hf-Fg; Thu, 04 May 2023 10:17:50 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9t-0011FD-Qk; Thu, 04 May 2023 10:17:49 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9r-001Hbq-ED; Thu, 04 May 2023 10:17:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 May 2023 10:17:42 +0200
Message-Id: <20230504081745.305841-16-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230504081745.305841-1-s.hauer@pengutronix.de>
References: <20230504081745.305841-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_011752_806892_F5E75068 
X-CRM114-Status: GOOD (  27.34  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 15/18] ARM: rockchip: Add rk3588 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds the assorted rk3588 support stuff which is very similar
to the existing rk3568 support

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/Kconfig      |  5 +++++
 arch/arm/mach-rockchip/Makefile     |  1 +
 arch/arm/mach-rockchip/atf.c        | 35 +++++++++++++++++++++++++++++
 arch/arm/mach-rockchip/rk3588.c     | 20 +++++++++++++++++
 arch/arm/mach-rockchip/rockchip.c   |  5 +++++
 common/Kconfig                      |  9 ++++++++
 firmware/Makefile                   |  2 ++
 include/mach/rockchip/atf.h         |  6 +++++
 include/mach/rockchip/debug_ll.h    |  6 +++++
 include/mach/rockchip/rk3588-regs.h | 20 +++++++++++++++++
 include/mach/rockchip/rockchip.h    | 10 +++++++++
 11 files changed, 119 insertions(+)
 create mode 100644 arch/arm/mach-rockchip/rk3588.c
 create mode 100644 include/mach/rockchip/rk3588-regs.h

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 6f32a440a1..7d540974f5 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -47,6 +47,11 @@ config ARCH_RK3568
 	select ARCH_ROCKCHIP_V8
 	select HW_HAS_PCI
 
+config ARCH_RK3588
+	bool
+	select ARCH_ROCKCHIP_V8
+	select HW_HAS_PCI
+
 comment "select Rockchip boards:"
 
 if 32BIT
diff --git a/arch/arm/mach-rockchip/Makefile b/arch/arm/mach-rockchip/Makefile
index 04d75ce287..28ba3ebec8 100644
--- a/arch/arm/mach-rockchip/Makefile
+++ b/arch/arm/mach-rockchip/Makefile
@@ -5,6 +5,7 @@ pbl-$(CONFIG_ARCH_ROCKCHIP_ATF) += atf.o
 obj-$(CONFIG_ARCH_RK3188) += rk3188.o
 obj-$(CONFIG_ARCH_RK3288) += rk3288.o
 obj-pbl-$(CONFIG_ARCH_RK3568) += rk3568.o
+obj-pbl-$(CONFIG_ARCH_RK3588) += rk3588.o
 obj-$(CONFIG_ARCH_ROCKCHIP_V8) += bootm.o
 obj-pbl-$(CONFIG_ARCH_ROCKCHIP_V8) += dmc.o
 obj-$(CONFIG_BAREBOX_UPDATE) += bbu.o
diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index d1431cc526..eaba209ff3 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -10,6 +10,7 @@
 #include <mach/rockchip/rockchip.h>
 #include <mach/rockchip/bootrom.h>
 #include <mach/rockchip/rk3568-regs.h>
+#include <mach/rockchip/rk3588-regs.h>
 
 static unsigned long load_elf64_image_phdr(const void *elf)
 {
@@ -103,3 +104,37 @@ void __noreturn rk3568_barebox_entry(void *fdt)
 
 	barebox_arm_entry(membase, memsize, fdt);
 }
+
+void rk3588_atf_load_bl31(void *fdt)
+{
+	rockchip_atf_load_bl31(RK3588, rk3588_bl31_bin, rk3588_op_tee_bin, fdt);
+}
+
+void __noreturn rk3588_barebox_entry(void *fdt)
+{
+       unsigned long membase, memsize;
+
+       membase = RK3588_DRAM_BOTTOM;
+       memsize = rk3588_ram0_size() - RK3588_DRAM_BOTTOM;
+
+       if (current_el() == 3) {
+               rk3588_lowlevel_init();
+               rockchip_store_bootrom_iram(membase, memsize, IOMEM(RK3588_IRAM_BASE));
+
+               /*
+                * The downstream TF-A doesn't cope with our device tree when
+                * CONFIG_OF_OVERLAY_LIVE is enabled, supposedly because it is
+                * too big for some reason. Otherwise it doesn't have any visible
+                * effect if we pass a device tree or not, except that the TF-A
+                * fills in the ethernet MAC address into the device tree.
+                * The upstream TF-A doesn't use the device tree at all.
+                *
+                * Pass NULL for now until we have a good reason to pass a real
+                * device tree.
+                */
+               rk3588_atf_load_bl31(NULL);
+               /* not reached when CONFIG_ARCH_ROCKCHIP_ATF */
+       }
+
+       barebox_arm_entry(membase, memsize, fdt);
+}
diff --git a/arch/arm/mach-rockchip/rk3588.c b/arch/arm/mach-rockchip/rk3588.c
new file mode 100644
index 0000000000..25f1481296
--- /dev/null
+++ b/arch/arm/mach-rockchip/rk3588.c
@@ -0,0 +1,20 @@
+// SPDX-License-Identifier:     GPL-2.0+
+#include <common.h>
+#include <io.h>
+#include <bootsource.h>
+#include <mach/rockchip/rk3588-regs.h>
+#include <mach/rockchip/rockchip.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/rockchip/bootrom.h>
+
+void rk3588_lowlevel_init(void)
+{
+	arm_cpu_lowlevel_init();
+}
+
+int rk3588_init(void)
+{
+	rockchip_parse_bootrom_iram(rockchip_scratch_space());
+
+	return 0;
+}
diff --git a/arch/arm/mach-rockchip/rockchip.c b/arch/arm/mach-rockchip/rockchip.c
index e75238481c..9dc1fd18fb 100644
--- a/arch/arm/mach-rockchip/rockchip.c
+++ b/arch/arm/mach-rockchip/rockchip.c
@@ -32,6 +32,11 @@ static int rockchip_init(void)
 		return rk3568_init();
 	}
 
+	if (of_machine_is_compatible("rockchip,rk3588")) {
+		__rockchip_soc = 3588;
+		return rk3588_init();
+	}
+
 	return 0;
 }
 postcore_initcall(rockchip_init);
diff --git a/common/Kconfig b/common/Kconfig
index ac3df75acb..3003d91dc5 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1426,6 +1426,14 @@ config DEBUG_ROCKCHIP_RK3568_UART
 	  Say Y here if you want kernel low-level debugging support
 	  on RK3568.
 
+config DEBUG_ROCKCHIP_RK3588_UART
+	bool "RK3588 Debug UART"
+	depends on ARCH_RK3588
+	select DEBUG_ROCKCHIP_UART
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on RK3588.
+
 config DEBUG_ROCKCHIP_RK3399_UART
 	bool "RK3399 Debug UART"
 	depends on ARCH_RK3399
@@ -1585,6 +1593,7 @@ config DEBUG_ROCKCHIP_UART_PORT
 	int "RK3xxx UART debug port" if DEBUG_ROCKCHIP_RK3188_UART || \
 				DEBUG_ROCKCHIP_RK3288_UART || \
 				DEBUG_ROCKCHIP_RK3568_UART || \
+				DEBUG_ROCKCHIP_RK3588_UART || \
 				DEBUG_ROCKCHIP_RK3399_UART
 	default 2
 	depends on ARCH_ROCKCHIP
diff --git a/firmware/Makefile b/firmware/Makefile
index 984192f030..75812cb6bf 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -21,6 +21,8 @@ fw-external-$(CONFIG_FIRMWARE_IMX8MN_OPTEE) += imx8mn-bl32.bin
 fw-external-$(CONFIG_FIRMWARE_IMX8MP_OPTEE) += imx8mp-bl32.bin
 firmware-$(CONFIG_ARCH_RK3568) += rk3568-bl31.bin
 firmware-$(CONFIG_ARCH_RK3568_OPTEE) += rk3568-op-tee.bin
+firmware-$(CONFIG_ARCH_RK3588) += rk3588-bl31.bin
+firmware-$(CONFIG_ARCH_RK3588_OPTEE) += rk3588-op-tee.bin
 firmware-$(CONFIG_ARCH_RK3399) += rk3399-bl31.bin
 firmware-$(CONFIG_ARCH_RK3399_OPTEE) += rk3399-op-tee.bin
 firmware-$(CONFIG_DRIVER_NET_FSL_FMAN) += fsl_fman_ucode_ls1046_r1.0_106_4_18.bin
diff --git a/include/mach/rockchip/atf.h b/include/mach/rockchip/atf.h
index e1e68825d1..89129abc01 100644
--- a/include/mach/rockchip/atf.h
+++ b/include/mach/rockchip/atf.h
@@ -6,10 +6,12 @@
 /* First usable DRAM address. Lower mem is used for ATF and OP-TEE */
 #define RK3399_DRAM_BOTTOM		0xa00000
 #define RK3568_DRAM_BOTTOM		0xa00000
+#define RK3588_DRAM_BOTTOM		0xa00000
 
 /* OP-TEE expects to be loaded here */
 #define RK3399_OPTEE_LOAD_ADDRESS	0x200000
 #define RK3568_OPTEE_LOAD_ADDRESS	0x200000
+#define RK3588_OPTEE_LOAD_ADDRESS	0x200000
 
 /*
  * board lowlevel code should relocate barebox here. This is where
@@ -17,17 +19,21 @@
  */
 #define RK3399_BAREBOX_LOAD_ADDRESS	(RK3399_DRAM_BOTTOM + 1024*1024)
 #define RK3568_BAREBOX_LOAD_ADDRESS	(RK3568_DRAM_BOTTOM + 1024*1024)
+#define RK3588_BAREBOX_LOAD_ADDRESS	(RK3588_DRAM_BOTTOM + 1024*1024)
 
 #ifndef __ASSEMBLY__
 #ifdef CONFIG_ARCH_ROCKCHIP_ATF
 void rk3399_atf_load_bl31(void *fdt);
 void rk3568_atf_load_bl31(void *fdt);
+void rk3588_atf_load_bl31(void *fdt);
 #else
 static inline void rk3399_atf_load_bl31(void *fdt) { }
 static inline void rk3568_atf_load_bl31(void *fdt) { }
+static inline void rk3588_atf_load_bl31(void *fdt) { }
 #endif
 #endif
 
 void __noreturn rk3568_barebox_entry(void *fdt);
+void __noreturn rk3588_barebox_entry(void *fdt);
 
 #endif /* __MACH_ATF_H */
diff --git a/include/mach/rockchip/debug_ll.h b/include/mach/rockchip/debug_ll.h
index b1cf16a2dc..b68d91165d 100644
--- a/include/mach/rockchip/debug_ll.h
+++ b/include/mach/rockchip/debug_ll.h
@@ -8,6 +8,7 @@
 #include <mach/rockchip/rk3188-regs.h>
 #include <mach/rockchip/rk3288-regs.h>
 #include <mach/rockchip/rk3568-regs.h>
+#include <mach/rockchip/rk3588-regs.h>
 #include <mach/rockchip/rk3399-regs.h>
 
 #ifdef CONFIG_DEBUG_ROCKCHIP_UART
@@ -27,6 +28,11 @@
 #define RK_DEBUG_UART_CLOCK	24000000
 #define RK_DEBUG_SOC		RK3568
 
+#elif defined CONFIG_DEBUG_ROCKCHIP_RK3588_UART
+
+#define RK_DEBUG_UART_CLOCK	24000000
+#define RK_DEBUG_SOC		RK3588
+
 #elif defined CONFIG_DEBUG_ROCKCHIP_RK3399_UART
 
 #define RK_DEBUG_UART_CLOCK	24000000
diff --git a/include/mach/rockchip/rk3588-regs.h b/include/mach/rockchip/rk3588-regs.h
new file mode 100644
index 0000000000..c42d206a52
--- /dev/null
+++ b/include/mach/rockchip/rk3588-regs.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __MACH_RK3588_REGS_H
+#define __MACH_RK3588_REGS_H
+
+/* UART */
+#define RK3588_UART0_BASE       0xfd890000
+#define RK3588_UART1_BASE       0xfeb40000
+#define RK3588_UART2_BASE       0xfeb50000
+#define RK3588_UART3_BASE       0xfeb60000
+#define RK3588_UART4_BASE       0xfeb70000
+#define RK3588_UART5_BASE       0xfeb80000
+#define RK3588_UART6_BASE       0xfeb90000
+#define RK3588_UART7_BASE       0xfeba0000
+#define RK3588_UART8_BASE       0xfebb0000
+#define RK3588_UART9_BASE       0xfebc0000
+
+#define RK3588_IRAM_BASE        0xff000000
+
+#endif /* __MACH_RK3588_REGS_H */
diff --git a/include/mach/rockchip/rockchip.h b/include/mach/rockchip/rockchip.h
index 485526ef53..8d68651cf4 100644
--- a/include/mach/rockchip/rockchip.h
+++ b/include/mach/rockchip/rockchip.h
@@ -35,7 +35,17 @@ static inline int rk3568_init(void)
 }
 #endif
 
+#ifdef CONFIG_ARCH_RK3588
+int rk3588_init(void);
+#else
+static inline int rk3588_init(void)
+{
+	return -ENOTSUPP;
+}
+#endif
+
 void rk3568_lowlevel_init(void);
+void rk3588_lowlevel_init(void);
 
 int rockchip_soc(void);
 
-- 
2.39.2




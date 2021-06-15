Delivery-date: Tue, 15 Jun 2021 18:48:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltCET-0002Rl-0W
	for lore@lore.pengutronix.de; Tue, 15 Jun 2021 18:48:09 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltCEQ-0004bc-G4
	for lore@pengutronix.de; Tue, 15 Jun 2021 18:48:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RNet2jsb9ztw9D0+oS1J3N5W7v6qH5Hvc/MbqPxkzOM=; b=GuxAXjTgi0j1iu
	MZHi/M0ysATD49KE918G8h3fFAnTh9tJagTSRDTmVyQOkmpH/m3trec8mKDcjLAgkY8YPrMddVeVn
	K3qp3oX2KCkrfsHqmTTjRO1oQI8AM0mIbRVZuQUIyoy1I/jJ7Hr8TZ0iLiVwG+OgRDJ5Gbe0yuCAC
	YkAhISMEsl5fsD/WKV2pDQ5RURNrfZOeYch2kigD6GABaemLmBtl79m2S4Y1BamfcWZL6FA+2hmte
	xNZbKAUukuS/Si9fshI5hxMwIIbA1ahjoNOHTI+SJ/CEXnoAJGOjzxcDoSZXoU+yQy8pUrEvdC/Mf
	LMpTFHo+urXDJZrJtJuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltC9G-001RfX-A8; Tue, 15 Jun 2021 16:42:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9s3-000WLh-Qa
 for barebox@bombadil.infradead.org; Tue, 15 Jun 2021 14:16:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=PnHOqZMDo+hhesw1RpYG9z0ZwCIi6v1AhciFQD720Zc=; b=YPpZqx//aI6zOZ1+EEP0fUryO9
 H2JqgQlc4++o3KQhhxp2WlsrmAp9dZGLATw9oYny7AyxBMjiu6a+AOOx8DaDB8TLp7nu9JXYmPfvw
 V4N6cGlc4M37ETJ8AZ8ak4zruz6lIe1UzcmDPFwG4V1/lIHfYbzER3ZjyMl4335gPfj2VDGPeE2un
 LSk9D2zeKSl5+NJMx7EAYZ7jXhSAoHPuishpra2Le+WC6/cUvdudss9Tv7EFXtIcKS02YTC7qZbYk
 zhFzcrNfHewHq/dhQ59cMqEJva9pgRRGDr4Lgpxrw3Zx8lZUetnkspx+dtddObC3GYr+Opo/1J5Ha
 luaUFT8w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9ro-007zs4-VM
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 14:16:50 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt9rv-0000uH-8z; Tue, 15 Jun 2021 16:16:43 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt9ru-0001HD-Nk; Tue, 15 Jun 2021 16:16:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 15 Jun 2021 16:16:37 +0200
Message-Id: <20210615141641.31577-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210615141641.31577-1-s.hauer@pengutronix.de>
References: <20210615141641.31577-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_151645_254264_84E29BC5 
X-CRM114-Status: GOOD (  28.44  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (deferred)
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 07/11] ARM: Rockchip: Add rk3568 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds basic support for the Rockchip rk3568 SoC.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                              |   3 -
 arch/arm/mach-rockchip/Kconfig                |  12 ++
 arch/arm/mach-rockchip/Makefile               |   4 +-
 arch/arm/mach-rockchip/atf.c                  |  57 ++++++
 arch/arm/mach-rockchip/include/mach/atf.h     |  18 ++
 arch/arm/mach-rockchip/include/mach/bbu.h     |  14 ++
 .../arm/mach-rockchip/include/mach/debug_ll.h |   8 +
 .../mach-rockchip/include/mach/rk3568-regs.h  |  18 ++
 .../arm/mach-rockchip/include/mach/rockchip.h |  11 ++
 arch/arm/mach-rockchip/rk3568.c               | 176 ++++++++++++++++++
 arch/arm/mach-rockchip/rockchip.c             |   2 +
 common/Kconfig                                |  10 +-
 firmware/Makefile                             |   2 +-
 include/bootsource.h                          |   1 +
 14 files changed, 330 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm/mach-rockchip/atf.c
 create mode 100644 arch/arm/mach-rockchip/include/mach/atf.h
 create mode 100644 arch/arm/mach-rockchip/include/mach/bbu.h
 create mode 100644 arch/arm/mach-rockchip/include/mach/rk3568-regs.h
 create mode 100644 arch/arm/mach-rockchip/rk3568.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 6f28e1ec10..0740039309 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -145,8 +145,6 @@ config ARCH_PXA
 
 config ARCH_ROCKCHIP
 	bool "Rockchip RX3xxx"
-	select CPU_V7
-	select ARM_SMP_TWD
 	select COMMON_CLK
 	select CLKDEV_LOOKUP
 	select COMMON_CLK_OF_PROVIDER
@@ -156,7 +154,6 @@ config ARCH_ROCKCHIP
 	select OFTREE
 	select HAVE_PBL_MULTI_IMAGES
 	select HAS_DEBUG_LL
-	select ARCH_HAS_L2X0
 
 config ARCH_SOCFPGA
 	bool "Altera SOCFPGA"
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 65bcbcac96..0bfb4d2c5b 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -13,11 +13,23 @@ config RK_TIMER
 
 config ARCH_RK3188
 	bool
+	select CPU_V7
+	select ARM_SMP_TWD
+	select ARCH_HAS_L2X0
 
 config ARCH_RK3288
 	bool
+	select CPU_V7
+	select ARM_SMP_TWD
+	select ARCH_HAS_L2X0
 	select CLOCKSOURCE_ROCKCHIP
 
+config ARCH_RK3568
+	bool
+	select CPU_V8
+	select ARM_ATF
+	select SYS_SUPPORTS_64BIT_KERNEL
+
 comment "select Rockchip boards:"
 
 config MACH_RADXA_ROCK
diff --git a/arch/arm/mach-rockchip/Makefile b/arch/arm/mach-rockchip/Makefile
index 0188d0252f..b7bab1fb73 100644
--- a/arch/arm/mach-rockchip/Makefile
+++ b/arch/arm/mach-rockchip/Makefile
@@ -1,3 +1,5 @@
-obj-y += rockchip.o
+obj-y += rockchip.o atf.o
+pbl-y += atf.o
 obj-$(CONFIG_ARCH_RK3188) += rk3188.o
 obj-$(CONFIG_ARCH_RK3288) += rk3288.o
+obj-pbl-$(CONFIG_ARCH_RK3568) += rk3568.o
diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
new file mode 100644
index 0000000000..999876e49e
--- /dev/null
+++ b/arch/arm/mach-rockchip/atf.c
@@ -0,0 +1,57 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <common.h>
+#include <firmware.h>
+#include <asm/system.h>
+#include <mach/atf.h>
+#include <elf.h>
+#include <asm/atf_common.h>
+
+static unsigned long load_elf64_image_phdr(const void *elf)
+{
+	const Elf64_Ehdr *ehdr; /* Elf header structure pointer */
+	const Elf64_Phdr *phdr; /* Program header structure pointer */
+	int i;
+
+	ehdr = elf;
+	phdr = elf + ehdr->e_phoff;
+
+	/* Load each program header */
+	for (i = 0; i < ehdr->e_phnum; ++i) {
+		void *dst = (void *)(ulong)phdr->p_paddr;
+		const void *src = elf + phdr->p_offset;
+
+		pr_debug("Loading phdr %i to 0x%p (%lu bytes)\n",
+			 i, dst, (ulong)phdr->p_filesz);
+		if (phdr->p_filesz)
+			memcpy(dst, src, phdr->p_filesz);
+		if (phdr->p_filesz != phdr->p_memsz)
+			memset(dst + phdr->p_filesz, 0x00,
+				phdr->p_memsz - phdr->p_filesz);
+		++phdr;
+	}
+
+	return ehdr->e_entry;
+}
+
+void rk3568_atf_load_bl31(void *fdt)
+{
+	const void *bl31_elf, *optee;
+	unsigned long bl31;
+	size_t bl31_elf_size, optee_size;
+
+	get_builtin_firmware(rk3568_bl31_bin, &bl31_elf, &bl31_elf_size);
+
+	bl31 = load_elf64_image_phdr(bl31_elf);
+
+	get_builtin_firmware(rk3568_op_tee_bin, &optee, &optee_size);
+
+	memcpy((void *)RK3568_OPTEE_LOAD_ADDRESS, optee, optee_size);
+
+	/* Setup an initial stack for EL2 */
+	asm volatile("msr sp_el2, %0" : :
+			"r" (RK3568_BAREBOX_LOAD_ADDRESS - 16) :
+			"cc");
+
+	bl31_entry(bl31, RK3568_OPTEE_LOAD_ADDRESS,
+		   RK3568_BAREBOX_LOAD_ADDRESS, (uintptr_t)fdt);
+}
diff --git a/arch/arm/mach-rockchip/include/mach/atf.h b/arch/arm/mach-rockchip/include/mach/atf.h
new file mode 100644
index 0000000000..337a8261c8
--- /dev/null
+++ b/arch/arm/mach-rockchip/include/mach/atf.h
@@ -0,0 +1,18 @@
+#ifndef __MACH_ATF_H
+#define __MACH_ATF_H
+
+/* First usable DRAM address. Lower mem is used for ATF and OP-TEE */
+#define RK3568_DRAM_BOTTOM		0xa00000
+
+/* OP-TEE expects to be loaded here */
+#define RK3568_OPTEE_LOAD_ADDRESS	0x200000
+
+/*
+ * board lowlevel code should relocate barebox here. This is where
+ * OP-TEE jumps to after initialization.
+ */
+#define RK3568_BAREBOX_LOAD_ADDRESS	(RK3568_DRAM_BOTTOM + 1024*1024)
+
+void rk3568_atf_load_bl31(void *fdt);
+
+#endif /* __MACH_ATF_H */
diff --git a/arch/arm/mach-rockchip/include/mach/bbu.h b/arch/arm/mach-rockchip/include/mach/bbu.h
new file mode 100644
index 0000000000..e61e0615e2
--- /dev/null
+++ b/arch/arm/mach-rockchip/include/mach/bbu.h
@@ -0,0 +1,14 @@
+#ifndef __MACH_ROCKCHIP_BBU_H
+#define __MACH_ROCKCHIP_BBU_H
+
+#include <bbu.h>
+
+static inline int rk3568_bbu_mmc_register(const char *name, unsigned long flags,
+                const char *devicefile)
+{
+	return bbu_register_std_file_update(name, flags,
+                devicefile, filetype_rockchip_rkns_image);
+
+}
+
+# endif /* __MACH_ROCKCHIP_BBU_H */
diff --git a/arch/arm/mach-rockchip/include/mach/debug_ll.h b/arch/arm/mach-rockchip/include/mach/debug_ll.h
index 7806aab8bb..af6257a674 100644
--- a/arch/arm/mach-rockchip/include/mach/debug_ll.h
+++ b/arch/arm/mach-rockchip/include/mach/debug_ll.h
@@ -5,6 +5,7 @@
 #include <io.h>
 #include <mach/rk3188-regs.h>
 #include <mach/rk3288-regs.h>
+#include <mach/rk3568-regs.h>
 
 #ifdef CONFIG_DEBUG_LL
 
@@ -22,6 +23,13 @@
 #define serial_out(a, v)	writel(v, a)
 #define serial_in(a)		readl(a)
 
+#elif defined CONFIG_DEBUG_ROCKCHIP_RK3568_UART
+
+#define UART_CLOCK		24000000
+#define RK_DEBUG_SOC		RK3568
+#define serial_out(a, v)	writel(v, a)
+#define serial_in(a)		readl(a)
+
 #endif
 
 #define __RK_UART_BASE(soc, num) soc##_UART##num##_BASE
diff --git a/arch/arm/mach-rockchip/include/mach/rk3568-regs.h b/arch/arm/mach-rockchip/include/mach/rk3568-regs.h
new file mode 100644
index 0000000000..bb2ca7bd90
--- /dev/null
+++ b/arch/arm/mach-rockchip/include/mach/rk3568-regs.h
@@ -0,0 +1,18 @@
+#ifndef __MACH_RK3568_REGS_H
+#define __MACH_RK3568_REGS_H
+
+/* UART */
+#define RK3568_UART0_BASE	0xfdd50000
+#define RK3568_UART1_BASE	0xfe650000
+#define RK3568_UART2_BASE	0xfe660000
+#define RK3568_UART3_BASE	0xfe670000
+#define RK3568_UART4_BASE	0xfe680000
+#define RK3568_UART5_BASE	0xfe690000
+#define RK3568_UART6_BASE	0xfe6a0000
+#define RK3568_UART7_BASE	0xfe6b0000
+#define RK3568_UART8_BASE	0xfe6c0000
+#define RK3568_UART9_BASE	0xfe6d0000
+
+#define RK3568_IRAM_BASE	0xfdcc0000
+
+#endif /* __MACH_RK3568_REGS_H */
diff --git a/arch/arm/mach-rockchip/include/mach/rockchip.h b/arch/arm/mach-rockchip/include/mach/rockchip.h
index 8d37c67d4f..722b73d6f8 100644
--- a/arch/arm/mach-rockchip/include/mach/rockchip.h
+++ b/arch/arm/mach-rockchip/include/mach/rockchip.h
@@ -19,4 +19,15 @@ static inline int rk3288_init(void)
 }
 #endif
 
+#ifdef CONFIG_ARCH_RK3568
+int rk3568_init(void);
+#else
+static inline int rk3568_init(void)
+{
+	return -ENOTSUPP;
+}
+#endif
+
+int rk3568_lowlevel_init(void);
+
 #endif /* __MACH_ROCKCHIP_H */
diff --git a/arch/arm/mach-rockchip/rk3568.c b/arch/arm/mach-rockchip/rk3568.c
new file mode 100644
index 0000000000..fcf3cb7053
--- /dev/null
+++ b/arch/arm/mach-rockchip/rk3568.c
@@ -0,0 +1,176 @@
+// SPDX-License-Identifier:     GPL-2.0+
+#include <common.h>
+#include <io.h>
+#include <bootsource.h>
+#include <mach/rk3568-regs.h>
+#include <mach/rockchip.h>
+
+#define GRF_BASE		0xfdc60000
+#define GRF_GPIO1B_DS_2		0x218
+#define GRF_GPIO1B_DS_3		0x21c
+#define GRF_GPIO1C_DS_0		0x220
+#define GRF_GPIO1C_DS_1		0x224
+#define GRF_GPIO1C_DS_2		0x228
+#define GRF_GPIO1C_DS_3		0x22c
+#define GRF_GPIO1D_DS_0		0x230
+#define GRF_GPIO1D_DS_1		0x234
+#define GRF_SOC_CON4		0x510
+#define EDP_PHY_GRF_BASE	0xfdcb0000
+#define EDP_PHY_GRF_CON0	(EDP_PHY_GRF_BASE + 0x00)
+#define EDP_PHY_GRF_CON10	(EDP_PHY_GRF_BASE + 0x28)
+#define PMU_BASE_ADDR		0xfdd90000
+#define PMU_NOC_AUTO_CON0	0x70
+#define PMU_NOC_AUTO_CON1	0x74
+#define CRU_BASE		0xfdd20000
+#define CRU_SOFTRST_CON26	0x468
+#define CRU_SOFTRST_CON28	0x470
+#define SGRF_BASE		0xFDD18000
+#define SGRF_SOC_CON3		0xC
+#define SGRF_SOC_CON4		0x10
+#define PMUGRF_SOC_CON15	0xfdc20100
+#define CPU_GRF_BASE		0xfdc30000
+#define GRF_CORE_PVTPLL_CON0	0x10
+#define USBPHY_U3_GRF		0xfdca0000
+#define USBPHY_U3_GRF_CON1	(USBPHY_U3_GRF + 0x04)
+#define USBPHY_U2_GRF		0xfdca8000
+#define USBPHY_U2_GRF_CON0	(USBPHY_U2_GRF + 0x00)
+#define USBPHY_U2_GRF_CON1	(USBPHY_U2_GRF + 0x04)
+
+#define PMU_PWR_GATE_SFTCON	0xA0
+#define PMU_PWR_DWN_ST		0x98
+#define PMU_BUS_IDLE_SFTCON0	0x50
+#define PMU_BUS_IDLE_ST		0x68
+#define PMU_BUS_IDLE_ACK	0x60
+
+#define EBC_PRIORITY_REG	0xfe158008
+
+static void qos_priority_init(void)
+{
+	u32 delay;
+
+	/* enable all pd except npu and gpu */
+	writel(0xffff0000 & ~(BIT(0 + 16) | BIT(1 + 16)),
+	       PMU_BASE_ADDR + PMU_PWR_GATE_SFTCON);
+	delay = 1000;
+	do {
+		udelay(1);
+		delay--;
+		if (delay == 0) {
+			printf("Fail to set domain.");
+			hang();
+		}
+	} while (readl(PMU_BASE_ADDR + PMU_PWR_DWN_ST) & ~(BIT(0) | BIT(1)));
+
+	/* release all idle request except npu and gpu */
+	writel(0xffff0000 & ~(BIT(1 + 16) | BIT(2 + 16)),
+	       PMU_BASE_ADDR + PMU_BUS_IDLE_SFTCON0);
+
+	delay = 1000;
+	/* wait ack status */
+	do {
+		udelay(1);
+		delay--;
+		if (delay == 0) {
+			printf("Fail to get ack on domain.\n");
+			hang();
+		}
+	} while (readl(PMU_BASE_ADDR + PMU_BUS_IDLE_ACK) & ~(BIT(1) | BIT(2)));
+
+	delay = 1000;
+	/* wait idle status */
+	do {
+		udelay(1);
+		delay--;
+		if (delay == 0) {
+			printf("Fail to set idle on domain.\n");
+			hang();
+		}
+	} while (readl(PMU_BASE_ADDR + PMU_BUS_IDLE_ST) & ~(BIT(1) | BIT(2)));
+
+	writel(0x303, EBC_PRIORITY_REG);
+}
+
+int rk3568_lowlevel_init(void)
+{
+	/*
+	 * When perform idle operation, corresponding clock can
+	 * be opened or gated automatically.
+	 */
+	writel(0xffffffff, PMU_BASE_ADDR + PMU_NOC_AUTO_CON0);
+	writel(0x000f000f, PMU_BASE_ADDR + PMU_NOC_AUTO_CON1);
+
+	/* Set the emmc sdmmc0 to secure */
+	writel(((0x3 << 11 | 0x1 << 4) << 16), SGRF_BASE + SGRF_SOC_CON4);
+	/* set the emmc ds to level 2 */
+	writel(0x3f3f0707, GRF_BASE + GRF_GPIO1B_DS_2);
+	writel(0x3f3f0707, GRF_BASE + GRF_GPIO1B_DS_3);
+	writel(0x3f3f0707, GRF_BASE + GRF_GPIO1C_DS_0);
+	writel(0x3f3f0707, GRF_BASE + GRF_GPIO1C_DS_1);
+	writel(0x3f3f0707, GRF_BASE + GRF_GPIO1C_DS_2);
+	writel(0x3f3f0707, GRF_BASE + GRF_GPIO1C_DS_3);
+
+	/* Set the fspi to secure */
+	writel(((0x1 << 14) << 16) | (0x0 << 14), SGRF_BASE + SGRF_SOC_CON3);
+
+	/* Disable eDP phy by default */
+	writel(0x00070007, EDP_PHY_GRF_CON10);
+	writel(0x0ff10ff1, EDP_PHY_GRF_CON0);
+
+	/* Set core pvtpll ring length */
+	writel(0x00ff002b, CPU_GRF_BASE + GRF_CORE_PVTPLL_CON0);
+
+	/*
+	 * Assert reset the pipephy0, pipephy1 and pipephy2,
+	 * and de-assert reset them in Kernel combphy driver.
+	 */
+	writel(0x02a002a0, CRU_BASE + CRU_SOFTRST_CON28);
+
+	/*
+	 * Set USB 2.0 PHY0 port1 and PHY1 port0 and port1
+	 * enter suspend mode to to save power. And USB 2.0
+	 * PHY0 port0 for OTG interface still in normal mode.
+	 */
+	writel(0x01ff01d1, USBPHY_U3_GRF_CON1);
+	writel(0x01ff01d1, USBPHY_U2_GRF_CON0);
+	writel(0x01ff01d1, USBPHY_U2_GRF_CON1);
+
+	qos_priority_init();
+
+	return 0;
+}
+
+struct rk_bootsource {
+	enum bootsource src;
+	int instance;
+};
+
+static struct rk_bootsource bootdev_map[] = {
+	{ .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
+	{ .src = BOOTSOURCE_NAND, .instance = 0 },
+	{ .src = BOOTSOURCE_MMC, .instance = 0 },
+	{ .src = BOOTSOURCE_SPI_NOR, .instance = 0 },
+	{ .src = BOOTSOURCE_SPI_NAND, .instance = 0 },
+	{ .src = BOOTSOURCE_MMC, .instance = 1 },
+};
+
+static enum bootsource rk3568_bootsource(void)
+{
+	u32 v;
+
+	v = readl(RK3568_IRAM_BASE + 0x10);
+
+	if (v >= ARRAY_SIZE(bootdev_map))
+		return BOOTSOURCE_UNKNOWN;
+
+	bootsource_set(bootdev_map[v].src);
+	bootsource_set_instance(bootdev_map[v].instance);
+
+	return bootdev_map[v].src;
+}
+
+int rk3568_init(void)
+{
+	rk3568_bootsource();
+
+	return 0;
+}
diff --git a/arch/arm/mach-rockchip/rockchip.c b/arch/arm/mach-rockchip/rockchip.c
index b0fbb49457..f0b2484c68 100644
--- a/arch/arm/mach-rockchip/rockchip.c
+++ b/arch/arm/mach-rockchip/rockchip.c
@@ -9,6 +9,8 @@ static int rockchip_init(void)
 		rk3188_init();
 	else if (of_machine_is_compatible("rockchip,rk3288"))
 		rk3288_init();
+	else if (of_machine_is_compatible("rockchip,rk3568"))
+		rk3568_init();
 	else
 		pr_err("Unknown rockchip SoC\n");
 
diff --git a/common/Kconfig b/common/Kconfig
index 8b8f80bbb3..273186c5fa 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1331,6 +1331,13 @@ config DEBUG_ROCKCHIP_RK3288_UART
 	  Say Y here if you want kernel low-level debugging support
 	  on RK3288.
 
+config DEBUG_ROCKCHIP_RK3568_UART
+	bool "RK3568 Debug UART"
+	depends on ARCH_RK3568
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on RK3568.
+
 config DEBUG_SOCFPGA_UART0
 	bool "Use SOCFPGA UART0 for low-level debug"
 	depends on ARCH_SOCFPGA
@@ -1417,7 +1424,8 @@ config DEBUG_OMAP_UART_PORT
 
 config DEBUG_ROCKCHIP_UART_PORT
 	int "RK3xxx UART debug port" if DEBUG_ROCKCHIP_RK3188_UART || \
-				DEBUG_ROCKCHIP_RK3288_UART
+				DEBUG_ROCKCHIP_RK3288_UART || \
+				DEBUG_ROCKCHIP_RK3568_UART
 	default 2
 	depends on ARCH_ROCKCHIP
 	help
diff --git a/firmware/Makefile b/firmware/Makefile
index 3a38c40079..de01ffe7a8 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -9,7 +9,7 @@ firmware-$(CONFIG_FIRMWARE_IMX_LPDDR4_PMU_TRAIN) += \
 firmware-$(CONFIG_FIRMWARE_IMX8MM_ATF) += imx8mm-bl31.bin
 firmware-$(CONFIG_FIRMWARE_IMX8MP_ATF) += imx8mp-bl31.bin
 firmware-$(CONFIG_FIRMWARE_IMX8MQ_ATF) += imx8mq-bl31.bin
-
+firmware-$(CONFIG_ARCH_RK3568) += rk3568-bl31.bin rk3568-op-tee.bin
 firmware-$(CONFIG_DRIVER_NET_FSL_FMAN) += fsl_fman_ucode_ls1046_r1.0_106_4_18.bin
 
 firmware-$(CONFIG_ARCH_LAYERSCAPE_PPA) += ppa-ls1046a.bin
diff --git a/include/bootsource.h b/include/bootsource.h
index 32295ddd96..646b0e91c1 100644
--- a/include/bootsource.h
+++ b/include/bootsource.h
@@ -12,6 +12,7 @@ enum bootsource {
 	BOOTSOURCE_SPI,
 	BOOTSOURCE_SPI_EEPROM,
 	BOOTSOURCE_SPI_NOR,
+	BOOTSOURCE_SPI_NAND,
 	BOOTSOURCE_SERIAL,
 	BOOTSOURCE_ONENAND,
 	BOOTSOURCE_HD,
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


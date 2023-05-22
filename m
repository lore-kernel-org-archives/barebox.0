Delivery-date: Mon, 22 May 2023 07:30:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y7Z-009JD2-UD
	for lore@lore.pengutronix.de; Mon, 22 May 2023 07:30:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y7V-0002yG-BW
	for lore@pengutronix.de; Mon, 22 May 2023 07:30:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DkgxEhAnnbdqhXrLAdwty5vw0umrE/Xslsdg6f7bYmU=; b=4s3sGgfJCqe/XB
	eR0EtMS4h7vnFpIYcwiS0yggezFmzWil6S410BTixyljzTzB2A4hPxWzpJx+dkTXq8DMhaFN6HCVq
	r0ShHJmL1cQDYmz8E3aydNnj66kMWqDeKBK906h2lyhyl2pHFDuGMZUsLAJXtIT+fVim/8CBpr84F
	uabnm6qTpec25ioAYbkP05mJ8FCptBbHJylh0zzozggyA2QERHGCXVPSrOoDNhT6hxl0DmuXOpQf5
	eab+IUfwl5thbQza44W3WrRWiEsNlRkfsLrYR+ERnqq6bRqwC2qrG/Z3N515gn1cMof39PdmZoliZ
	6egSbWIcy8muZXiHxO9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y6I-005ObH-1V;
	Mon, 22 May 2023 05:28:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y66-005OUY-0p
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 05:28:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y62-0002Ld-MZ; Mon, 22 May 2023 07:28:38 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y61-001vvb-Ue; Mon, 22 May 2023 07:28:37 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y60-004MLU-Ls; Mon, 22 May 2023 07:28:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 22 May 2023 07:28:31 +0200
Message-Id: <20230522052835.1039143-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230522052835.1039143-1-a.fatoum@pengutronix.de>
References: <20230522052835.1039143-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_222845_410928_CEDF9CEE 
X-CRM114-Status: GOOD (  21.86  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, lst@pengutronix.de, rcz@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 07/11] ARM: prepare extending mmuinfo beyond ARMv7
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There's no reason to restrict mmuinfo to ARMv7 or ARM at all for that
matter. Prepare extending it for ARMv8 support by splitting off the
32-bit parts.

While at it, make the output available for debuggin by exporting a
mmuinfo() function.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/Makefile          |  2 +-
 arch/arm/cpu/mmuinfo.c         | 79 ++++++---------------------------
 arch/arm/cpu/mmuinfo_32.c      | 80 ++++++++++++++++++++++++++++++++++
 arch/arm/include/asm/mmuinfo.h |  8 ++++
 commands/Kconfig               |  1 +
 common/Kconfig                 |  3 ++
 include/mmu.h                  | 10 +++++
 7 files changed, 117 insertions(+), 66 deletions(-)
 create mode 100644 arch/arm/cpu/mmuinfo_32.c
 create mode 100644 arch/arm/include/asm/mmuinfo.h

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 0e4fa69229a6..a271de2c1f38 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -27,7 +27,7 @@ obj-$(CONFIG_ARM_PSCI_CLIENT) += psci-client.o
 # Any variants can be called as start-armxyz.S
 #
 obj-$(CONFIG_CMD_ARM_CPUINFO) += cpuinfo.o
-obj-$(CONFIG_CMD_ARM_MMUINFO) += mmuinfo.o
+obj-$(CONFIG_MMUINFO) += mmuinfo.o mmuinfo_32.o
 obj-$(CONFIG_OFDEVICE) += dtb.o
 
 ifeq ($(CONFIG_MMU),)
diff --git a/arch/arm/cpu/mmuinfo.c b/arch/arm/cpu/mmuinfo.c
index 1147c0a305b3..49e393149b69 100644
--- a/arch/arm/cpu/mmuinfo.c
+++ b/arch/arm/cpu/mmuinfo.c
@@ -1,91 +1,40 @@
 // SPDX-License-Identifier: GPL-2.0-only
 // SPDX-FileCopyrightText: 2012 Jan Luebbe <j.luebbe@pengutronix.de>, Pengutronix
 /*
- * mmuinfo.c - Show MMU/cache information from cp15 registers
+ * mmuinfo.c - Show MMU/cache information
  */
 
 #include <common.h>
 #include <command.h>
+#include <asm/mmuinfo.h>
+#include <asm/system_info.h>
+#include <mmu.h>
 
-static char *inner_attr[] = {
-	"0b000 Non-cacheable",
-	"0b001 Strongly-ordered",
-	"0b010 (reserved)",
-	"0b011 Device",
-	"0b100 (reserved)",
-	"0b101 Write-Back, Write-Allocate",
-	"0b110 Write-Through",
-	"0b111 Write-Back, no Write-Allocate",
-};
-
-static char *outer_attr[] = {
-	"0b00 Non-cacheable",
-	"0b01 Write-Back, Write-Allocate",
-	"0b10 Write-Through, no Write-Allocate",
-	"0b11 Write-Back, no Write-Allocate",
-};
-
-static void decode_par(unsigned long par)
+int mmuinfo(void *addr)
 {
-	printf("  Physical Address [31:12]: 0x%08lx\n", par & 0xFFFFF000);
-	printf("  Reserved [11]:            0x%lx\n", (par >> 11) & 0x1);
-	printf("  Not Outer Shareable [10]: 0x%lx\n", (par >> 10) & 0x1);
-	printf("  Non-Secure [9]:           0x%lx\n", (par >> 9) & 0x1);
-	printf("  Impl. def. [8]:           0x%lx\n", (par >> 8) & 0x1);
-	printf("  Shareable [7]:            0x%lx\n", (par >> 7) & 0x1);
-	printf("  Inner mem. attr. [6:4]:   0x%lx (%s)\n", (par >> 4) & 0x7,
-		inner_attr[(par >> 4) & 0x7]);
-	printf("  Outer mem. attr. [3:2]:   0x%lx (%s)\n", (par >> 2) & 0x3,
-		outer_attr[(par >> 2) & 0x3]);
-	printf("  SuperSection [1]:         0x%lx\n", (par >> 1) & 0x1);
-	printf("  Failure [0]:              0x%lx\n", (par >> 0) & 0x1);
+	if (IS_ENABLED(CONFIG_CPU_V7) && cpu_architecture() == CPU_ARCH_ARMv7)
+		return mmuinfo_v7(addr);
+
+	return -ENOSYS;
 }
 
-static int do_mmuinfo(int argc, char *argv[])
+static __maybe_unused int do_mmuinfo(int argc, char *argv[])
 {
-	unsigned long addr = 0, priv_read, priv_write;
+	unsigned long addr;
 
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
 
 	addr = strtoul_suffix(argv[1], NULL, 0);
 
-	__asm__ __volatile__(
-		"mcr    p15, 0, %0, c7, c8, 0   @ write VA to PA translation (priv read)\n"
-		:
-		: "r" (addr)
-		: "memory");
-
-	__asm__ __volatile__(
-		"mrc    p15, 0, %0, c7, c4, 0   @ read PAR\n"
-		: "=r" (priv_read)
-		:
-		: "memory");
-
-	__asm__ __volatile__(
-		"mcr    p15, 0, %0, c7, c8, 1   @ write VA to PA translation (priv write)\n"
-		:
-		: "r" (addr)
-		: "memory");
-
-	__asm__ __volatile__(
-		"mrc    p15, 0, %0, c7, c4, 0   @ read PAR\n"
-		: "=r" (priv_write)
-		:
-		: "memory");
-
-	printf("PAR result for 0x%08lx: \n", addr);
-	printf(" privileged read: 0x%08lx\n", priv_read);
-	decode_par(priv_read);
-	printf(" privileged write: 0x%08lx\n", priv_write);
-	decode_par(priv_write);
-
-	return 0;
+	return mmuinfo((void *)addr);
 }
 
+#ifdef CONFIG_COMMAND_SUPPORT
 BAREBOX_CMD_START(mmuinfo)
 	.cmd            = do_mmuinfo,
 	BAREBOX_CMD_DESC("show MMU/cache information of an address")
 	BAREBOX_CMD_OPTS("ADDRESS")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 BAREBOX_CMD_END
+#endif
diff --git a/arch/arm/cpu/mmuinfo_32.c b/arch/arm/cpu/mmuinfo_32.c
new file mode 100644
index 000000000000..e26dabc9b3d9
--- /dev/null
+++ b/arch/arm/cpu/mmuinfo_32.c
@@ -0,0 +1,80 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2012 Jan Luebbe <j.luebbe@pengutronix.de>, Pengutronix
+/*
+ * mmuinfo_32.c - Show MMU/cache information from cp15 registers
+ */
+
+#include <common.h>
+#include <asm/mmuinfo.h>
+
+static char *inner_attr[] = {
+	"0b000 Non-cacheable",
+	"0b001 Strongly-ordered",
+	"0b010 (reserved)",
+	"0b011 Device",
+	"0b100 (reserved)",
+	"0b101 Write-Back, Write-Allocate",
+	"0b110 Write-Through",
+	"0b111 Write-Back, no Write-Allocate",
+};
+
+static char *outer_attr[] = {
+	"0b00 Non-cacheable",
+	"0b01 Write-Back, Write-Allocate",
+	"0b10 Write-Through, no Write-Allocate",
+	"0b11 Write-Back, no Write-Allocate",
+};
+
+static void decode_par(unsigned long par)
+{
+	printf("  Physical Address [31:12]: 0x%08lx\n", par & 0xFFFFF000);
+	printf("  Reserved [11]:            0x%lx\n", (par >> 11) & 0x1);
+	printf("  Not Outer Shareable [10]: 0x%lx\n", (par >> 10) & 0x1);
+	printf("  Non-Secure [9]:           0x%lx\n", (par >> 9) & 0x1);
+	printf("  Impl. def. [8]:           0x%lx\n", (par >> 8) & 0x1);
+	printf("  Shareable [7]:            0x%lx\n", (par >> 7) & 0x1);
+	printf("  Inner mem. attr. [6:4]:   0x%lx (%s)\n", (par >> 4) & 0x7,
+		inner_attr[(par >> 4) & 0x7]);
+	printf("  Outer mem. attr. [3:2]:   0x%lx (%s)\n", (par >> 2) & 0x3,
+		outer_attr[(par >> 2) & 0x3]);
+	printf("  SuperSection [1]:         0x%lx\n", (par >> 1) & 0x1);
+	printf("  Failure [0]:              0x%lx\n", (par >> 0) & 0x1);
+}
+
+int mmuinfo_v7(void *_addr)
+{
+	unsigned long addr = (unsigned long)_addr;
+	unsigned long priv_read, priv_write;
+
+	__asm__ __volatile__(
+		"mcr    p15, 0, %0, c7, c8, 0   @ write VA to PA translation (priv read)\n"
+		:
+		: "r" (addr)
+		: "memory");
+
+	__asm__ __volatile__(
+		"mrc    p15, 0, %0, c7, c4, 0   @ read PAR\n"
+		: "=r" (priv_read)
+		:
+		: "memory");
+
+	__asm__ __volatile__(
+		"mcr    p15, 0, %0, c7, c8, 1   @ write VA to PA translation (priv write)\n"
+		:
+		: "r" (addr)
+		: "memory");
+
+	__asm__ __volatile__(
+		"mrc    p15, 0, %0, c7, c4, 0   @ read PAR\n"
+		: "=r" (priv_write)
+		:
+		: "memory");
+
+	printf("PAR result for 0x%08lx: \n", addr);
+	printf(" privileged read: 0x%08lx\n", priv_read);
+	decode_par(priv_read);
+	printf(" privileged write: 0x%08lx\n", priv_write);
+	decode_par(priv_write);
+
+	return 0;
+}
diff --git a/arch/arm/include/asm/mmuinfo.h b/arch/arm/include/asm/mmuinfo.h
new file mode 100644
index 000000000000..bc17bf8982ab
--- /dev/null
+++ b/arch/arm/include/asm/mmuinfo.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __ARM_ASM_MMUINFO_H__
+#define __ARM_ASM_MMUINFO_H__
+
+int mmuinfo_v7(void *addr);
+
+#endif
diff --git a/commands/Kconfig b/commands/Kconfig
index c72c2b7758a2..bc697d52b730 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -202,6 +202,7 @@ config CMD_MEMINFO
 config CMD_ARM_MMUINFO
 	bool "mmuinfo command"
 	depends on CPU_V7
+	select MMUINFO
 	help
 	  Say yes here to get a mmuinfo command to show some
 	  MMU and cache information using the cp15 registers.
diff --git a/common/Kconfig b/common/Kconfig
index b9e175045608..bd1df889e69a 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -185,6 +185,9 @@ config MMU
 	  to enable the data cache which depends on the MMU. See Documentation/mmu.txt
 	  for further information.
 
+config MMUINFO
+	bool
+
 config HAVE_CONFIGURABLE_TEXT_BASE
 	bool
 
diff --git a/include/mmu.h b/include/mmu.h
index fd6dbc51ac03..84ec6c5efb3e 100644
--- a/include/mmu.h
+++ b/include/mmu.h
@@ -3,6 +3,7 @@
 #define __MMU_H
 
 #include <linux/types.h>
+#include <errno.h>
 
 #define MAP_UNCACHED	0
 #define MAP_CACHED	1
@@ -43,4 +44,13 @@ static inline int remap_range(void *start, size_t size, unsigned flags)
 	return arch_remap_range(start, virt_to_phys(start), size, flags);
 }
 
+#ifdef CONFIG_MMUINFO
+int mmuinfo(void *addr);
+#else
+static inline int mmuinfo(void *addr)
+{
+	return -ENOSYS;
+}
+#endif
+
 #endif
-- 
2.39.2




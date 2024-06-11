Delivery-date: Tue, 11 Jun 2024 09:00:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGvUH-004729-1C
	for lore@lore.pengutronix.de;
	Tue, 11 Jun 2024 09:00:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGvUG-0006B7-JM
	for lore@pengutronix.de; Tue, 11 Jun 2024 09:00:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vIOXw+qglvhT9Mtct8fwKwowQzaMGjDsxPmM5F20sUU=; b=RtXO0l2e9xl3jwL//hNNZxzv69
	sHfoWxeflg2d9MGjvEh/b8iG4HHGpHO+ZLOjvyQU7ElzbBFuhOV/Fkeqk+LsNWZO9vrNleoqCRvYp
	JaPh6RxapUWHhEpUNaSWiXUy8Ml93jrcX8N/9iZfZRLHfBm7JQ4vm/96M7hAj7uLPr0daGG86xHHo
	AtJBlssdXcnQ7KaZo8dfyN6DLdX1m8wrQyh2jyOl4PH73S0WMr2P0DmHZ5O9nkCn4A8AQeX8njbZR
	h0nZmUhYSBWCuHumgQDmTEfgw8pskHFQILXKou4UMcwO70XuZJzDwRLrqq+TJh81H7phVLB/fMZLR
	2qyQrNFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGvTk-00000007n0W-2udg;
	Tue, 11 Jun 2024 06:59:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGvTa-00000007msw-0zPb
	for barebox@lists.infradead.org;
	Tue, 11 Jun 2024 06:59:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvTZ-0005qV-0V; Tue, 11 Jun 2024 08:59:25 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvTY-001UDN-JU; Tue, 11 Jun 2024 08:59:24 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvTY-00CATV-1g;
	Tue, 11 Jun 2024 08:59:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Jun 2024 08:59:22 +0200
Message-Id: <20240611065923.2900168-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240611065923.2900168-1-a.fatoum@pengutronix.de>
References: <20240611065923.2900168-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_235926_426463_67B1FF2E 
X-CRM114-Status: GOOD (  15.43  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/6] ARM: semihosting: add DEBUG_LL implementation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Both OpenOCD and QEMU have a semihosting implementation that provides a
console suitable for low level debugging. Add a DEBUG_LL implementation
that is usable when QEMU is called with

  --semihosting-config chardev=serial0

or following OpenOCD is executed:

  arm semihosting enable

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/debug_ll.h    |  4 ++++
 arch/arm/include/asm/semihosting.h | 32 ++++++++++++++++++++++++++++++
 common/Kconfig.debug_ll            | 13 ++++++++++++
 drivers/firmware/Kconfig           |  1 +
 include/debug_ll/semihosting.h     | 15 ++++++++++++++
 5 files changed, 65 insertions(+)
 create mode 100644 include/debug_ll/semihosting.h

diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index 999f1cb831a8..bac0b2106936 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -35,6 +35,10 @@
 #include <mach/layerscape/debug_ll.h>
 #endif
 
+#ifdef CONFIG_DEBUG_SEMIHOSTING
+#include <debug_ll/semihosting.h>
+#endif
+
 #ifdef CONFIG_DEBUG_QEMU_ARM64_VIRT
 #define DEBUG_LL_UART_ADDR		0x9000000
 #include <debug_ll/pl011.h>
diff --git a/arch/arm/include/asm/semihosting.h b/arch/arm/include/asm/semihosting.h
index c18aa1a5fef5..2219e858d040 100644
--- a/arch/arm/include/asm/semihosting.h
+++ b/arch/arm/include/asm/semihosting.h
@@ -4,5 +4,37 @@
 #define __ASM_ARM_SEMIHOSTING_H
 
 #include <asm-generic/semihosting.h>
+#include <asm/unified.h>
+
+static inline void semihosting_putc(void *unused, int c)
+{
+	/* We may not be relocated yet here, so we push
+	 * to stack and take address of that
+	 */
+#ifdef CONFIG_CPU_64
+	asm volatile (
+		"stp %0, xzr, [sp, #-16]!\n"
+		"mov x1, sp\n"
+		"mov x0, #0x03\n"
+	 	"hlt #0xf000\n"
+		"add sp, sp, #16\n"
+		: /* No outputs */
+		: "r" ((long)c)
+		: "x0", "x1", "x2", "x3", "x12", "memory"
+	);
+#else
+	asm volatile (
+		"push {%0}\n"
+		"mov r1, sp\n"
+		"mov r0, #0x03\n"
+	 ARM(	"bkpt #0x123456\n")
+	 THUMB(	"bkpt #0xAB\n")
+		"pop {%0}\n"
+		: /* No outputs */
+		: "r" (c)
+		: "r0", "r1", "r2", "r3", "r12", "memory"
+	);
+#endif
+}
 
 #endif
diff --git a/common/Kconfig.debug_ll b/common/Kconfig.debug_ll
index 472048177f8b..3f6f3e7c3bdb 100644
--- a/common/Kconfig.debug_ll
+++ b/common/Kconfig.debug_ll
@@ -337,6 +337,19 @@ config DEBUG_QEMU_ARM64_VIRT
 	bool "QEMU ARM64 Virt PL011 console"
 	depends on ARCH_ARM64_VIRT
 
+config DEBUG_SEMIHOSTING
+	bool "Semihosting console"
+	depends on SEMIHOSTING
+	help
+	  Semihosting enables code to use the I/O facilities on a
+	  host debugger/emulator through a simple supervisor call.
+	  The host debugger or emulator must have semihosting enabled
+	  for the supervisor call to be trapped, otherwise barebox
+	  will crash.
+
+	  Say Y here if you want low-level debugging support
+	  using semihosting writec.
+
 endchoice
 
 config DEBUG_LL_NS16550
diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
index 89c8bdeda3f0..264f7b2a5a65 100644
--- a/drivers/firmware/Kconfig
+++ b/drivers/firmware/Kconfig
@@ -3,6 +3,7 @@ menu "Firmware Drivers"
 
 config SEMIHOSTING
 	bool
+	select HAS_DEBUG_LL
 
 config FIRMWARE_ALTERA_SERIAL
 	bool "Altera SPI programming"
diff --git a/include/debug_ll/semihosting.h b/include/debug_ll/semihosting.h
new file mode 100644
index 000000000000..125d42ee88de
--- /dev/null
+++ b/include/debug_ll/semihosting.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __DEBUG_LL_SEMIHOSTING_H
+#define __DEBUG_LL_SEMIHOSTING_H
+
+#include <asm/semihosting.h>
+#include <linux/stddef.h>
+
+#ifdef CONFIG_DEBUG_SEMIHOSTING
+static inline void PUTC_LL(char c)
+{
+	semihosting_putc(NULL, c);
+}
+#endif
+
+#endif /* __DEBUG_LL_ARM_SEMIHOSTING_H */
-- 
2.39.2




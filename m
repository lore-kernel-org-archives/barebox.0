Delivery-date: Sat, 19 Jun 2021 06:53:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luSyj-0004Vc-GX
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 06:53:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luSyh-0000kV-K7
	for lore@pengutronix.de; Sat, 19 Jun 2021 06:53:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=scLpooD4BeESAPiQcAi0izmpY5BxWusWTlLm285TAF0=; b=FEblccbcs5JuGj
	xhJY0AW3qmPq2trIRnD/plHLgkOiF2ogQolFPNMQZq/HFo5MiwT0YNV6T2pEuUipKarTtmoRjm87F
	z9z1TrvK0x6BLldyMYhutPxqo6QjEm5XtKTzRypR3a6QMFEfgBQw5WWtVh1DXeIFZHXGkIElWdFKj
	B5Fc2vRR8OGwIum9k3nKsDmhT49ApPHGIOMKEIoFGwD47xKZ7L1nUQbyv4QEzNv1OAt9BhRCU/ZP5
	WSG7AkaTYWHfTS94PcZNJT9WXyP3+Oamj4Nfc8aNCAj8v71Q9KJyWpp45gpkcx4qLDOETJ9zzC6O0
	LQx71wxPRQgkvBHdQUAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luSxG-00GHxX-Le; Sat, 19 Jun 2021 04:51:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luSwi-00GHfn-QP
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 04:51:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwh-0008M8-CK; Sat, 19 Jun 2021 06:51:03 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwa-0001Ky-Q7; Sat, 19 Jun 2021 06:50:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sat, 19 Jun 2021 06:50:37 +0200
Message-Id: <20210619045055.779-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619045055.779-1-a.fatoum@pengutronix.de>
References: <20210619045055.779-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_215104_975521_E0E9164F 
X-CRM114-Status: GOOD (  19.78  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 11/29] RISC-V: support incoherent I-Cache
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SiFive SoCs have separate I-Caches that require self-modifying code
like barebox' relocation and PBL extraction code to do cache
maintenance. Implement sync_caches_for_execution and use it where
appropriate.

The underlying fence.i primitive is part of the Zifencei
(load/store fence) ISA extension. As we can't be sure it's always
available, the exception handler will skip over the instruction
if the CPU trips over it. Alternatively, if CONFIG_HAS_CACHE=n,
the instruction won't be emitted at all.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/Kconfig.socs                |  2 ++
 arch/riscv/boot/uncompress.c           |  2 ++
 arch/riscv/cpu/core.c                  |  7 +++++++
 arch/riscv/cpu/interrupts.c            |  9 +++++++++
 arch/riscv/include/asm/barebox-riscv.h |  2 ++
 arch/riscv/include/asm/cacheflush.h    | 16 ++++++++++++++++
 arch/riscv/lib/reloc.c                 |  8 ++++++++
 arch/riscv/lib/setupc.S                |  2 ++
 8 files changed, 48 insertions(+)
 create mode 100644 arch/riscv/include/asm/cacheflush.h

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 8f955cd4d220..6ec2315d4e70 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -17,12 +17,14 @@ config SOC_VIRT
 	bool "QEMU Virt Machine"
 	select RISCV_S_MODE
 	select BOARD_RISCV_GENERIC_DT
+	select HAS_CACHE
 	help
 	  Generates an image tht can be be booted by QEMU. The image is called
 	  barebox-dt-2nd.img
 
 config CPU_SIFIVE
 	bool
+	select HAS_CACHE
 
 config SOC_SIFIVE
 	bool "SiFive SoCs"
diff --git a/arch/riscv/boot/uncompress.c b/arch/riscv/boot/uncompress.c
index c6c20b38e390..4ed9b4d37192 100644
--- a/arch/riscv/boot/uncompress.c
+++ b/arch/riscv/boot/uncompress.c
@@ -66,6 +66,8 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 
 	pbl_barebox_uncompress((void*)barebox_base, pg_start, pg_len);
 
+	sync_caches_for_execution();
+
 	barebox = (void *)barebox_base;
 
 	pr_debug("jumping to uncompressed image at 0x%p. dtb=0x%p\n", barebox, fdt);
diff --git a/arch/riscv/cpu/core.c b/arch/riscv/cpu/core.c
index 62eb0ca87164..b4727fe7449b 100644
--- a/arch/riscv/cpu/core.c
+++ b/arch/riscv/cpu/core.c
@@ -18,6 +18,7 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <memory.h>
+#include <asm/barebox-riscv.h>
 #include <asm-generic/memory_layout.h>
 #include <globalvar.h>
 #include <magicvar.h>
@@ -91,3 +92,9 @@ static struct driver_d riscv_driver = {
 	.of_compatible = riscv_dt_ids,
 };
 postcore_platform_driver(riscv_driver);
+
+static void arch_shutdown(void)
+{
+	sync_caches_for_execution();
+}
+archshutdown_exitcall(arch_shutdown);
diff --git a/arch/riscv/cpu/interrupts.c b/arch/riscv/cpu/interrupts.c
index df6d3e6e010b..0e8951b61968 100644
--- a/arch/riscv/cpu/interrupts.c
+++ b/arch/riscv/cpu/interrupts.c
@@ -121,6 +121,15 @@ unsigned long handle_trap(struct pt_regs *regs)
 	if (skip_data_abort(regs))
 		goto skip;
 
+	if (regs->cause == 2) { /* illegal instruction */
+		switch(*(unsigned long *)regs->epc) {
+		case 0x0000100f: /* fence.i */
+			goto skip;
+		default:
+			break;
+		}
+	}
+
 	report_trap(regs);
 	hang();
 
diff --git a/arch/riscv/include/asm/barebox-riscv.h b/arch/riscv/include/asm/barebox-riscv.h
index bbe6cd040642..abb320242769 100644
--- a/arch/riscv/include/asm/barebox-riscv.h
+++ b/arch/riscv/include/asm/barebox-riscv.h
@@ -27,6 +27,8 @@ void setup_c(void);
 void relocate_to_current_adr(void);
 void relocate_to_adr(unsigned long target);
 
+void sync_caches_for_execution(void);
+
 void __noreturn __naked barebox_riscv_entry(unsigned long membase, unsigned long memsize,
 					    void *boarddata, unsigned int flags);
 
diff --git a/arch/riscv/include/asm/cacheflush.h b/arch/riscv/include/asm/cacheflush.h
new file mode 100644
index 000000000000..9ff25740c66b
--- /dev/null
+++ b/arch/riscv/include/asm/cacheflush.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2015 Regents of the University of California
+ */
+
+#ifndef _ASM_RISCV_CACHEFLUSH_H
+#define _ASM_RISCV_CACHEFLUSH_H
+
+static inline void local_flush_icache_all(void)
+{
+#ifdef HAS_CACHE
+	asm volatile ("fence.i" ::: "memory");
+#endif
+}
+
+#endif /* _ASM_RISCV_CACHEFLUSH_H */
diff --git a/arch/riscv/lib/reloc.c b/arch/riscv/lib/reloc.c
index 2fc8818cd698..479d586afdee 100644
--- a/arch/riscv/lib/reloc.c
+++ b/arch/riscv/lib/reloc.c
@@ -5,6 +5,7 @@
 #include <linux/linkage.h>
 #include <asm/sections.h>
 #include <asm/barebox-riscv.h>
+#include <asm/cacheflush.h>
 #include <debug_ll.h>
 #include <asm-generic/module.h>
 
@@ -24,6 +25,11 @@
 
 #define RISC_R_TYPE(x)	((x) & 0xFF)
 
+void sync_caches_for_execution(void)
+{
+	local_flush_icache_all();
+}
+
 void relocate_to_current_adr(void)
 {
 	unsigned long offset;
@@ -63,4 +69,6 @@ void relocate_to_current_adr(void)
 			panic("");
 		}
 	}
+
+	sync_caches_for_execution();
 }
diff --git a/arch/riscv/lib/setupc.S b/arch/riscv/lib/setupc.S
index 5fdd81c2c3ec..d225186c79fd 100644
--- a/arch/riscv/lib/setupc.S
+++ b/arch/riscv/lib/setupc.S
@@ -46,6 +46,8 @@ ENTRY(relocate_to_adr)
 
 	jal	__memcpy
 
+	jal	sync_caches_for_execution
+
 	REG_L	a0, (SZREG * 1)(sp)
 	jr	a0 			/* jump to relocated address */
 copied:
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


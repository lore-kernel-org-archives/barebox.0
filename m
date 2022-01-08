Delivery-date: Sat, 08 Jan 2022 18:17:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6FL1-00Ecfp-NS
	for lore@lore.pengutronix.de; Sat, 08 Jan 2022 18:17:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6FKz-00052t-K6
	for lore@pengutronix.de; Sat, 08 Jan 2022 18:17:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ITrceSznTQffdLPMBmKWUZos7vs9k4M/RTCrguZPJZs=; b=Q2qEX8rE0V3W6+
	H0mwvibYoUlJ3mjRWvbfvgXuJu3Yslo/NI3k4Gzknb3lZSxXFhJZCakEL7Pdl/H46BmVYOUDDFQc3
	iW0pCciwXo0Ngh7ykbr4W6laM/taW6kin1uAPxj+9O5hnuFtK9iANnUiB0G6RPZwORErGg5vAoZMZ
	akBAPCOKlsHMveIpP2ZQX3wBsv0sNvoyZokClyiDdqIjzl4DaNVy867W2Y0zx8c2xHD0R4lyjItLX
	meiga+HlUmZX7ENFAidlSEDOtjAJv0GcwtbuE4HiC9OYkC0aJQO3VfnUsmq+O7T58I1tMzfKeRQl5
	y5sC9Go9fKj7LAegMr8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n6FJl-006joW-47; Sat, 08 Jan 2022 17:15:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n6FJP-006jep-LQ
 for barebox@lists.infradead.org; Sat, 08 Jan 2022 17:15:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n6FJO-0004As-8m; Sat, 08 Jan 2022 18:15:26 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n6FJN-002SmY-Ed; Sat, 08 Jan 2022 18:15:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat,  8 Jan 2022 18:15:18 +0100
Message-Id: <20220108171524.587144-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220108171524.587144-1-a.fatoum@pengutronix.de>
References: <20220108171524.587144-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220108_091527_776567_1A276092 
X-CRM114-Status: GOOD (  10.75  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/9] RISC-V: virt: riscvemu: add HTIF DEBUG_LL support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Default console of riscvemu is available Virt I/O console and as a HTIF
blocking character device. We already support Virt I/O console, but the
HTIF is easier to support for very early low level debugging. Add
DEBUG_LL support to facilitate using it.

Note: when using a framebuffer, riscvemu doesn't allocate a default
console, so barebox calling into HTIF will segfault the emulator.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/include/asm/debug_ll.h | 11 +++++++++++
 arch/riscv/include/asm/htif.h     |  9 +++++++++
 common/Kconfig                    |  9 +++++++++
 3 files changed, 29 insertions(+)

diff --git a/arch/riscv/include/asm/debug_ll.h b/arch/riscv/include/asm/debug_ll.h
index 867c96d79724..de9bc5f5fd33 100644
--- a/arch/riscv/include/asm/debug_ll.h
+++ b/arch/riscv/include/asm/debug_ll.h
@@ -53,6 +53,17 @@ static inline void PUTC_LL(char ch)
 
 #include <asm/debug_ll_litex.h>
 
+#elif defined CONFIG_DEBUG_RISCVEMU_HTIF
+
+#include <asm/htif.h>
+
+#ifndef __ASSEMBLY__
+static inline void PUTC_LL(char ch)
+{
+	htif_putc(IOMEM(HTIF_DEFAULT_BASE_ADDR), ch);
+}
+#endif
+
 #endif
 
 #ifndef debug_ll_init
diff --git a/arch/riscv/include/asm/htif.h b/arch/riscv/include/asm/htif.h
index 7312f09d2e6e..b35afdd98e1d 100644
--- a/arch/riscv/include/asm/htif.h
+++ b/arch/riscv/include/asm/htif.h
@@ -11,6 +11,10 @@
 #define HTIF_DEV_SYSCALL		0
 #define		HTIF_CMD_SYSCALL	0
 
+#define HTIF_DEV_CONSOLE		1 /* blocking character device */
+#define		HTIF_CMD_GETCHAR	0
+#define		HTIF_CMD_PUTCHAR	1
+
 #ifndef __ASSEMBLY__
 
 #include <linux/types.h>
@@ -26,6 +30,11 @@ static inline void htif_tohost(u8 device, u8 command, u64 arg)
 	__htif_tohost(IOMEM(HTIF_DEFAULT_BASE_ADDR), device, command, arg);
 }
 
+static inline void htif_putc(void __iomem *base, int c)
+{
+	__htif_tohost(base, HTIF_DEV_CONSOLE, HTIF_CMD_PUTCHAR, c);
+}
+
 #endif
 
 #endif
diff --git a/common/Kconfig b/common/Kconfig
index 802bd9bfbb2e..2f014509da0d 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1403,6 +1403,15 @@ config DEBUG_RISCV_VIRT
 	depends on SOC_VIRT
 	select DEBUG_LL_NS16550
 
+config DEBUG_RISCVEMU_HTIF
+	bool "riscvemu HTIF port"
+	depends on SOC_VIRT
+	help
+	  When run without graphics support, tinyemu will expose access
+	  to the Virt I/O console as HTIF blocking console device as well.
+	  This is useful for low level debugging before Virt I/O DMA is
+	  initialized.
+
 config DEBUG_SIFIVE
 	bool "SiFive serial0 port"
 	depends on SOC_SIFIVE
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


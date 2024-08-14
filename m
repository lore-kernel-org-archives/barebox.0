Delivery-date: Wed, 14 Aug 2024 18:15:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seGej-009aid-39
	for lore@lore.pengutronix.de;
	Wed, 14 Aug 2024 18:15:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seGej-000308-5b
	for lore@pengutronix.de; Wed, 14 Aug 2024 18:15:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wijJHzD3rpcU2UuPel87LzBZ9eeFD5GVmhgRa7qAiZc=; b=3llJUS9iFkuPnhBc/9Y3x6WmBT
	2cWbqMlOy6aHqTHhVYODMpovXw9t2kEQFouTnzh6Cdi2N+arMgazzSu40q5OE2sQwhk3ejbdKJyEp
	9y/TvpF8ypOTc/ifv+Tk8ziQsrSLc6HxU+xTgyuCNsDeMGCZE0RWOCP3y9/y4v7Rf6eUvqejrfBRP
	p84+UkAMMpvOOv3MJsli1YpR5V0p8ICceFIzNlWDOIGeXl5lmJk3T932tZzEzqz7Gb7ZtjzvQQub3
	uEvcVu4XRfk7W8npQm/eRWMkFV2tGlYCmRo5rAr0hLpihLHdyHtVtettXJ0AVbvIsKx4VMATN53DO
	rq0H8LDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seGe7-00000007cG7-2AUs;
	Wed, 14 Aug 2024 16:14:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seGe5-00000007cFF-2DSD
	for barebox@bombadil.infradead.org;
	Wed, 14 Aug 2024 16:14:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=wijJHzD3rpcU2UuPel87LzBZ9eeFD5GVmhgRa7qAiZc=; b=X2ERiFdAg5ZidqTRC5mSP3dBql
	IdhYwG1gqvaU4SYvKaqCAB9z65t3QhGQ1x7MSf5c1M/darR5OhYORX/Rgm3YI866AcL8gjoHAwuuI
	/ycRkLiUIeRgXf7OnU9MSbQRxCUcgIl3oCsZk9PSXdRxn5jbXAhdZposc5TY9vsBp56VmyHJr+fS8
	6fM0s6CWQwEvW3b6UFCw5reA3rSYP1OC6dnRvP99/DeKsv4CUkOgTsrjSNhCVcHgoBeJATOZP2Zlk
	X292hBrCHzVz3YHPhghdv/OpBKikVO/PgxKNbZdrJcd2p2956zDP9gtSl//NFXUrmtj3lgDuf7jFi
	ePyF+yMA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seGe0-000000087zH-0AKb
	for barebox@lists.infradead.org;
	Wed, 14 Aug 2024 16:14:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seGdw-0002m5-T0; Wed, 14 Aug 2024 18:14:36 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seGdw-000Ohu-GD; Wed, 14 Aug 2024 18:14:36 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seGdw-002NJg-1K;
	Wed, 14 Aug 2024 18:14:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Aug 2024 18:14:34 +0200
Message-Id: <20240814161435.566270-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240814161435.566270-1-a.fatoum@pengutronix.de>
References: <20240814161435.566270-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_171440_266643_9A851581 
X-CRM114-Status: GOOD (  14.14  )
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
Subject: [PATCH 2/3] openrisc: implement C debug_ll for NS16550
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The early startup code is written in assembly, so the C DEBUG_LL
implementation isn't as useful, but it can still come in handy as
debugging aid, so let's add it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/openrisc/Kconfig                |  1 +
 arch/openrisc/include/asm/debug_ll.h | 36 ++++++++++++++++++++++++++++
 arch/openrisc/lib/board.c            |  3 +++
 common/Kconfig.debug_ll              |  4 ++++
 4 files changed, 44 insertions(+)
 create mode 100644 arch/openrisc/include/asm/debug_ll.h

diff --git a/arch/openrisc/Kconfig b/arch/openrisc/Kconfig
index 4ae03b748c79..102071686e4f 100644
--- a/arch/openrisc/Kconfig
+++ b/arch/openrisc/Kconfig
@@ -7,6 +7,7 @@ config OPENRISC
 	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	select GENERIC_FIND_NEXT_BIT
 	select ARCH_HAS_SJLJ
+	select HAS_DEBUG_LL
 	default y
 
 # not used
diff --git a/arch/openrisc/include/asm/debug_ll.h b/arch/openrisc/include/asm/debug_ll.h
new file mode 100644
index 000000000000..35d436094096
--- /dev/null
+++ b/arch/openrisc/include/asm/debug_ll.h
@@ -0,0 +1,36 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __ASM_DEBUG_LL__
+#define __ASM_DEBUG_LL__
+
+#include <io.h>
+
+#if defined CONFIG_DEBUG_OPENRISC_NS16550
+
+#define DEBUG_LL_UART_BASE	IOMEM(0x90000000)
+
+static inline uint8_t debug_ll_read_reg(void __iomem *base, int reg)
+{
+	return readb(base + reg);
+}
+
+static inline void debug_ll_write_reg(void __iomem *base, int reg, uint8_t val)
+{
+	writeb(val, base + reg);
+}
+
+#include <debug_ll/ns16550.h>
+
+static inline void debug_ll_init(void)
+{
+	/* already configured */
+}
+
+static inline void PUTC_LL(int c)
+{
+	debug_ll_ns16550_putc(DEBUG_LL_UART_BASE, c);
+}
+
+#endif
+
+#endif
diff --git a/arch/openrisc/lib/board.c b/arch/openrisc/lib/board.c
index 9591120fee4b..c6f34ed412d7 100644
--- a/arch/openrisc/lib/board.c
+++ b/arch/openrisc/lib/board.c
@@ -18,6 +18,7 @@
 #include <init.h>
 #include <memory.h>
 #include <asm-generic/memory_layout.h>
+#include <debug_ll.h>
 
 /* Called from assembly */
 void openrisc_start_barebox(void);
@@ -27,5 +28,7 @@ void __noreturn openrisc_start_barebox(void)
 	mem_malloc_init((void *)(OPENRISC_SOPC_TEXT_BASE - MALLOC_SIZE),
 			(void *)(OPENRISC_SOPC_TEXT_BASE - 1));
 
+	putc_ll('>');
+
 	start_barebox();
 }
diff --git a/common/Kconfig.debug_ll b/common/Kconfig.debug_ll
index 3f6f3e7c3bdb..1f9255b1a45b 100644
--- a/common/Kconfig.debug_ll
+++ b/common/Kconfig.debug_ll
@@ -350,6 +350,10 @@ config DEBUG_SEMIHOSTING
 	  Say Y here if you want low-level debugging support
 	  using semihosting writec.
 
+config DEBUG_OPENRISC_NS16550
+	bool "OpenRISC NS16550 console"
+	depends on OPENRISC
+
 endchoice
 
 config DEBUG_LL_NS16550
-- 
2.39.2




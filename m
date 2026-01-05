Delivery-date: Mon, 05 Jan 2026 09:38:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcg6R-001SWX-31
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 09:38:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcg6R-0003ls-Cb
	for lore@pengutronix.de; Mon, 05 Jan 2026 09:38:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=I1/E9s+eR5JQhzByxcPr3b2noog7YvqGoPe4ui0IsEs=; b=ZIwMbfcuVHPVIpZ+Z7rPdFNL0Y
	s2giG6G6uzedn6YeN39AE30QW/dSDJFLdV8ZCi4l2jj1vO+xeFdGozuJg56b0RScmrCBD0IIaZOtt
	3DMwY5YbT5jh7iImr+cQu6FaGiIO1QBHTp/ceDBRX8WSCarMQdMdna9rXvOxC67QHvlwsFNeBlAAX
	Kn4laA0YmahvZwCsIh63YIrUaP/WBml8sjLOD8YICuoBGI9GybJpmYE63dX/KdhrGMWTPwyqRV6qA
	ZHPyy8kTbKOhyMDUslip1QZw1YYbw5h2Njqu74cMqavb2OfrByc9y2W/uRb27YCVLQmhL5aNtOLJm
	Ej7/fiBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcg62-0000000B06W-2js2;
	Mon, 05 Jan 2026 08:37:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcg5z-0000000B06D-3sMD
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 08:37:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vcg5y-0003h3-4X; Mon, 05 Jan 2026 09:37:46 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  5 Jan 2026 09:37:44 +0100
Message-ID: <20260105083745.3258038-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_003747_981586_0CAC39D6 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: virt: add DEBUG_LL support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Both Virt and Vexpress have a PL011 serial console as default console,
but they place it at different addresses. Add a new DEBUG_QEMU_ARM32_VIRT
config option to be able to use DEBUG_LL on 32-bit Virt as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/include/asm/debug_ll.h  | 3 ++-
 common/Kconfig.debug_ll          | 4 ++++
 include/mach/vexpress/debug_ll.h | 4 ++++
 3 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index bac0b2106936..fd7715c7434b 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -23,7 +23,8 @@
 #include <mach/stm32mp/debug_ll.h>
 #endif
 
-#ifdef CONFIG_DEBUG_VEXPRESS_UART
+#if defined(CONFIG_DEBUG_VEXPRESS_UART) || \
+    defined(CONFIG_DEBUG_QEMU_ARM32_VIRT)
 #include <mach/vexpress/debug_ll.h>
 #endif
 
diff --git a/common/Kconfig.debug_ll b/common/Kconfig.debug_ll
index e8be2842525f..a08d29859d27 100644
--- a/common/Kconfig.debug_ll
+++ b/common/Kconfig.debug_ll
@@ -352,6 +352,10 @@ config DEBUG_AM62X_UART
 	bool "Texas Instruments AM62X debug UART"
 	depends on ARCH_K3
 
+config DEBUG_QEMU_ARM32_VIRT
+	bool "QEMU ARM32 Virt PL011 console"
+	depends on MACH_VIRT
+
 config DEBUG_QEMU_ARM64_VIRT
 	bool "QEMU ARM64 Virt PL011 console"
 	depends on ARCH_ARM64_VIRT
diff --git a/include/mach/vexpress/debug_ll.h b/include/mach/vexpress/debug_ll.h
index 3d67e7645d33..936abf1063ce 100644
--- a/include/mach/vexpress/debug_ll.h
+++ b/include/mach/vexpress/debug_ll.h
@@ -7,7 +7,11 @@
 #ifndef __MACH_VEXPRESS_DEBUG_LL_H__
 #define   __MACH_VEXPRESS_DEBUG_LL_H__
 
+#ifdef CONFIG_DEBUG_QEMU_ARM32_VIRT
+#define DEBUG_LL_UART_ADDR 0x9000000
+#else
 #define DEBUG_LL_UART_ADDR 0x1c090000
+#endif
 
 #include <debug_ll/pl011.h>
 
-- 
2.47.3




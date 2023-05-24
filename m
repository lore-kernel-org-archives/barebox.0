Delivery-date: Thu, 25 May 2023 01:45:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1yAP-00CrgQ-DD
	for lore@lore.pengutronix.de; Thu, 25 May 2023 01:45:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1yAM-000767-FB
	for lore@pengutronix.de; Thu, 25 May 2023 01:45:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LG6LMxPVgj2zAgGh/QVfJiIB0r485YdH9Yxjz8OQrs8=; b=GJ5WetWuLgX9UXs7+n7yKmCC2M
	hI2paGi5GcWjbykt9DtgXJKcKxeXKPLjZ27rOU0Ckzk8r/YqH1d5F765/YI447VyesuX7SrqpNwqt
	JlKCTme3QLfZf2cPXVmNQXl0yxmAq1Un188rg8Ln5Z3X0Oj7xk0kXlamwDj4Xdkt8L15OaAQPSqG+
	Nm2axSv7p6xTSlr1OKcVY9C3u0LjmMUndPL5LedeeIsvpTPL6Pes0s5g4rbtrZv0tuylTKH4nH9TS
	+m3ZIy8w8+jsqKta9DX/BAOhy0aM7s0qtF3E1u7qKafSRcBk/31YrU423bjTfP0E5kTudErODtHbc
	o5CTF3dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1y92-00EzME-1L;
	Wed, 24 May 2023 23:43:52 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1y8w-00EzHo-0Q
	for barebox@lists.infradead.org;
	Wed, 24 May 2023 23:43:48 +0000
Received: (Authenticated sender: jmaselbas@zdiv.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 43BAC1C0006;
	Wed, 24 May 2023 23:43:38 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Thu, 25 May 2023 01:43:20 +0200
Message-Id: <20230524234328.82741-6-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230524234328.82741-1-jmaselbas@zdiv.net>
References: <20230524234328.82741-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_164346_322601_736FFD1E 
X-CRM114-Status: GOOD (  17.13  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 05/13] ARM: sunxi: Add lowlevel switch to aarch64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Allwinner A64 SoC (and probably others) boots in 32-bits mode. Switching
to aarch64 is achieved by writing to the Reset Management Register (RMR)
which can be accessed through the memory space thanks to an alias.

On A64 this alias is located at 0x017000a0

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
rfc->v2:
 - code is no longer assembled from .S, it now an array of 16 u32
 - added 3 nops at the end of padding (aligning the header on 16*4 bytes)
 - the code can be "modified" for other rvbar addresses

 include/mach/sunxi/rmr_switch.h | 50 +++++++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 include/mach/sunxi/rmr_switch.h

diff --git a/include/mach/sunxi/rmr_switch.h b/include/mach/sunxi/rmr_switch.h
new file mode 100644
index 0000000000..f136b11e46
--- /dev/null
+++ b/include/mach/sunxi/rmr_switch.h
@@ -0,0 +1,50 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+#ifndef MACH_SUNXI_RMR_SWITCH_H
+#define MACH_SUNXI_RMR_SWITCH_H
+
+/*
+ * ARMv8 RMR reset sequence on Allwinner SoCs.
+ *
+ * All 64-bit capable Allwinner SoCs reset in AArch32 (and continue to
+ * execute the Boot ROM in this state), so we need to switch to AArch64
+ * at some point.
+ * Section G6.2.133 of the ARMv8 ARM describes the Reset Management Register
+ * (RMR), which triggers a warm-reset of a core and can request to switch
+ * into a different execution state (AArch32 or AArch64).
+ * The address at which execution starts after the reset is held in the
+ * RVBAR system register, which is architecturally read-only.
+ * Allwinner provides a writable alias of this register in MMIO space, so
+ * we can easily set the start address of AArch64 code.
+ * This code below switches to AArch64 and starts execution at the specified
+ * start address.
+ *
+ * This file has been adapted from U-Boot code sources:
+ *  - arch/arm/mach-sunxi/rmr_switch.S
+ *  - arch/arm/include/asm/arch-sunxi/boot0.h.
+ *
+ * The aarch32 assembly has already been assembled and are inserted verbatime
+ * as .word statements (the asm source is commented for each statement).
+ *
+ */
+#define SUNXI_RMR_SWITCH_CODE(rvbar_addr) {		       \
+	0xeb000000, /* bl   .+8             subs x0, x0, x0 */ \
+	0x1400000c, /* .word 0x1400000c     b end           */ \
+	0xe59f0020, /* ldr  r0, [pc, #32] ; rvbar           */ \
+	0xe580e000, /* str  lr, [r0]                        */ \
+	0xf57ff04f, /* dsb  sy                              */ \
+	0xf57ff06f, /* isb  syo                             */ \
+	0xee1c0f50, /* mrc  15, 0, r0, cr12, cr0, {2}       */ \
+	0xe3800003, /* orr  r0, r0, #3                      */ \
+	0xee0c0f50, /* mcr  15, 0, r0, cr12, cr0, {2}       */ \
+	0xf57ff06f, /* isb  sy                              */ \
+	0xe320f003, /* 1b: wfi                              */ \
+	0xeafffffd, /* b    1b                              */ \
+	rvbar_addr, \
+	0xd503201f, 0xd503201f, 0xd503201f } /* nop * 3 */
+#define sunxi_switch_to_aarch64(section, rvbar_addr) {			\
+		__section(section) static const u32 rmr_switch[] =	\
+			SUNXI_RMR_SWITCH_CODE(rvbar_addr);		\
+		__keep_symbolref(rmr_switch);				\
+	}
+
+#endif
-- 
2.40.1




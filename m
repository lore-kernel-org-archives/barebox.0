Delivery-date: Mon, 30 Jan 2023 18:46:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMYEg-007qwz-VF
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 18:46:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMYEe-0001L5-4O
	for lore@pengutronix.de; Mon, 30 Jan 2023 18:46:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SFGqSXDnfWRcAoccRdZeS5mw6dMDZUUtYN1vk+TMyNI=; b=aynZAPOXsh24N3N7hJaZiBqvgZ
	D6a54amu/oG9D6bytwQBIxp9VUWs9TaA4rtNunJPNeqjJKnFY1S04btBZTlzP9KvSs1o3A2LqVvwe
	qRndT4uHl7mSH6qS+QJEqqT6lGEPYYE7I0OSjQbV8m7755WeyQlu1D6Xwt+xuIvlrcqzFCxIOULFU
	ruJW7Wg8KzHoNzwMD1rwojSlh1cbIMBEAm/ir3bhXsBDKp0yP1AxXDQkpHY6qcMDCcGSL7HA2Etj6
	0xgfrxXVURnGs+Lf5fESwAwex7uzan0malHMBKSktb/tPnfp8lVHSTe0KsbcsWF5MoAOmjebubjWh
	cC1LVWXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMNv1-002UgG-65; Mon, 30 Jan 2023 06:45:31 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMNuw-002Ufd-N7
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 06:45:28 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 03F8F240007;
	Mon, 30 Jan 2023 06:45:16 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 30 Jan 2023 07:45:10 +0100
Message-Id: <20230130064510.2398689-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230129_224526_929342_76ED7EBB 
X-CRM114-Status: GOOD (  12.39  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: add DEBUG_LL support for ARM64 QEMU Virt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

We have DEBUG_LL for the PL011 on the ARM64 QEMU Virt,
but it is unused. Wire it in.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig                |  1 +
 arch/arm/cpu/board-dt-2nd.c     |  2 ++
 arch/arm/include/asm/debug_ll.h | 11 +++++++++++
 common/Kconfig                  |  4 ++++
 4 files changed, 18 insertions(+)
 create mode 100644 arch/arm/include/asm/debug_ll.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 759b29ee77e1..8183f6d54686 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -292,6 +292,7 @@ config ARCH_ARM64_VIRT
 	select ARM_AMBA
 	select BOARD_ARM_VIRT
 	select HW_HAS_PCI
+	select HAS_ASM_DEBUG_LL
 
 endchoice
 
diff --git a/arch/arm/cpu/board-dt-2nd.c b/arch/arm/cpu/board-dt-2nd.c
index 6f4a6f26a8c7..6f69a6dd27a2 100644
--- a/arch/arm/cpu/board-dt-2nd.c
+++ b/arch/arm/cpu/board-dt-2nd.c
@@ -19,6 +19,8 @@ void dt_2nd_aarch64(void *fdt)
 {
 	unsigned long membase, memsize;
 
+	putc_ll('>');
+
 	/* entry point already set up stack */
 
 	arm_cpu_lowlevel_init();
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
new file mode 100644
index 000000000000..d7b25a7fcab9
--- /dev/null
+++ b/arch/arm/include/asm/debug_ll.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __ASM_DEBUG_LL_H__
+#define __ASM_DEBUG_LL_H__
+
+#ifdef CONFIG_DEBUG_QEMU_ARM64_VIRT
+#define DEBUG_LL_UART_ADDR		0x9000000
+#include <debug_ll/pl011.h>
+#endif
+
+#endif
diff --git a/common/Kconfig b/common/Kconfig
index 9e175d36c43e..d95797099341 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1479,6 +1479,10 @@ config DEBUG_SUN20I
 	depends on SOC_ALLWINNER_SUN20I
 	select DEBUG_LL_NS16550
 
+config DEBUG_QEMU_ARM64_VIRT
+	bool "QEMU ARM64 Virt PL011 console"
+	depends on ARCH_ARM64_VIRT
+
 endchoice
 
 config DEBUG_LL_NS16550
-- 
2.38.1




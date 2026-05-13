Delivery-date: Wed, 13 May 2026 14:23:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wN8ct-001FiR-22
	for lore@lore.pengutronix.de;
	Wed, 13 May 2026 14:23:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wN8cp-0005BO-A8
	for lore@pengutronix.de; Wed, 13 May 2026 14:23:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C59mZrgHFuOd2QAk1N3OhjY9cNUK+jYmcqAY7PyTOcg=; b=meSRKE0jV8yEEI67ZyaTUxPc4q
	yx+5rgWmyImxP6QOlmGqQRfIUakso5o9lRv6BNMWb+SqZYt9wgghz/uDvH8fhJpWR58Gz9sQw6LhR
	3eamE0px01LH9hKpx7Ze4wZC0vfh9o4QCeNSNJPucMDwgLao1b6Yvv3f8YhNMY1iSBA3rNBRjwqEp
	StP75Vc3VJdcKOhIQNC8EfxhU5GJQ83vDHNS9URyIfTZIRi3Ahd5JkoNaTbbVbpKboqlQvceFDV7t
	n/SoVf87miMjMRHfnBie8bunzgPZ9NOb8QHaWLOv/ETPYdXMsqPsZJox3WaehSIZKEKbICvhyHpuq
	EgCp6V2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN8bf-00000002TEN-0IFn;
	Wed, 13 May 2026 12:22:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN8ba-00000002TBg-22Y6
	for barebox@lists.infradead.org;
	Wed, 13 May 2026 12:22:29 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wN8bY-0004ke-UP; Wed, 13 May 2026 14:22:24 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 13 May 2026 14:22:23 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260513-socfpga-agilex5-entry-v1-2-090758694c88@pengutronix.de>
References: <20260513-socfpga-agilex5-entry-v1-0-090758694c88@pengutronix.de>
In-Reply-To: <20260513-socfpga-agilex5-entry-v1-0-090758694c88@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_052226_532697_8622BF06 
X-CRM114-Status: GOOD (  13.18  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] arm: socfpga: agilex5: add helper for entry function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The entry function is useful for all Agilex 5 based boards and its easy
to get the stack location wrong.

Add a helper function that does the right thing for Agilex 5 and avoid
defining the stack location for every board.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/boards/arrow-axe5-eagle/lowlevel.c | 13 ++-----------
 include/mach/socfpga/barebox-arm.h          | 20 ++++++++++++++++++++
 2 files changed, 22 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boards/arrow-axe5-eagle/lowlevel.c b/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
index b5a56a1a8c5f..de5a14b2d503 100644
--- a/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
+++ b/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
@@ -5,23 +5,14 @@
 #include <asm/barebox-arm.h>
 #include <asm/system.h>
 #include <pbl.h>
+#include <mach/socfpga/barebox-arm.h>
 #include <mach/socfpga/debug_ll.h>
 #include <mach/socfpga/init.h>
 #include <mach/socfpga/generic.h>
-#include <mach/socfpga/soc64-handoff.h>
 #include <mach/socfpga/soc64-regs.h>
 
 extern char __dtb_z_socfpga_agilex5_axe5_eagle_start[];
 
-/*
- * The SDM firmware uses the last page in the OCRAM for handoff data. Put the
- * stack below the handoff data.
- *
- * Note: U-Boot puts the stack at 0x71000 (0x80000 - 0xf000) and reserves even
- * more space.
- */
-#define AXE5_STACKTOP SOC64_HANDOFF_BASE
-
 static noinline void axe5_eagle_continue(void)
 {
 	agilex5_clk_init();
@@ -52,7 +43,7 @@ static noinline void axe5_eagle_continue(void)
 	agilex5_barebox_entry(__dtb_z_socfpga_agilex5_axe5_eagle_start);
 }
 
-ENTRY_FUNCTION_WITHSTACK(start_socfpga_agilex5_axe5_eagle, AXE5_STACKTOP, r0, r1, r2)
+ENTRY_FUNCTION_AGILEX5(start_socfpga_agilex5_axe5_eagle)
 {
 	if (current_el() == 3)
 		socfpga_agilex5_cpu_lowlevel_init();
diff --git a/include/mach/socfpga/barebox-arm.h b/include/mach/socfpga/barebox-arm.h
new file mode 100644
index 000000000000..60c9ddabea23
--- /dev/null
+++ b/include/mach/socfpga/barebox-arm.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef SOCFPGA_BAREBOX_ARM_H_
+#define SOCFPGA_BAREBOX_ARM_H_
+
+#include <asm/barebox-arm.h>
+#include <mach/socfpga/soc64-handoff.h>
+
+/*
+ * The SDM firmware uses the last page in the OCRAM for handoff data. Put the
+ * stack below the handoff data.
+ *
+ * Note: U-Boot puts the stack at 0x71000 (0x80000 - 0xf000) and reserves even
+ * more space.
+ */
+#define AGILEX5_STACKTOP SOC64_HANDOFF_BASE
+
+#define ENTRY_FUNCTION_AGILEX5(name)					\
+	ENTRY_FUNCTION_WITHSTACK(name, AGILEX5_STACKTOP, r0, r1, r2)
+
+#endif

-- 
2.47.3




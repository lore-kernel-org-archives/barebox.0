Delivery-date: Thu, 11 Jan 2024 12:50:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNtZy-00Cw2A-24
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 12:50:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNtZx-0002MA-R1
	for lore@pengutronix.de; Thu, 11 Jan 2024 12:50:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uLzMSl1gV/ev9IuLUgkXz1HyE+py8FHniRdMQvrmbhg=; b=BlXGfLgPl9hv5sC9qOp62rYkIf
	grFHtUuYl0AWpWm5RAMzVVX71EDbMbC7Z/b/urpBhi96qCY2DjrdRdy1eaA51n5Dd3OP0L2SVzEPG
	MN3EzfhxQsgSNiGQ2yLGbmfRLSKAUvdhKF8qNXqXfSrelA1fSzax2bV5pKMef7Hjyc6Tsb7hZ+H/M
	JIT8SIZjI+LYcOC8hTx0dWy7IH7ifm8GB9ZMRJ4Y7PJ4jbpS5MKuxDOCN6Aztlu74oe0fU/zXJiM9
	SltgopAWfJQMFgaJ3JRBz++rGcbIIDw7mlIb3scsvasRC7P4+eo9feR5QlvrvWmknxnDPyUqA+EZD
	pchCia+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtYc-00HSnE-2l;
	Thu, 11 Jan 2024 11:49:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtYP-00HSag-15
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 11:49:03 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rNtYK-000137-HT
	for barebox@lists.infradead.org; Thu, 11 Jan 2024 12:48:52 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 11 Jan 2024 12:48:25 +0100
Message-Id: <20240111114841.2676939-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240111114841.2676939-1-m.felsch@pengutronix.de>
References: <20240111114841.2676939-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_034857_575685_9F2D9E93 
X-CRM114-Status: GOOD (  16.14  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 02/18] ARM: i.MX8M: bundle imx-scratch code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The scatch code spread over the code base which is ok as long as we use
it for the bootrom-log only.

This commit bundles the scratch code into a own module to make it easier
to adapt later on and to make the scratch space independent of
CONFIG_ARCH_IMX_ROMAPI.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/Makefile       |  2 +-
 arch/arm/mach-imx/romapi.c       |  8 --------
 arch/arm/mach-imx/scratch.c      | 25 +++++++++++++++++++++++++
 arch/arm/mach-imx/xload-common.c |  8 --------
 include/mach/imx/romapi.h        |  2 +-
 include/mach/imx/scratch.h       | 17 +++++++++++++++++
 include/mach/imx/xload.h         | 11 -----------
 7 files changed, 44 insertions(+), 29 deletions(-)
 create mode 100644 arch/arm/mach-imx/scratch.c
 create mode 100644 include/mach/imx/scratch.h

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 3a51ae87813a..9505cffa8111 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -17,7 +17,7 @@ CFLAGS_imx6.o := -march=armv7-a
 lwl-$(CONFIG_ARCH_IMX6) += imx6-mmdc.o
 obj-$(CONFIG_ARCH_IMX7) += imx7.o
 obj-$(CONFIG_ARCH_VF610) += vf610.o
-obj-pbl-$(CONFIG_ARCH_IMX8M) += imx8m.o
+obj-pbl-$(CONFIG_ARCH_IMX8M) += imx8m.o scratch.o
 obj-$(CONFIG_ARCH_IMX9) += imx9.o
 lwl-$(CONFIG_ARCH_IMX_ATF) += atf.o
 obj-pbl-$(CONFIG_ARCH_IMX8M) += tzasc.o
diff --git a/arch/arm/mach-imx/romapi.c b/arch/arm/mach-imx/romapi.c
index 6d47f3c6d4af..e11f38202461 100644
--- a/arch/arm/mach-imx/romapi.c
+++ b/arch/arm/mach-imx/romapi.c
@@ -228,14 +228,6 @@ const u32 *imx8m_get_bootrom_log(void)
 	return NULL;
 }
 
-static int imx8m_reserve_scratch_area(void)
-{
-	return PTR_ERR_OR_ZERO(request_sdram_region("scratch area",
-				    (ulong)arm_mem_scratch_get(),
-				    sizeof(struct imx_scratch_space)));
-}
-device_initcall(imx8m_reserve_scratch_area);
-
 void imx8m_save_bootrom_log(void *dest)
 {
 	const u32 *rom_log;
diff --git a/arch/arm/mach-imx/scratch.c b/arch/arm/mach-imx/scratch.c
new file mode 100644
index 000000000000..0828b55ff8e5
--- /dev/null
+++ b/arch/arm/mach-imx/scratch.c
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <asm/barebox-arm.h>
+#include <init.h>
+#include <linux/err.h>
+#include <mach/imx/imx8m-regs.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/scratch.h>
+#include <memory.h>
+
+struct imx_scratch_space *__imx8m_scratch_space(int ddr_buswidth)
+{
+	ulong endmem = MX8M_DDR_CSD1_BASE_ADDR +
+		imx8m_barebox_earlymem_size(ddr_buswidth);
+
+	return (void *)arm_mem_scratch(endmem);
+}
+
+static int imx8m_reserve_scratch_area(void)
+{
+	return PTR_ERR_OR_ZERO(request_sdram_region("scratch area",
+				    (ulong)arm_mem_scratch_get(),
+				    sizeof(struct imx_scratch_space)));
+}
+device_initcall(imx8m_reserve_scratch_area);
diff --git a/arch/arm/mach-imx/xload-common.c b/arch/arm/mach-imx/xload-common.c
index 03eb2ef109e3..0c02e664a84b 100644
--- a/arch/arm/mach-imx/xload-common.c
+++ b/arch/arm/mach-imx/xload-common.c
@@ -21,14 +21,6 @@ int piggydata_size(void)
 	return input_data_end - input_data;
 }
 
-struct imx_scratch_space *__imx8m_scratch_space(int ddr_buswidth)
-{
-	ulong endmem = MX8M_DDR_CSD1_BASE_ADDR +
-		imx8m_barebox_earlymem_size(ddr_buswidth);
-
-	return (void *)arm_mem_scratch(endmem);
-}
-
 #define HDR_SIZE	512
 
 static int
diff --git a/include/mach/imx/romapi.h b/include/mach/imx/romapi.h
index 959d165a3323..977095a5a2f5 100644
--- a/include/mach/imx/romapi.h
+++ b/include/mach/imx/romapi.h
@@ -2,7 +2,7 @@
 #ifndef __MACH_IMX_ROMAPI_H
 #define __MACH_IMX_ROMAPI_H
 
-#include <mach/imx/xload.h>
+#include <mach/imx/scratch.h>
 #include <linux/types.h>
 
 struct rom_api {
diff --git a/include/mach/imx/scratch.h b/include/mach/imx/scratch.h
new file mode 100644
index 000000000000..6dcf35750caf
--- /dev/null
+++ b/include/mach/imx/scratch.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __MACH_IMX_SCRATCH_H
+#define __MACH_IMX_SCRATCH_H
+
+struct imx_scratch_space {
+	u32 bootrom_log[128];
+};
+
+struct imx_scratch_space *__imx8m_scratch_space(int ddr_buswidth);
+
+#define imx8mq_scratch_space() __imx8m_scratch_space(32)
+#define imx8mm_scratch_space() __imx8m_scratch_space(32)
+#define imx8mn_scratch_space() __imx8m_scratch_space(16)
+#define imx8mp_scratch_space() __imx8m_scratch_space(32)
+
+#endif /* __MACH_IMX_SCRATCH_H */
diff --git a/include/mach/imx/xload.h b/include/mach/imx/xload.h
index 2c2d2fa3c52d..965e73772ceb 100644
--- a/include/mach/imx/xload.h
+++ b/include/mach/imx/xload.h
@@ -43,15 +43,4 @@ int piggydata_size(void);
 extern unsigned char input_data[];
 extern unsigned char input_data_end[];
 
-struct imx_scratch_space {
-	u32 bootrom_log[128];
-};
-
-struct imx_scratch_space *__imx8m_scratch_space(int ddr_buswidth);
-
-#define imx8mq_scratch_space() __imx8m_scratch_space(32)
-#define imx8mm_scratch_space() __imx8m_scratch_space(32)
-#define imx8mn_scratch_space() __imx8m_scratch_space(16)
-#define imx8mp_scratch_space() __imx8m_scratch_space(32)
-
 #endif /* __MACH_IMX_XLOAD_H */
-- 
2.39.2




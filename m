Delivery-date: Tue, 16 Jan 2024 18:09:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmvr-002FNE-0z
	for lore@lore.pengutronix.de;
	Tue, 16 Jan 2024 18:09:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmvr-0007T5-RX
	for lore@pengutronix.de; Tue, 16 Jan 2024 18:09:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PEkewntKU5snqgWpKxazTdABmljSviJWVBjgSJUEokY=; b=iEqFmHKV3EZPie6/+2YEpn8yNx
	SzpM+lI2+Eca+d6h7PlPEwjYqF0RPOBba3oOmS2e98P/bX46zOU+ICuXFxELbnrOAWhk8tlk+kQur
	BBG5ZBtC4V9Y/opUaZmoZ/3UqvsckrDXuDuT0tNVCJGIUh8aZXRB1yFYm/oV5pVeLxhgOiuyyFFhP
	544OQwae8HUs3h1+swj0y2BpWIDdGEA9e6+h9zfByNfa9m/FS775ngZxQ71mxTmG8musFKcAfHzA9
	zhdrp2dJ0KowA2lQ5Q/8DlfkAWQmPvlRQcLzACo6qqtTu95RTen2ZSLRN1L2qZmG89XZMwBcz4m1S
	ekztnFWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmut-00Chzr-0u;
	Tue, 16 Jan 2024 17:07:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmug-00Chq9-0d
	for barebox@lists.infradead.org;
	Tue, 16 Jan 2024 17:07:50 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rPmue-0006lg-VE
	for barebox@lists.infradead.org; Tue, 16 Jan 2024 18:07:45 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 16 Jan 2024 18:07:22 +0100
Message-Id: <20240116170738.209954-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240116170738.209954-1-m.felsch@pengutronix.de>
References: <20240116170738.209954-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_090746_337375_24A05FC2 
X-CRM114-Status: GOOD (  16.58  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 02/18] ARM: i.MX8M: bundle imx-scratch code
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
index 32f12cd7f574..3bbb7119b1b0 100644
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
index 05932fac88ce..710068a8d41d 100644
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
index 66219f9fef30..99f526d38be9 100644
--- a/include/mach/imx/xload.h
+++ b/include/mach/imx/xload.h
@@ -45,15 +45,4 @@ int piggydata_size(void);
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




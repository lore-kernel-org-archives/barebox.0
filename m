Delivery-date: Thu, 11 Jan 2024 12:50:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNta2-00Cw4m-0c
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 12:50:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNtZz-0002OA-En
	for lore@pengutronix.de; Thu, 11 Jan 2024 12:50:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GuHur3cUKQKFcK/4u+RVjL1J/C+o//PLw+90354ds8Q=; b=dvTVV3Q9S9/ahNHcKPDDbDONW0
	hcJnUTSLSTvutYWQEgQov/xcA93pZ8YT3ZSeqNsj29shOMLAh7Fm9LROt5oCk99kDIufuaElx6G0b
	OwRcPBoBZ5zyZEPfR+k4dLKNzR/slpgdkDhDGiTEKMgmP2cHbuU9CwNbia7i4skgIjeJzYwH6djOK
	YembEUnh4a2bX3x6TH+8QnX5S2KG7PIBqgURvLhrcPMPcZtrEJC+KDHGgcU+jO9sOxOjCXB/ExXEY
	EHDDohQ1a+Mbsu2xr+Zs5O1SuZ7n4Z+kGd5xbiByClK51zC01sqyZdwAWtHZZAkAXkekZfjfcWnyS
	MPDNnHUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtYn-00HSwS-0c;
	Thu, 11 Jan 2024 11:49:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtYQ-00HSar-38
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 11:49:04 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rNtYK-000137-Rt
	for barebox@lists.infradead.org; Thu, 11 Jan 2024 12:48:52 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 11 Jan 2024 12:48:35 +0100
Message-Id: <20240111114841.2676939-13-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240111114841.2676939-1-m.felsch@pengutronix.de>
References: <20240111114841.2676939-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_034859_007273_6565179D 
X-CRM114-Status: GOOD (  11.82  )
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
Subject: [PATCH 12/18] ARM64: mmu: add dynamic optee memory mapping support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Use the dynamic optee memory base address for the early mapping if
possible and fallback to the static mapping if the query failed.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c      | 14 ++++++++++++--
 arch/arm/mach-imx/esdctl.c |  4 ++++
 common/Makefile            |  2 +-
 3 files changed, 17 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index c6ea63e655ad..69fd2218c1fc 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -20,6 +20,7 @@
 #include <memory.h>
 #include <asm/system_info.h>
 #include <linux/pagemap.h>
+#include <tee/optee.h>
 
 #include "mmu_64.h"
 
@@ -297,6 +298,7 @@ void dma_flush_range(void *ptr, size_t size)
 void mmu_early_enable(unsigned long membase, unsigned long memsize)
 {
 	int el;
+	u64 optee_membase;
 	unsigned long ttb = arm_mem_ttb(membase + memsize);
 
 	pr_debug("enabling MMU, ttb @ 0x%08lx\n", ttb);
@@ -309,8 +311,16 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize)
 	memset((void *)ttb, 0, GRANULE_SIZE);
 
 	early_remap_range(0, 1UL << (BITS_PER_VA - 1), MAP_UNCACHED);
-	early_remap_range(membase, memsize - OPTEE_SIZE, MAP_CACHED);
-	early_remap_range(membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_FAULT);
+
+	if (optee_get_membase(&optee_membase)) {
+		/* Fallback and place OP-TEE at the memory end region */
+		early_remap_range(membase, memsize - OPTEE_SIZE, MAP_CACHED);
+		early_remap_range(membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_FAULT);
+	} else {
+		early_remap_range(membase, memsize, MAP_CACHED);
+		early_remap_range(optee_membase, OPTEE_SIZE, MAP_FAULT);
+	}
+
 	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext), MAP_CACHED);
 
 	mmu_enable();
diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index ac35a2de66f1..47c43d75ec75 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -29,6 +29,8 @@
 #include <mach/imx/imx8m-regs.h>
 #include <mach/imx/imx7-regs.h>
 #include <mach/imx/imx9-regs.h>
+#include <mach/imx/scratch.h>
+#include <tee/optee.h>
 
 struct imx_esdctl_data {
 	unsigned long base0;
@@ -1004,6 +1006,8 @@ resource_size_t imx8m_barebox_earlymem_size(unsigned buswidth)
 
 static void __noreturn imx8m_barebox_entry(void *boarddata, unsigned buswidth)
 {
+	imx8m_init_scratch_space(buswidth, false);
+	optee_set_membase(imx8m_scratch_get_optee_hdr());
 	barebox_arm_entry(MX8M_DDR_CSD1_BASE_ADDR,
 			  imx8m_barebox_earlymem_size(buswidth), boarddata);
 }
diff --git a/common/Makefile b/common/Makefile
index 7fb864f61480..c31cbab9e48f 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -80,7 +80,7 @@ obj-$(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB) += imx-bbu-nand-fcb.o
 obj-$(CONFIG_BOOT)		+= boot.o
 obj-$(CONFIG_SERIAL_DEV_BUS)	+= serdev.o
 obj-$(CONFIG_USBGADGET_START)	+= usbgadget.o
-pbl-$(CONFIG_PBL_OPTEE)		+= optee.o
+obj-pbl-$(CONFIG_PBL_OPTEE)	+= optee.o
 obj-$(CONFIG_BOOTM_OPTEE)	+= optee.o
 obj-$(CONFIG_FASTBOOT_BASE)	+= fastboot.o
 
-- 
2.39.2




Delivery-date: Fri, 18 Jun 2021 10:11:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lu9av-0007Vd-Ad
	for lore@lore.pengutronix.de; Fri, 18 Jun 2021 10:11:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lu9au-0001dV-A4
	for lore@pengutronix.de; Fri, 18 Jun 2021 10:11:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CdirfpdqFjEvvAOPs9PPgSGAarPc4x7y0juiW5voQBA=; b=cZpkA50HLeTDFR
	KK4VIJPruzS0JlfrN4S7doo+qSkZcd5PhIOARWULnyGcfAU/wrS74L9+QzJwbIwj+ofCfcElUbzPJ
	RW4VY/XP8zNtUWrdcZg/1QKoK0Jwf6iFgq3KrzX09hcXPZgMJ+Bmr0iUza+rh70uH5XohC04f4qTb
	STIu8wtYyEBiolSvzyuemqJKL9w/2E+FT1ltj4W6kOlssVFQGL/ukcK3Fhy98vzayEqE2lGss1I4H
	MR8hEb9EefiOT6W20bdYN9jdjn8viiS9kr0wo5aoVy7PRUUNI4s5rnsE/UEnkG1vlztj9Rq3hHJkS
	Sf19Umhq1TfNZDTfEX/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lu9Za-00DFsH-Sa; Fri, 18 Jun 2021 08:09:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lu9ZS-00DFpd-B8
 for barebox@lists.infradead.org; Fri, 18 Jun 2021 08:09:47 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1lu9ZN-0001Cn-QG
 for barebox@lists.infradead.org; Fri, 18 Jun 2021 10:09:41 +0200
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1lu9ZN-0006GR-Ei
 for barebox@lists.infradead.org; Fri, 18 Jun 2021 10:09:41 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 18 Jun 2021 10:09:39 +0200
Message-Id: <20210618080939.15343-2-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210618080939.15343-1-s.trumtrar@pengutronix.de>
References: <20210618080939.15343-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_010946_437721_715428CF 
X-CRM114-Status: GOOD (  19.27  )
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
Subject: [PATCH 2/2] firmware: socfpga: set APPLYCFG after loading bitstream
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

To make changes to the SDRAM controller effective, the APPLYCFG bit must
be set after programming the bitstream to the FPGA. This has to be done
without any SDRAM usage. Therefore copy the function to execute to the
OCRAM and execute it from there.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 .../mach-socfpga/include/mach/cyclone5-regs.h |  1 +
 drivers/firmware/Makefile                     |  2 +-
 drivers/firmware/socfpga.c                    | 21 +++++++++++++++++++
 drivers/firmware/socfpga_sdr.S                | 17 +++++++++++++++
 4 files changed, 40 insertions(+), 1 deletion(-)
 create mode 100644 drivers/firmware/socfpga_sdr.S

diff --git a/arch/arm/mach-socfpga/include/mach/cyclone5-regs.h b/arch/arm/mach-socfpga/include/mach/cyclone5-regs.h
index e88daf718917..1a7d787a27bf 100644
--- a/arch/arm/mach-socfpga/include/mach/cyclone5-regs.h
+++ b/arch/arm/mach-socfpga/include/mach/cyclone5-regs.h
@@ -18,5 +18,6 @@
 #define CYCLONE5_SYSMGR_ADDRESS		0xffd08000
 #define CYCLONE5_SCANMGR_ADDRESS	0xfff02000
 #define CYCLONE5_SMP_TWD_ADDRESS	0xfffec600
+#define CYCLONE5_OCRAM_ADDRESS		0xffff0000
 
 #endif /* __MACH_SOCFPGA_REGS_H */
diff --git a/drivers/firmware/Makefile b/drivers/firmware/Makefile
index b162b08b0a80..bbd2bcda9780 100644
--- a/drivers/firmware/Makefile
+++ b/drivers/firmware/Makefile
@@ -1,3 +1,3 @@
 obj-$(CONFIG_FIRMWARE_ALTERA_SERIAL) += altera_serial.o
-obj-$(CONFIG_FIRMWARE_ALTERA_SOCFPGA) += socfpga.o
+obj-$(CONFIG_FIRMWARE_ALTERA_SOCFPGA) += socfpga.o socfpga_sdr.o
 obj-$(CONFIG_FIRMWARE_ZYNQMP_FPGA) += zynqmp-fpga.o
diff --git a/drivers/firmware/socfpga.c b/drivers/firmware/socfpga.c
index 393c78c45d79..c468c743720f 100644
--- a/drivers/firmware/socfpga.c
+++ b/drivers/firmware/socfpga.c
@@ -38,6 +38,9 @@
 #include <mach/cyclone5-reset-manager.h>
 #include <mach/cyclone5-regs.h>
 #include <mach/cyclone5-sdram.h>
+#include <asm/fncpy.h>
+#include <mmu.h>
+#include <asm/cache.h>
 
 #define FPGAMGRREGS_STAT			0x0
 #define FPGAMGRREGS_CTRL			0x4
@@ -77,6 +80,9 @@
 #define CDRATIO_x4	0x2
 #define CDRATIO_x8	0x3
 
+extern void socfpga_sdram_apply_static_cfg(void __iomem *sdrctrlgrp);
+extern void socfpga_sdram_apply_static_cfg_end(void *);
+
 struct fpgamgr {
 	struct firmware_handler fh;
 	struct device_d dev;
@@ -353,6 +359,9 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 {
 	struct fpgamgr *mgr = container_of(fh, struct fpgamgr, fh);
 	int status;
+	unsigned int func_size = &socfpga_sdram_apply_static_cfg_end -
+				 &socfpga_sdram_apply_static_cfg;
+	void (*ocram_func)(void __iomem *ocram_base);
 
 	/* Ensure the FPGA entering config done */
 	status = fpgamgr_program_poll_cd(mgr);
@@ -382,6 +391,18 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 		return status;
 	}
 
+	remap_range((void *)CYCLONE5_OCRAM_ADDRESS, PAGE_SIZE, MAP_CACHED);
+
+	dev_dbg(&mgr->dev, "Setting APPLYCFG bit...\n");
+
+	ocram_func = fncpy((void __iomem *)CYCLONE5_OCRAM_ADDRESS,
+			   &socfpga_sdram_apply_static_cfg, func_size);
+
+	sync_caches_for_execution();
+
+	ocram_func((void __iomem *) (CYCLONE5_SDR_ADDRESS +
+				     SDR_CTRLGRP_STATICCFG_ADDRESS));
+
 	return 0;
 }
 
diff --git a/drivers/firmware/socfpga_sdr.S b/drivers/firmware/socfpga_sdr.S
new file mode 100644
index 000000000000..d634d6362722
--- /dev/null
+++ b/drivers/firmware/socfpga_sdr.S
@@ -0,0 +1,17 @@
+#include <linux/linkage.h>
+
+	.arch	armv7-a
+	.arm
+
+/*
+ * r0 : sdram controller staticcfg
+ */
+
+ENTRY(socfpga_sdram_apply_static_cfg)
+	push {ip,lr}
+	ldr r1, [r0]
+	orr r1, r1, #8
+	str r1, [r0]
+	pop {ip,pc}
+	.align
+ENTRY(socfpga_sdram_apply_static_cfg_end)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


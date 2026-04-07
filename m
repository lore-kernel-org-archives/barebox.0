Delivery-date: Tue, 07 Apr 2026 19:10:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wA9x1-009dYn-1P
	for lore@lore.pengutronix.de;
	Tue, 07 Apr 2026 19:10:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wA9x0-0000rn-14
	for lore@pengutronix.de; Tue, 07 Apr 2026 19:10:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y4SA5QR/UMQ+wqewX/du5B07WOGNug2vFOKa54sfkrs=; b=A3HSlzo9hKQbxSxfnyQKvrwy5B
	DzuVaTPkgStDmgqhpXq9LaOzFuCWF3pIzEB0kENeFbwj7XgzmQRYQ1Ua1vasHjtirj6S+pz6sPQle
	dPP1PMCIbfkx41btnXPXQVuWg4Yt7TvxlDVXagmId3FUWc1NnLZx9gQi3hIKXzC5wHRP/TdNvz4xL
	Cyx3WVV+K9ctuDOK9ZNryeL803niVN3K+GfyCNoT5B8uQ4+R0xNDzLDyVFsgpaoxdIPtGracEUbAy
	K7ePrIFRiDYp+q4CfHQeCqGP4mx9yJ75PE8b+55dJUri1iQrL98eoTAjaTnaUBPmivKH5pZziKtpT
	0btS18iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA9wL-00000006pjY-1BX1;
	Tue, 07 Apr 2026 17:10:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA9wD-00000006peC-3Fsm
	for barebox@lists.infradead.org;
	Tue, 07 Apr 2026 17:10:09 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wA9wA-0000PH-5c; Tue, 07 Apr 2026 19:10:02 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 07 Apr 2026 19:09:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260407-socfpga-iossm-v1-v1-4-6440a5337eff@pengutronix.de>
References: <20260407-socfpga-iossm-v1-v1-0-6440a5337eff@pengutronix.de>
In-Reply-To: <20260407-socfpga-iossm-v1-v1-0-6440a5337eff@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260407_101005_950262_1780E428 
X-CRM114-Status: GOOD (  12.36  )
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
Subject: [PATCH 04/10] arm: socfpga: iossm: store size in bytes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The mem_width_info is the memory size in gigabits. Convert it to bytes
before storing it for each bank to have a more convenient format and
simplify the conversion when reading the value.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/agilex5-sdram.c |  7 +++----
 arch/arm/mach-socfpga/iossm_mailbox.c | 13 +++++++++----
 arch/arm/mach-socfpga/iossm_mailbox.h |  5 +++--
 3 files changed, 15 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-socfpga/agilex5-sdram.c b/arch/arm/mach-socfpga/agilex5-sdram.c
index 96b2b425315f..5fb59d413e8f 100644
--- a/arch/arm/mach-socfpga/agilex5-sdram.c
+++ b/arch/arm/mach-socfpga/agilex5-sdram.c
@@ -299,10 +299,6 @@ int agilex5_ddr_init_full(void)
 		return ret;
 	}
 
-	hw_size = (phys_size_t)io96b_ctrl.overall_size * SZ_1G / SZ_8;
-
-	pr_debug("%s: %lld MiB\n", io96b_ctrl.ddr_type, hw_size >> 20);
-
 	ret = io96b_ecc_enable_status(&io96b_ctrl);
 	if (ret) {
 		pr_debug("DDR: Failed to get DDR ECC status\n");
@@ -326,6 +322,9 @@ int agilex5_ddr_init_full(void)
 		pr_debug("SDRAM-ECC: Initialized success\n");
 	}
 
+	hw_size = io96b_ctrl.overall_size;
+	pr_debug("%s: %lld MiB\n", io96b_ctrl.ddr_type, hw_size / SZ_1M);
+
 	sdram_set_firewall(hw_size);
 
 	/* Firewall setting for MPFE CSR */
diff --git a/arch/arm/mach-socfpga/iossm_mailbox.c b/arch/arm/mach-socfpga/iossm_mailbox.c
index 9299fee71e0b..042ea4a99e5c 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.c
+++ b/arch/arm/mach-socfpga/iossm_mailbox.c
@@ -9,6 +9,7 @@
 #include <common.h>
 #include <io.h>
 #include <linux/bitfield.h>
+#include <linux/sizes.h>
 #include "iossm_mailbox.h"
 #include <mach/socfpga/generic.h>
 #include <mach/socfpga/soc64-regs.h>
@@ -404,21 +405,25 @@ int io96b_get_mem_width_info(struct io96b_info *io96b_ctrl)
 	struct io96b_mb_resp usr_resp;
 	struct io96b_mb_ctrl *mb_ctrl;
 	int i, j;
-	u16 memory_size;
-	u16 total_memory_size = 0;
+	phys_size_t memory_size;
+	u32 mem_width_info;
+	phys_size_t total_memory_size = 0;
 
 	/* Get all memory interface(s) total memory size on all instance(s) */
 	for (i = 0; i < io96b_ctrl->num_instance; i++) {
 		mb_ctrl = &io96b_ctrl->io96b[i].mb_ctrl;
 		memory_size = 0;
+
 		for (j = 0; j < mb_ctrl->num_mem_interface; j++) {
 			io96b_mb_req_no_param(io96b_ctrl->io96b[i].io96b_csr_addr,
 					      mb_ctrl->ip_type[j],
 					      mb_ctrl->ip_instance_id[j],
 					      CMD_GET_MEM_INFO, GET_MEM_WIDTH_INFO, &usr_resp);
+			mem_width_info = usr_resp.cmd_resp_data[1] & GENMASK(7, 0);
 
-			memory_size = memory_size +
-				(usr_resp.cmd_resp_data[1] & GENMASK(7, 0));
+			mb_ctrl->memory_size[j] = mem_width_info * (SZ_1G / SZ_8);
+
+			memory_size += mb_ctrl->memory_size[j];
 		}
 
 		if (!memory_size) {
diff --git a/arch/arm/mach-socfpga/iossm_mailbox.h b/arch/arm/mach-socfpga/iossm_mailbox.h
index bd66621d5f70..1b1bb1c7a19a 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.h
+++ b/arch/arm/mach-socfpga/iossm_mailbox.h
@@ -79,6 +79,7 @@ struct io96b_mb_ctrl {
 	u32 num_mem_interface;
 	u32 ip_type[2];
 	u32 ip_instance_id[2];
+	u32 memory_size[2];
 };
 
 /*
@@ -101,7 +102,7 @@ struct io96b_mb_resp {
  * @mb_ctrl:		IOSSM mailbox required information
  */
 struct io96b_instance {
-	u16 size;
+	phys_size_t size;
 	phys_addr_t io96b_csr_addr;
 	bool cal_status;
 	struct io96b_mb_ctrl mb_ctrl;
@@ -126,7 +127,7 @@ struct io96b_info {
 	bool			 overall_cal_status;
 	const char		*ddr_type;
 	bool			 ecc_status;
-	u16			 overall_size;
+	phys_size_t		 overall_size;
 	struct io96b_instance	 io96b[MAX_IO96B_SUPPORTED];
 	bool			 ckgen_lock;
 	u8			 num_port;

-- 
2.47.3




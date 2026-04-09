Delivery-date: Thu, 09 Apr 2026 15:54:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wApqS-00AJNj-0J
	for lore@lore.pengutronix.de;
	Thu, 09 Apr 2026 15:54:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wApqQ-0006f6-Ac
	for lore@pengutronix.de; Thu, 09 Apr 2026 15:54:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EuaB5gqXVLVneYSwrF/0bsJ3OIh8x78zJQcgu+7reu4=; b=Aw+vLK26NriKP20IweWGpOkzF9
	pcsenONLLGhOjYq99n2cwndlEuW6BvcpY+3INImzGmQAvBDVjaUrG/t40BFNX7lfyRKvSxZNaRE9B
	EvonCSuGdP1HEUOWsyqDwG3uYKHviArJg/Jkxvcts4u6wC3tYOEohyy4hX8pMPEVPJplVdIAuh7K3
	So29jP485SB+sDUFE108h2YwJ7HFYsQYKOEQ9aeuRwbuM+kgd83WY38Uq4cQhtrvXOQ2G1O60sshw
	9NEJ4UGitX2Kjay5Ss0hoWeeJDVB+FhIDQ1z0sSwCCEYy86HXUHwfuk6go02/w2pfbU9FlCLts+5P
	awEx98iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wApp3-0000000AaqQ-2Pf2;
	Thu, 09 Apr 2026 13:53:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wApoX-0000000AaX2-2ie5
	for barebox@lists.infradead.org;
	Thu, 09 Apr 2026 13:53:11 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wApoL-0005uF-CA; Thu, 09 Apr 2026 15:52:45 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 09 Apr 2026 15:52:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260409-socfpga-iossm-v1-v2-4-09effab91bc1@pengutronix.de>
References: <20260409-socfpga-iossm-v1-v2-0-09effab91bc1@pengutronix.de>
In-Reply-To: <20260409-socfpga-iossm-v1-v2-0-09effab91bc1@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260409_065257_825923_2C9F51BD 
X-CRM114-Status: GOOD (  12.93  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 04/10] arm: socfpga: iossm: store size in bytes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The mem_width_info is the memory size in gigabits. Convert it to bytes
before storing it for each bank to have a more convenient format and
simplify the conversion when reading the value.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v2:

- Change memory_size in io96b_mb_ctrl to phys_size_t to prevent overflow
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
index bd66621d5f70..0c15c92bb867 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.h
+++ b/arch/arm/mach-socfpga/iossm_mailbox.h
@@ -79,6 +79,7 @@ struct io96b_mb_ctrl {
 	u32 num_mem_interface;
 	u32 ip_type[2];
 	u32 ip_instance_id[2];
+	phys_size_t memory_size[2];
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




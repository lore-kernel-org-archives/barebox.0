Delivery-date: Thu, 16 Apr 2026 17:26:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDOc8-00CrkL-1K
	for lore@lore.pengutronix.de;
	Thu, 16 Apr 2026 17:26:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDOc7-0008ML-F0
	for lore@pengutronix.de; Thu, 16 Apr 2026 17:26:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=blLkQMPheGotmfwuQTsG2BavlsYzOAJXSSVAsQmba60=; b=icuBqUAjtgpcLDu54P1IRUBmJ8
	fpi2Ru2WHqEhjKfAYLur9Xc3IHh/7zaBvFEIrmIXZaopj37F93MtFYGV2B6DbSrdo7k/Dsmy2NGzB
	TcrjRTsenpVJI4Nw3Q2UiPlRrIbXeYGeBzcV/Z8YGqBWwRxPWkVopt/1U9hqfcQPGmpwfDXIyClVT
	GqsWD4t+hbTwY2KoRAp3BkqDlN347kM4tAFntMMGu5aqL+BNunGkt0bvyzcpuodLa5zocpy93BfHn
	Q2U1LhrRukLKhSmugxRnWnOtDnqjnnPxcf/Xq1llkHhrQ5g+S2H1FrJoTtGDDdMUz5zJWcyMjy9js
	ayqaIDfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDObQ-00000002cDH-05Ka;
	Thu, 16 Apr 2026 15:26:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDObM-00000002cAS-069t
	for barebox@lists.infradead.org;
	Thu, 16 Apr 2026 15:25:58 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wDObJ-0007uE-19; Thu, 16 Apr 2026 17:25:53 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 16 Apr 2026 17:25:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260416-socfpga-agilex5-iossm-cleanup-v1-5-ca9aae003c84@pengutronix.de>
References: <20260416-socfpga-agilex5-iossm-cleanup-v1-0-ca9aae003c84@pengutronix.de>
In-Reply-To: <20260416-socfpga-agilex5-iossm-cleanup-v1-0-ca9aae003c84@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_082556_375168_96D9B431 
X-CRM114-Status: GOOD (  13.74  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 5/6] arm: socfpga: iossm: change io96b_csr_addr to void *
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Keeping the io96b_csr_addr as void __iomem * simplifies all reads based
on the address and removes any casts.

Suggested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/agilex5-sdram.c |  6 +++---
 arch/arm/mach-socfpga/iossm_mailbox.c | 37 +++++++++++++++++------------------
 arch/arm/mach-socfpga/iossm_mailbox.h |  6 +++---
 3 files changed, 24 insertions(+), 25 deletions(-)

diff --git a/arch/arm/mach-socfpga/agilex5-sdram.c b/arch/arm/mach-socfpga/agilex5-sdram.c
index 4e7994985d26..f03d5431e569 100644
--- a/arch/arm/mach-socfpga/agilex5-sdram.c
+++ b/arch/arm/mach-socfpga/agilex5-sdram.c
@@ -120,9 +120,9 @@ static int populate_ddr_handoff(struct altera_sdram_plat *plat, struct io96b_inf
 
 	/* Assign IO96B CSR base address if it is valid */
 	for (i = 0; i < io96b_ctrl->num_instance; i++) {
-		io96b_ctrl->io96b[i].io96b_csr_addr = io96b_csr_reg_addr[i];
-		pr_debug("%s: IO96B 0x%llx CSR enabled\n", __func__
-			, io96b_ctrl->io96b[i].io96b_csr_addr);
+		io96b_ctrl->io96b[i].io96b_csr_addr = IOMEM(io96b_csr_reg_addr[i]);
+		pr_debug("%s: IO96B_%d: 0x%p CSR enabled\n", __func__,
+			 i, io96b_ctrl->io96b[i].io96b_csr_addr);
 	}
 
 	return 0;
diff --git a/arch/arm/mach-socfpga/iossm_mailbox.c b/arch/arm/mach-socfpga/iossm_mailbox.c
index fbf46a08d273..3a48026d5dd6 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.c
+++ b/arch/arm/mach-socfpga/iossm_mailbox.c
@@ -76,7 +76,7 @@ static int is_ddr_csr_clkgen_locked(u32 clkgen_mask, u8 num_port)
  * @resp:			Structure contain responses returned from the requested IOSSM
  *					mailbox command
  */
-int io96b_mb_req(phys_addr_t io96b_csr_addr, u32 ip_type, u32 instance_id,
+int io96b_mb_req(void __iomem *io96b_csr_addr, u32 ip_type, u32 instance_id,
 		 u32 usr_cmd_type, u32 usr_cmd_opcode, u32 cmd_param_0,
 		 u32 cmd_param_1, u32 cmd_param_2, u32 cmd_param_3,
 		 u32 cmd_param_4, u32 cmd_param_5, u32 cmd_param_6,
@@ -89,7 +89,7 @@ int io96b_mb_req(phys_addr_t io96b_csr_addr, u32 ip_type, u32 instance_id,
 	memset(resp, 0x0, sizeof(*resp));
 
 	/* Ensure CMD_REQ is cleared before write any command request */
-	ret = readl_poll_timeout(IOMEM(io96b_csr_addr) + IOSSM_CMD_REQ_OFFSET,
+	ret = readl_poll_timeout(io96b_csr_addr + IOSSM_CMD_REQ_OFFSET,
 				 cmd_req, !(cmd_req & GENMASK(31, 0)),
 				 10 * USEC_PER_SEC);
 	if (ret) {
@@ -117,11 +117,11 @@ int io96b_mb_req(phys_addr_t io96b_csr_addr, u32 ip_type, u32 instance_id,
 	cmd_req = (usr_cmd_opcode << 0) | (usr_cmd_type << 16) | (instance_id << 24) |
 		(ip_type << 29);
 	writel(cmd_req, io96b_csr_addr + IOSSM_CMD_REQ_OFFSET);
-	pr_debug("%s: Write 0x%x to IOSSM_CMD_REQ_OFFSET 0x%llx\n", __func__,
+	pr_debug("%s: Write 0x%x to IOSSM_CMD_REQ_OFFSET 0x%p\n", __func__,
 		 cmd_req, io96b_csr_addr + IOSSM_CMD_REQ_OFFSET);
 
 	/* Read CMD_RESPONSE_READY in CMD_RESPONSE_STATUS*/
-	ret = readl_poll_timeout(IOMEM(io96b_csr_addr) + IOSSM_CMD_RESPONSE_STATUS_OFFSET,
+	ret = readl_poll_timeout(io96b_csr_addr + IOSSM_CMD_RESPONSE_STATUS_OFFSET,
 				 resp->cmd_resp_status,
 				 resp->cmd_resp_status & IOSSM_STATUS_COMMAND_RESPONSE_READY,
 				 10 * USEC_PER_SEC);
@@ -129,27 +129,26 @@ int io96b_mb_req(phys_addr_t io96b_csr_addr, u32 ip_type, u32 instance_id,
 		pr_warn("%s: CMD_RESPONSE_STATUS ERROR: 0x%lx 0x%lx\n", __func__,
 			FIELD_GET(GENMASK(4, 1), resp->cmd_resp_status),
 			FIELD_GET(GENMASK(7, 5), resp->cmd_resp_status));
-
 	pr_debug("%s: CMD_RESPONSE_STATUS 0x%p: 0x%x\n", __func__,
 		 io96b_csr_addr + IOSSM_CMD_RESPONSE_STATUS_OFFSET,
 		 resp->cmd_resp_status);
 
 	/* read CMD_RESPONSE_DATA_* */
 	resp->cmd_resp_data[0] = readl(io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_0_OFFSET);
-	pr_debug("%s: IOSSM_CMD_RESPONSE_DATA_0_OFFSET 0x%llx: 0x%x\n",
-		 __func__, io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_0_OFFSET,
+	pr_debug("%s: IOSSM_CMD_RESPONSE_DATA_0_OFFSET 0x%p: 0x%x\n", __func__,
+		 io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_0_OFFSET,
 		 resp->cmd_resp_data[0]);
 	resp->cmd_resp_data[1] = readl(io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_1_OFFSET);
-	pr_debug("%s: IOSSM_CMD_RESPONSE_DATA_1_OFFSET 0x%llx: 0x%x\n",
-		 __func__, io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_1_OFFSET,
+	pr_debug("%s: IOSSM_CMD_RESPONSE_DATA_1_OFFSET 0x%p: 0x%x\n", __func__,
+		 io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_1_OFFSET,
 		 resp->cmd_resp_data[1]);
 	resp->cmd_resp_data[2] = readl(io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_2_OFFSET);
-	pr_debug("%s: IOSSM_CMD_RESPONSE_DATA_2_OFFSET 0x%llx: 0x%x\n",
-		 __func__, io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_2_OFFSET,
+	pr_debug("%s: IOSSM_CMD_RESPONSE_DATA_2_OFFSET 0x%p: 0x%x\n", __func__,
+		 io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_2_OFFSET,
 		 resp->cmd_resp_data[2]);
 
 	/* write CMD_RESPONSE_READY = 0 */
-	clrbits_le32((u32 *)(uintptr_t)(io96b_csr_addr + IOSSM_CMD_RESPONSE_STATUS_OFFSET),
+	clrbits_le32(io96b_csr_addr + IOSSM_CMD_RESPONSE_STATUS_OFFSET,
 		     IOSSM_STATUS_COMMAND_RESPONSE_READY);
 
 	return 0;
@@ -157,7 +156,7 @@ int io96b_mb_req(phys_addr_t io96b_csr_addr, u32 ip_type, u32 instance_id,
 
 static int io96b_mb_version(struct io96b_info *io96b_ctrl)
 {
-	phys_addr_t io96b_csr_addr = io96b_ctrl->io96b[0].io96b_csr_addr;
+	void __iomem *io96b_csr_addr = io96b_ctrl->io96b[0].io96b_csr_addr;
 	u32 mailbox_header;
 	int version;
 
@@ -234,19 +233,19 @@ void io96b_mb_init(struct io96b_info *io96b_ctrl)
 	}
 }
 
-static int io96b_cal_status(phys_addr_t addr)
+static int io96b_cal_status(void __iomem *io96b_csr_addr)
 {
 	int ret;
 	u32 cal_status;
 
 	/* Ensure calibration completed */
-	ret = readl_poll_timeout(IOMEM(addr) + IOSSM_STATUS_OFFSET,
+	ret = readl_poll_timeout(io96b_csr_addr + IOSSM_STATUS_OFFSET,
 				 cal_status,
 				 !(cal_status & IOSSM_STATUS_CAL_BUSY),
 				 10 * USEC_PER_SEC);
 	if (ret) {
-		pr_err("%s: SDRAM calibration IO96b instance 0x%llx timeout\n",
-		       __func__, addr);
+		pr_err("%s: SDRAM calibration IO96b instance 0x%p timeout\n",
+		       __func__, io96b_csr_addr);
 		hang();
 	}
 
@@ -527,7 +526,7 @@ int io96b_ecc_enable_status(struct io96b_info *io96b_ctrl)
 static int io96b_poll_bist_mem_init_status(struct io96b_info *io96b_ctrl,
 					   int instance, int interface)
 {
-	phys_addr_t io96b_csr_addr = io96b_ctrl->io96b[instance].io96b_csr_addr;
+	void __iomem *io96b_csr_addr = io96b_ctrl->io96b[instance].io96b_csr_addr;
 	struct io96b_mb_ctrl *mb_ctrl = &io96b_ctrl->io96b[instance].mb_ctrl;
 	int timeout = 1 * USEC_PER_SEC;
 	bool bist_success = false;
@@ -572,7 +571,7 @@ static int bist_mem_init_by_addr(struct io96b_info *io96b_ctrl,
 				 int instance, int interface,
 				 phys_addr_t base_addr, phys_size_t size)
 {
-	phys_addr_t io96b_csr_addr = io96b_ctrl->io96b[instance].io96b_csr_addr;
+	void __iomem *io96b_csr_addr = io96b_ctrl->io96b[instance].io96b_csr_addr;
 	struct io96b_mb_ctrl *mb_ctrl = &io96b_ctrl->io96b[instance].mb_ctrl;
 	struct io96b_mb_resp usr_resp;
 	bool bist_start = false;
diff --git a/arch/arm/mach-socfpga/iossm_mailbox.h b/arch/arm/mach-socfpga/iossm_mailbox.h
index 5db558ff04c6..0e942a632847 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.h
+++ b/arch/arm/mach-socfpga/iossm_mailbox.h
@@ -103,7 +103,7 @@ struct io96b_mb_resp {
  */
 struct io96b_instance {
 	phys_size_t size;
-	phys_addr_t io96b_csr_addr;
+	void __iomem *io96b_csr_addr;
 	bool cal_status;
 	struct io96b_mb_ctrl mb_ctrl;
 };
@@ -134,13 +134,13 @@ struct io96b_info {
 	u8			 num_port;
 };
 
-int io96b_mb_req(phys_addr_t io96b_csr_addr, u32 ip_type, u32 instance_id,
+int io96b_mb_req(void __iomem *io96b_csr_addr, u32 ip_type, u32 instance_id,
 		 u32 usr_cmd_type, u32 usr_cmd_opcode, u32 cmd_param_0,
 		 u32 cmd_param_1, u32 cmd_param_2, u32 cmd_param_3,
 		 u32 cmd_param_4, u32 cmd_param_5, u32 cmd_param_6,
 		 struct io96b_mb_resp *resp);
 
-static inline int io96b_mb_req_no_param(phys_addr_t io96b_csr_addr, u32 ip_type,
+static inline int io96b_mb_req_no_param(void __iomem *io96b_csr_addr, u32 ip_type,
 					u32 instance_id, u32 usr_cmd_type,
 					u32 usr_cmd_opcode, struct io96b_mb_resp *resp)
 {

-- 
2.47.3




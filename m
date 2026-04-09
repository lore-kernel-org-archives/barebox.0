Delivery-date: Thu, 09 Apr 2026 15:55:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wApr6-00AJRd-38
	for lore@lore.pengutronix.de;
	Thu, 09 Apr 2026 15:55:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wApr5-0006sH-4s
	for lore@pengutronix.de; Thu, 09 Apr 2026 15:55:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fR1MkHw/P1F7KqFmEauYGldBmIdyWc8GXcDU0qn2OLA=; b=TCGIiCrcLnuZGVzD4IGsY3w7Rl
	rLi+bIyfHxwla4ADFzlRl3t2i1EMMMxtV0SExqHTRjZfG5YO3Ia4ZCMrbUDWtfPePFQAcPP5qCBFP
	61ChQPEXmLyI5C5dvzy3NDGvfXgoKdraEY13LlsuLfEhqhP+6A4Z0xp7up7txwfiO5h9ci18jqn0Y
	tvdqqMB0/gFevpL510p4baW9fP6s/+n/P4gPav1FvJp+JMYWBQr7NM9/3ISJ7PplGDmfcin8pVw93
	vM63s9fBeOxwvCvI4Ts2srZ6fZ2r6jxK+Aqi7kZRmkWv0I/U8Uxld8xb7jcyntygXI/560WlEUjmz
	OFLV58NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAppX-0000000Ab86-1vlt;
	Thu, 09 Apr 2026 13:53:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wApoY-0000000AaXA-09t4
	for barebox@lists.infradead.org;
	Thu, 09 Apr 2026 13:53:22 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wApoL-0005uF-J6; Thu, 09 Apr 2026 15:52:45 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 09 Apr 2026 15:52:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260409-socfpga-iossm-v1-v2-10-09effab91bc1@pengutronix.de>
References: <20260409-socfpga-iossm-v1-v2-0-09effab91bc1@pengutronix.de>
In-Reply-To: <20260409-socfpga-iossm-v1-v2-0-09effab91bc1@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260409_065258_446078_B6A3A12F 
X-CRM114-Status: GOOD (  14.20  )
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
Subject: [PATCH v2 10/10] arm: socfpga: iossm: add support for mailbox v1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The iossm mailbox v1 exposes the interface configuration as registers
instead of mailbox messages.

Use either mailbox messages or register accessed depending on the
detected iossm mailbox version.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v2:

- none
---
 arch/arm/mach-socfpga/iossm_mailbox.c | 117 +++++++++++++++++++++++++---------
 1 file changed, 88 insertions(+), 29 deletions(-)

diff --git a/arch/arm/mach-socfpga/iossm_mailbox.c b/arch/arm/mach-socfpga/iossm_mailbox.c
index 4c6a84feccc5..9fd50fe042de 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.c
+++ b/arch/arm/mach-socfpga/iossm_mailbox.c
@@ -30,6 +30,18 @@
 
 #define IOSSM_MAILBOX_HEADER_OFFSET			0x0
 #define IOSSM_MAILBOX_SPEC_VERSION_MASK			GENMASK(2, 0)
+#define IOSSM_MEM_INTF_INFO_0_OFFSET			0x200
+#define IOSSM_MEM_TECHNOLOGY_INTF0_OFFSET               0x210
+#define IOSSM_MEM_WIDTH_INFO_INTF0_OFFSET               0x230
+#define IOSSM_MEM_TOTAL_CAPACITY_INTF0_OFFSET           0x234
+#define IOSSM_MEM_INTF_INFO_1_OFFSET			0x280
+#define IOSSM_MEM_TECHNOLOGY_INTF1_OFFSET               0x290
+#define IOSSM_MEM_TOTAL_CAPACITY_INTF1_OFFSET           0x2B4
+#define IOSSM_MEM_WIDTH_INFO_INTF1_OFFSET               0x2B0
+#define IOSSM_ECC_ENABLE_INTF0_OFFSET			0x240
+#define IOSSM_ECC_ENABLE_INTF1_OFFSET			0x2C0
+#define IOSSM_MEM_INIT_STATUS_INTF0_OFFSET		0x260
+#define IOSSM_MEM_INIT_STATUS_INTF1_OFFSET		0x2E0
 
 /* supported DDR type list */
 static const char *ddr_type_list[7] = {
@@ -194,6 +206,7 @@ void io96b_mb_init(struct io96b_info *io96b_ctrl)
 	version = io96b_mb_version(io96b_ctrl);
 	switch (version) {
 	case 0:
+	case 1:
 		pr_debug("IOSSM: mailbox version %d\n", version);
 		break;
 	default:
@@ -210,12 +223,20 @@ void io96b_mb_init(struct io96b_info *io96b_ctrl)
 		mb_ctrl = &io96b_ctrl->io96b[i].mb_ctrl;
 		pr_debug("%s: get memory interface IO96B %d\n", __func__, i);
 		/* Get memory interface IP type and instance ID (IP identifier) */
-		io96b_mb_req_no_param(io96b_ctrl->io96b[i].io96b_csr_addr, 0, 0,
-				      CMD_GET_SYS_INFO, GET_MEM_INTF_INFO, &usr_resp);
-		num_mem_interface =
-			IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status) & 0x3;
-		for (j = 0; j < num_mem_interface; j++)
-			mem_intf_info[j] = usr_resp.cmd_resp_data[j];
+		if (io96b_ctrl->version == 1) {
+			mem_intf_info[0] = readl(io96b_ctrl->io96b[i].io96b_csr_addr +
+						 IOSSM_MEM_INTF_INFO_0_OFFSET);
+			mem_intf_info[1] = readl(io96b_ctrl->io96b[i].io96b_csr_addr +
+						 IOSSM_MEM_INTF_INFO_1_OFFSET);
+			num_mem_interface = 2;
+		} else {
+			io96b_mb_req_no_param(io96b_ctrl->io96b[i].io96b_csr_addr, 0, 0,
+					      CMD_GET_SYS_INFO, GET_MEM_INTF_INFO, &usr_resp);
+			num_mem_interface =
+				IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status) & 0x3;
+			for (j = 0; j < num_mem_interface; j++)
+				mem_intf_info[j] = usr_resp.cmd_resp_data[j];
+		}
 
 		/* Retrieve memory interface IP type and instance ID (IP identifier) */
 		j = 0;
@@ -373,6 +394,11 @@ int io96b_get_mem_technology(struct io96b_info *io96b_ctrl)
 	u32 mem_technology_intf;
 	u8 ddr_type_ret;
 
+	u32 mem_technology_intf_offset[] = {
+		IOSSM_MEM_TECHNOLOGY_INTF0_OFFSET,
+		IOSSM_MEM_TECHNOLOGY_INTF1_OFFSET
+	};
+
 	/* Initialize ddr type */
 	io96b_ctrl->ddr_type = ddr_type_list[6];
 
@@ -380,12 +406,17 @@ int io96b_get_mem_technology(struct io96b_info *io96b_ctrl)
 	for (i = 0; i < io96b_ctrl->num_instance; i++) {
 		mb_ctrl = &io96b_ctrl->io96b[i].mb_ctrl;
 		for (j = 0; j < mb_ctrl->num_mem_interface; j++) {
-			io96b_mb_req_no_param(io96b_ctrl->io96b[i].io96b_csr_addr,
-					      mb_ctrl->ip_type[j],
-					      mb_ctrl->ip_instance_id[j],
-					      CMD_GET_MEM_INFO, GET_MEM_TECHNOLOGY, &usr_resp);
+			if (io96b_ctrl->version == 1) {
+				mem_technology_intf = readl(io96b_ctrl->io96b[i].io96b_csr_addr +
+							    mem_technology_intf_offset[j]);
+			} else {
+				io96b_mb_req_no_param(io96b_ctrl->io96b[i].io96b_csr_addr,
+						      mb_ctrl->ip_type[j],
+						      mb_ctrl->ip_instance_id[j],
+						      CMD_GET_MEM_INFO, GET_MEM_TECHNOLOGY, &usr_resp);
 
-			mem_technology_intf = IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status);
+				mem_technology_intf = IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status);
+			}
 
 			ddr_type_ret = mem_technology_intf & GENMASK(2, 0);
 
@@ -411,17 +442,27 @@ int io96b_get_mem_width_info(struct io96b_info *io96b_ctrl)
 	u32 mem_width_info;
 	phys_size_t total_memory_size = 0;
 
+	u32 mem_total_capacity_intf_offset[] = {
+		IOSSM_MEM_TOTAL_CAPACITY_INTF0_OFFSET,
+		IOSSM_MEM_TOTAL_CAPACITY_INTF1_OFFSET
+	};
+
 	/* Get all memory interface(s) total memory size on all instance(s) */
 	for (i = 0; i < io96b_ctrl->num_instance; i++) {
 		mb_ctrl = &io96b_ctrl->io96b[i].mb_ctrl;
 		memory_size = 0;
 
 		for (j = 0; j < mb_ctrl->num_mem_interface; j++) {
-			io96b_mb_req_no_param(io96b_ctrl->io96b[i].io96b_csr_addr,
-					      mb_ctrl->ip_type[j],
-					      mb_ctrl->ip_instance_id[j],
-					      CMD_GET_MEM_INFO, GET_MEM_WIDTH_INFO, &usr_resp);
-			mem_width_info = usr_resp.cmd_resp_data[1] & GENMASK(7, 0);
+			if (io96b_ctrl->version == 1) {
+				mem_width_info = readl(io96b_ctrl->io96b[i].io96b_csr_addr +
+						       mem_total_capacity_intf_offset[j]);
+			} else {
+				io96b_mb_req_no_param(io96b_ctrl->io96b[i].io96b_csr_addr,
+						      mb_ctrl->ip_type[j],
+						      mb_ctrl->ip_instance_id[j],
+						      CMD_GET_MEM_INFO, GET_MEM_WIDTH_INFO, &usr_resp);
+				mem_width_info = usr_resp.cmd_resp_data[1] & GENMASK(7, 0);
+			}
 
 			mb_ctrl->memory_size[j] = mem_width_info * (SZ_1G / SZ_8);
 
@@ -458,6 +499,11 @@ int io96b_ecc_enable_status(struct io96b_info *io96b_ctrl)
 	bool ecc_stat;
 	bool inline_ecc = false;
 
+	u32 ecc_enable_intf_offset[] = {
+		IOSSM_ECC_ENABLE_INTF0_OFFSET,
+		IOSSM_ECC_ENABLE_INTF1_OFFSET
+	};
+
 	/* Initialize ECC status */
 	io96b_ctrl->ecc_status = false;
 
@@ -465,13 +511,17 @@ int io96b_ecc_enable_status(struct io96b_info *io96b_ctrl)
 	for (i = 0; i < io96b_ctrl->num_instance; i++) {
 		mb_ctrl = &io96b_ctrl->io96b[i].mb_ctrl;
 		for (j = 0; j < mb_ctrl->num_mem_interface; j++) {
-			io96b_mb_req_no_param(io96b_ctrl->io96b[i].io96b_csr_addr,
-					      mb_ctrl->ip_type[j],
-					      mb_ctrl->ip_instance_id[j],
-					      CMD_TRIG_CONTROLLER_OP, ECC_ENABLE_STATUS,
-					      &usr_resp);
-			ecc_enable_intf = IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status)
-
+			if (io96b_ctrl->version == 1) {
+				ecc_enable_intf = readl(io96b_ctrl->io96b[i].io96b_csr_addr +
+							ecc_enable_intf_offset[j]);
+			} else {
+				io96b_mb_req_no_param(io96b_ctrl->io96b[i].io96b_csr_addr,
+						      mb_ctrl->ip_type[j],
+						      mb_ctrl->ip_instance_id[j],
+						      CMD_TRIG_CONTROLLER_OP, ECC_ENABLE_STATUS,
+						      &usr_resp);
+				ecc_enable_intf = IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status);
+			}
 			ecc_stat = (ecc_enable_intf & GENMASK(1, 0)) == 0 ? false : true;
 			inline_ecc = FIELD_GET(BIT(8), ecc_enable_intf);
 
@@ -509,14 +559,23 @@ static int io96b_poll_bist_mem_init_status(struct io96b_info *io96b_ctrl,
 	struct io96b_mb_resp usr_resp;
 	u32 mem_init_status;
 
+	u32 mem_init_status_offset[] = {
+		IOSSM_MEM_INIT_STATUS_INTF0_OFFSET,
+		IOSSM_MEM_INIT_STATUS_INTF1_OFFSET
+	};
+
 	/* Polling for the initiated memory initialization BIST status */
 	while (!bist_success) {
-		io96b_mb_req_no_param(io96b_csr_addr,
-				      mb_ctrl->ip_type[interface],
-				      mb_ctrl->ip_instance_id[interface],
-				      CMD_TRIG_CONTROLLER_OP,
-				      BIST_MEM_INIT_STATUS, &usr_resp);
-		mem_init_status = IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status);
+		if (io96b_ctrl->version == 1) {
+			mem_init_status = readl(io96b_csr_addr + mem_init_status_offset[interface]);
+		} else {
+			io96b_mb_req_no_param(io96b_csr_addr,
+					      mb_ctrl->ip_type[interface],
+					      mb_ctrl->ip_instance_id[interface],
+					      CMD_TRIG_CONTROLLER_OP,
+					      BIST_MEM_INIT_STATUS, &usr_resp);
+			mem_init_status = IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status);
+		}
 
 		bist_success = FIELD_GET(BIT(0), mem_init_status);
 		bist_error = FIELD_GET(GENMASK(2, 1), mem_init_status);

-- 
2.47.3




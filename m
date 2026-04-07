Delivery-date: Tue, 07 Apr 2026 19:10:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wA9x2-009dZi-04
	for lore@lore.pengutronix.de;
	Tue, 07 Apr 2026 19:10:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wA9x0-0000rx-4c
	for lore@pengutronix.de; Tue, 07 Apr 2026 19:10:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WjTcjjPuzAJ74T1xA014y5TIBhkdtpZFCnzvnLM1yKw=; b=QX4zHvZk/F9XdWJa3dZdwe5Be6
	vcrKU8MXFutQDtAchLs00cks9qUbMVtOP2OcbUUMsP7Gib12reVtR3u7JGaN+mX+yzwzMPEnMytIp
	F/94NbMggYxda/eP3xdxMv9IzKzQBxF3D188BFHnUcNH7jOfytg8kVRj9kUmQfbEmmrM0q1gToQ08
	1xC9ciXKhASrPVuujRp4Mvmt56LpYp3zYphfMQ4rkicsFzRiGrbnqaf8SFgo+WZVyCq/hkWPYX5qf
	YIfWpMqtB7w9zLpEW+FFflcY6iMV48wrLqDJNYvCNAnCnxtqEK3N/m8dUmXUua9/RAVwfXXELdooS
	hqXXpXqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA9wL-00000006pjy-3a6I;
	Tue, 07 Apr 2026 17:10:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA9wD-00000006peB-3G1I
	for barebox@lists.infradead.org;
	Tue, 07 Apr 2026 17:10:09 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wA9wA-0000PH-4W; Tue, 07 Apr 2026 19:10:02 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 07 Apr 2026 19:09:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260407-socfpga-iossm-v1-v1-3-6440a5337eff@pengutronix.de>
References: <20260407-socfpga-iossm-v1-v1-0-6440a5337eff@pengutronix.de>
In-Reply-To: <20260407-socfpga-iossm-v1-v1-0-6440a5337eff@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260407_101005_936253_D78137BE 
X-CRM114-Status: GOOD (  11.89  )
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
Subject: [PATCH 03/10] arm: socfpga: iossm: use local mb_ctrl variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Introduce a local variable to improve the readablility and avoid long
names when accessing the variables.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/iossm_mailbox.c | 47 +++++++++++++++++++++--------------
 1 file changed, 29 insertions(+), 18 deletions(-)

diff --git a/arch/arm/mach-socfpga/iossm_mailbox.c b/arch/arm/mach-socfpga/iossm_mailbox.c
index d14399f305de..9299fee71e0b 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.c
+++ b/arch/arm/mach-socfpga/iossm_mailbox.c
@@ -185,6 +185,7 @@ static int io96b_mb_version(struct io96b_info *io96b_ctrl)
 void io96b_mb_init(struct io96b_info *io96b_ctrl)
 {
 	struct io96b_mb_resp usr_resp;
+	struct io96b_mb_ctrl *mb_ctrl;
 	u8 ip_type_ret, instance_id_ret;
 	int i, j, k;
 	int version;
@@ -202,27 +203,28 @@ void io96b_mb_init(struct io96b_info *io96b_ctrl)
 
 	pr_debug("%s: num_instance %d\n", __func__, io96b_ctrl->num_instance);
 	for (i = 0; i < io96b_ctrl->num_instance; i++) {
+		mb_ctrl = &io96b_ctrl->io96b[i].mb_ctrl;
 		pr_debug("%s: get memory interface IO96B %d\n", __func__, i);
 		/* Get memory interface IP type and instance ID (IP identifier) */
 		io96b_mb_req_no_param(io96b_ctrl->io96b[i].io96b_csr_addr, 0, 0,
 				      CMD_GET_SYS_INFO, GET_MEM_INTF_INFO, &usr_resp);
 		pr_debug("%s: get response from memory interface IO96B %d\n", __func__, i);
 		/* Retrieve number of memory interface(s) */
-		io96b_ctrl->io96b[i].mb_ctrl.num_mem_interface =
+		mb_ctrl->num_mem_interface =
 			IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status) & 0x3;
-		pr_debug("%s: IO96B %d: num_mem_interface: 0x%x\n", __func__,
-			 i, io96b_ctrl->io96b[i].mb_ctrl.num_mem_interface);
+		pr_debug("%s: IO96B %d: num_mem_interface: %d\n", __func__,
+			 i, mb_ctrl->num_mem_interface);
 
 		/* Retrieve memory interface IP type and instance ID (IP identifier) */
 		j = 0;
-		for (k = 0; k < io96b_ctrl->io96b[i].mb_ctrl.num_mem_interface; k++) {
+		for (k = 0; k < mb_ctrl->num_mem_interface; k++) {
 			ip_type_ret = FIELD_GET(INTF_IP_TYPE_MASK, usr_resp.cmd_resp_data[k]);
 			instance_id_ret = FIELD_GET(INTF_INSTANCE_ID_MASK,
 						    usr_resp.cmd_resp_data[k]);
 
 			if (ip_type_ret) {
-				io96b_ctrl->io96b[i].mb_ctrl.ip_type[j] = ip_type_ret;
-				io96b_ctrl->io96b[i].mb_ctrl.ip_instance_id[j] = instance_id_ret;
+				mb_ctrl->ip_type[j] = ip_type_ret;
+				mb_ctrl->ip_instance_id[j] = instance_id_ret;
 				pr_debug("%s: IO96B %d mem_interface %d: ip_type_ret: 0x%x\n",
 					 __func__, i, j, ip_type_ret);
 				pr_debug("%s: IO96B %d mem_interface %d: instance_id_ret: 0x%x\n",
@@ -297,6 +299,7 @@ void io96b_init_mem_cal(struct io96b_info *io96b_ctrl)
 int io96b_trig_mem_cal(struct io96b_info *io96b_ctrl)
 {
 	struct io96b_mb_resp usr_resp;
+	struct io96b_mb_ctrl *mb_ctrl;
 	bool recal_success;
 	int i, j, k;
 	u32 cal_stat_offset;
@@ -305,10 +308,12 @@ int io96b_trig_mem_cal(struct io96b_info *io96b_ctrl)
 	int count = 0;
 
 	for (i = 0; i < io96b_ctrl->num_instance; i++) {
+		mb_ctrl = &io96b_ctrl->io96b[i].mb_ctrl;
+
 		if (io96b_ctrl->io96b[i].cal_status)
 			continue;
 
-		for (j = 0; j < io96b_ctrl->io96b[i].mb_ctrl.num_mem_interface; j++) {
+		for (j = 0; j < mb_ctrl->num_mem_interface; j++) {
 			recal_success = false;
 
 			/* Re-calibration first memory interface with failed calibration */
@@ -326,8 +331,8 @@ int io96b_trig_mem_cal(struct io96b_info *io96b_ctrl)
 					break;
 				}
 				io96b_mb_req_no_param(io96b_ctrl->io96b[i].io96b_csr_addr,
-						      io96b_ctrl->io96b[i].mb_ctrl.ip_type[j],
-						      io96b_ctrl->io96b[i].mb_ctrl.ip_instance_id[j],
+						      mb_ctrl->ip_type[j],
+						      mb_ctrl->ip_instance_id[j],
 						      CMD_TRIG_MEM_CAL_OP,
 						      TRIG_MEM_CAL, &usr_resp);
 
@@ -361,6 +366,7 @@ int io96b_trig_mem_cal(struct io96b_info *io96b_ctrl)
 int io96b_get_mem_technology(struct io96b_info *io96b_ctrl)
 {
 	struct io96b_mb_resp usr_resp;
+	struct io96b_mb_ctrl *mb_ctrl;
 	int i, j;
 	u8 ddr_type_ret;
 
@@ -369,10 +375,11 @@ int io96b_get_mem_technology(struct io96b_info *io96b_ctrl)
 
 	/* Get and ensure all memory interface(s) same DDR type */
 	for (i = 0; i < io96b_ctrl->num_instance; i++) {
-		for (j = 0; j < io96b_ctrl->io96b[i].mb_ctrl.num_mem_interface; j++) {
+		mb_ctrl = &io96b_ctrl->io96b[i].mb_ctrl;
+		for (j = 0; j < mb_ctrl->num_mem_interface; j++) {
 			io96b_mb_req_no_param(io96b_ctrl->io96b[i].io96b_csr_addr,
-					      io96b_ctrl->io96b[i].mb_ctrl.ip_type[j],
-					      io96b_ctrl->io96b[i].mb_ctrl.ip_instance_id[j],
+					      mb_ctrl->ip_type[j],
+					      mb_ctrl->ip_instance_id[j],
 					      CMD_GET_MEM_INFO, GET_MEM_TECHNOLOGY, &usr_resp);
 
 			ddr_type_ret =
@@ -395,17 +402,19 @@ int io96b_get_mem_technology(struct io96b_info *io96b_ctrl)
 int io96b_get_mem_width_info(struct io96b_info *io96b_ctrl)
 {
 	struct io96b_mb_resp usr_resp;
+	struct io96b_mb_ctrl *mb_ctrl;
 	int i, j;
 	u16 memory_size;
 	u16 total_memory_size = 0;
 
 	/* Get all memory interface(s) total memory size on all instance(s) */
 	for (i = 0; i < io96b_ctrl->num_instance; i++) {
+		mb_ctrl = &io96b_ctrl->io96b[i].mb_ctrl;
 		memory_size = 0;
-		for (j = 0; j < io96b_ctrl->io96b[i].mb_ctrl.num_mem_interface; j++) {
+		for (j = 0; j < mb_ctrl->num_mem_interface; j++) {
 			io96b_mb_req_no_param(io96b_ctrl->io96b[i].io96b_csr_addr,
-					      io96b_ctrl->io96b[i].mb_ctrl.ip_type[j],
-					      io96b_ctrl->io96b[i].mb_ctrl.ip_instance_id[j],
+					      mb_ctrl->ip_type[j],
+					      mb_ctrl->ip_instance_id[j],
 					      CMD_GET_MEM_INFO, GET_MEM_WIDTH_INFO, &usr_resp);
 
 			memory_size = memory_size +
@@ -435,6 +444,7 @@ int io96b_get_mem_width_info(struct io96b_info *io96b_ctrl)
 int io96b_ecc_enable_status(struct io96b_info *io96b_ctrl)
 {
 	struct io96b_mb_resp usr_resp;
+	struct io96b_mb_ctrl *mb_ctrl;
 	int i, j;
 	bool ecc_stat_set = false;
 	bool ecc_stat;
@@ -444,10 +454,11 @@ int io96b_ecc_enable_status(struct io96b_info *io96b_ctrl)
 
 	/* Get and ensure all memory interface(s) same ECC status */
 	for (i = 0; i < io96b_ctrl->num_instance; i++) {
-		for (j = 0; j < io96b_ctrl->io96b[i].mb_ctrl.num_mem_interface; j++) {
+		mb_ctrl = &io96b_ctrl->io96b[i].mb_ctrl;
+		for (j = 0; j < mb_ctrl->num_mem_interface; j++) {
 			io96b_mb_req_no_param(io96b_ctrl->io96b[i].io96b_csr_addr,
-					      io96b_ctrl->io96b[i].mb_ctrl.ip_type[j],
-					      io96b_ctrl->io96b[i].mb_ctrl.ip_instance_id[j],
+					      mb_ctrl->ip_type[j],
+					      mb_ctrl->ip_instance_id[j],
 					      CMD_TRIG_CONTROLLER_OP, ECC_ENABLE_STATUS,
 					      &usr_resp);
 

-- 
2.47.3




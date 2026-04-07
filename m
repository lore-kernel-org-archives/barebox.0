Delivery-date: Tue, 07 Apr 2026 19:10:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wA9x0-009dY9-1E
	for lore@lore.pengutronix.de;
	Tue, 07 Apr 2026 19:10:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wA9wz-0000rN-IE
	for lore@pengutronix.de; Tue, 07 Apr 2026 19:10:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kMBYO9JIVCtqEfGkP4WHLlREY1DdrjGC8BXTykSzMLc=; b=rhvsBd/q7iagGwsyzJvCVVfahr
	Jqu0j0etplPvzyeVejLS97vsljYwKu//nsLM1Abzs9jzV/1ua+oXKfeeyRp6Kp2GbIEojQRhz+vkP
	MeA7am904s8XsyT6ZiMHEDJ/CrmGfhUQNCyHrtv+8nzkXffBWjnhrSLGHMntUjI9+F8n3guMokReE
	a27giGWszo5ELQq/25CcUZg5JI9qNr6lJNZ/3r9kIGVE05Qb9fs60qlzjjFviA6TNSKtN++Lmnx2G
	vvMOXyBRNCCEYlc1TvkqEUhe/ISUB+kxlm3/wO9ASRbl2eTaPs7fHZ7Eq3TnQ+iCJ92tB4dKILirV
	vdQqttXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA9wK-00000006piu-2xYI;
	Tue, 07 Apr 2026 17:10:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA9wD-00000006peG-3IJk
	for barebox@lists.infradead.org;
	Tue, 07 Apr 2026 17:10:08 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wA9wA-0000PH-A7; Tue, 07 Apr 2026 19:10:02 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 07 Apr 2026 19:10:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260407-socfpga-iossm-v1-v1-8-6440a5337eff@pengutronix.de>
References: <20260407-socfpga-iossm-v1-v1-0-6440a5337eff@pengutronix.de>
In-Reply-To: <20260407-socfpga-iossm-v1-v1-0-6440a5337eff@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260407_101005_931653_99B1BD69 
X-CRM114-Status: GOOD (  14.69  )
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
Subject: [PATCH 08/10] arm: socfgpa: iossm: extract initialization of one
 interface
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Each memory interface of each instance has to be initialized. Extract
the code that initializes exactly one interface to reduce the nesting
level and make the code more readable.

While at it, prepare the initialize function to handle situations which
need a different initialization than full memory initialization like
inline_ecc. Simplify the error handling and reporting, too.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/iossm_mailbox.c | 76 +++++++++++++++++++++++------------
 1 file changed, 50 insertions(+), 26 deletions(-)

diff --git a/arch/arm/mach-socfpga/iossm_mailbox.c b/arch/arm/mach-socfpga/iossm_mailbox.c
index 67000d2cf300..6be1119724d6 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.c
+++ b/arch/arm/mach-socfpga/iossm_mailbox.c
@@ -526,43 +526,67 @@ static int io96b_poll_bist_mem_init_status(struct io96b_info *io96b_ctrl,
 	return 0;
 }
 
+static int bist_mem_init_by_addr(struct io96b_info *io96b_ctrl,
+				 int instance, int interface,
+				 phys_addr_t base_addr, phys_size_t size)
+{
+	phys_addr_t io96b_csr_addr = io96b_ctrl->io96b[instance].io96b_csr_addr;
+	struct io96b_mb_ctrl *mb_ctrl = &io96b_ctrl->io96b[instance].mb_ctrl;
+	struct io96b_mb_resp usr_resp;
+	bool bist_start = false;
+	int bist_error = 0;
+	u32 mem_init_status;
+	int ret = 0;
+	u32 mem_exp;
+
+	pr_debug("%s: Start memory initialization BIST on full memory address",
+		 __func__);
+	mem_exp = 0x40;
+
+	ret = io96b_mb_req(io96b_csr_addr,
+			   mb_ctrl->ip_type[interface],
+			   mb_ctrl->ip_instance_id[interface],
+			   CMD_TRIG_CONTROLLER_OP, BIST_MEM_INIT_START,
+			   FIELD_PREP(GENMASK(5, 0), mem_exp),
+			   FIELD_GET(GENMASK(31, 0), base_addr),
+			   FIELD_GET(GENMASK(37, 32), base_addr),
+			   0, 0, 0, 0, &usr_resp);
+	if (ret)
+		return ret;
+
+	mem_init_status = IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status);
+
+	bist_start = FIELD_GET(BIT(0), mem_init_status);
+	bist_error = FIELD_GET(GENMASK(2, 1), mem_init_status);
+
+	if (!bist_start) {
+		pr_err("%s: Failed to initialize memory on IO96B_%d (Error 0x%x)\n",
+		       __func__, instance, bist_error);
+		return -ENOEXEC;
+	}
+
+	return io96b_poll_bist_mem_init_status(io96b_ctrl, instance, interface);
+}
+
 int io96b_bist_mem_init_start(struct io96b_info *io96b_ctrl)
 {
-	struct io96b_mb_resp usr_resp;
 	int i, j;
-	bool bist_start;
-	u32 mem_init_status_intf;
 	int ret = 0;
 
-	/* Full memory initialization BIST performed on all memory interface(s) */
+	/* Memory initialization BIST performed on all memory interface(s) */
 	for (i = 0; i < io96b_ctrl->num_instance; i++) {
 		for (j = 0; j < io96b_ctrl->io96b[i].mb_ctrl.num_mem_interface; j++) {
-			bist_start = false;
-
-			/* Start memory initialization BIST on full memory address */
-			io96b_mb_req(io96b_ctrl->io96b[i].io96b_csr_addr,
-				     io96b_ctrl->io96b[i].mb_ctrl.ip_type[j],
-				     io96b_ctrl->io96b[i].mb_ctrl.ip_instance_id[j],
-				     CMD_TRIG_CONTROLLER_OP, BIST_MEM_INIT_START,
-				     0x40, 0, 0, 0, 0, 0, 0, &usr_resp);
-			mem_init_status_intf = IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status);
-
-			bist_start = mem_init_status_intf & BIT(0);
-
-			if (!bist_start) {
-				pr_err("%s: Failed to initialized memory on IO96B_%d\n",
-				       __func__, i);
-				pr_err("%s: BIST_MEM_INIT_START Error code 0x%x\n",
-				       __func__, (mem_init_status_intf & GENMASK(2, 1)) > 0x1);
-				return -ENOEXEC;
-			}
-
-			ret = io96b_poll_bist_mem_init_status(io96b_ctrl, i, j);
-			if (ret)
+			ret = bist_mem_init_by_addr(io96b_ctrl, i, j, 0x0,
+						    io96b_ctrl->io96b[i].mb_ctrl.memory_size[j]);
+			if (ret) {
+				pr_err("%s: Memory init failed at Instance %d, Interface %d\n",
+				       __func__, i, j);
 				return ret;
+			}
 		}
 
 		pr_debug("%s: Memory initialized successfully on IO96B_%d\n", __func__, i);
 	}
+
 	return 0;
 }

-- 
2.47.3




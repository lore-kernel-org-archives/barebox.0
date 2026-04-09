Delivery-date: Thu, 09 Apr 2026 15:55:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wApr6-00AJRI-1v
	for lore@lore.pengutronix.de;
	Thu, 09 Apr 2026 15:55:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wApr4-0006sA-Rd
	for lore@pengutronix.de; Thu, 09 Apr 2026 15:55:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cwmIW/jMGS/BLf8o1qxd5A8HxSHzYnBOsO/TERwVMyo=; b=JDrQHpMzxvVx6/TTq5lOjnh1Pz
	SuGVbVl3mvmoVs9quS6dPQS7uw8XPQWC7T7mIg/Y1IboiS+uT5IX2GhHltB6SCNLH9OSHwIqnx9WO
	472izXem3jCvl2fo0xsx1gu28Vr5R5uol7NdqKE40j4m3HNmhLUr9dIZaRsr9KYRE7wN7KBugmvkg
	KEkINuLpiEbdn51emAhF6rRMA6BVHHnSWxEG53fP3Q3GTRIwzySc2UDDfcziPzxvnK3yWGEA564X3
	E/cdLnDkrHkhUeJWoATjDKphTmAK/Ygs9KBYLVIn9rbJZDLQznfLXvSFBNOQupgplReOtM/w1qGnA
	A2ngVz1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAppX-0000000Ab8Y-3qqh;
	Thu, 09 Apr 2026 13:53:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wApoX-0000000AaX7-3Wvs
	for barebox@lists.infradead.org;
	Thu, 09 Apr 2026 13:53:24 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wApoL-0005uF-FX; Thu, 09 Apr 2026 15:52:45 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 09 Apr 2026 15:52:47 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260409-socfpga-iossm-v1-v2-7-09effab91bc1@pengutronix.de>
References: <20260409-socfpga-iossm-v1-v2-0-09effab91bc1@pengutronix.de>
In-Reply-To: <20260409-socfpga-iossm-v1-v2-0-09effab91bc1@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260409_065258_496431_E0764D58 
X-CRM114-Status: GOOD (  13.95  )
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
Subject: [PATCH v2 07/10] arm: socfgpa: iossm: extract
 poll_bist_mem_init_status
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Extract the final polling for the finish of the memory initialization to
make the code more readable by reducing the nesting.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v2:

- none
---
 arch/arm/mach-socfpga/iossm_mailbox.c | 66 +++++++++++++++++++++--------------
 1 file changed, 40 insertions(+), 26 deletions(-)

diff --git a/arch/arm/mach-socfpga/iossm_mailbox.c b/arch/arm/mach-socfpga/iossm_mailbox.c
index 2c598a6c192a..67000d2cf300 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.c
+++ b/arch/arm/mach-socfpga/iossm_mailbox.c
@@ -491,19 +491,53 @@ int io96b_ecc_enable_status(struct io96b_info *io96b_ctrl)
 	return 0;
 }
 
+static int io96b_poll_bist_mem_init_status(struct io96b_info *io96b_ctrl,
+					   int instance, int interface)
+{
+	phys_addr_t io96b_csr_addr = io96b_ctrl->io96b[instance].io96b_csr_addr;
+	struct io96b_mb_ctrl *mb_ctrl = &io96b_ctrl->io96b[instance].mb_ctrl;
+	int timeout = 1 * USEC_PER_SEC;
+	bool bist_success = false;
+	int bist_error = 0;
+	struct io96b_mb_resp usr_resp;
+	u32 mem_init_status;
+
+	/* Polling for the initiated memory initialization BIST status */
+	while (!bist_success) {
+		io96b_mb_req_no_param(io96b_csr_addr,
+				      mb_ctrl->ip_type[interface],
+				      mb_ctrl->ip_instance_id[interface],
+				      CMD_TRIG_CONTROLLER_OP,
+				      BIST_MEM_INIT_STATUS, &usr_resp);
+		mem_init_status = IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status);
+
+		bist_success = FIELD_GET(BIT(0), mem_init_status);
+		bist_error = FIELD_GET(GENMASK(2, 1), mem_init_status);
+
+		if (!bist_success && (timeout-- < 0)) {
+			pr_err("%s: Timeout initialize memory on IO96B_%d (Error 0x%x)\n",
+			       __func__, instance, bist_error);
+			return -ETIMEDOUT;
+		}
+
+		__udelay(1);
+	}
+
+	return 0;
+}
+
 int io96b_bist_mem_init_start(struct io96b_info *io96b_ctrl)
 {
 	struct io96b_mb_resp usr_resp;
 	int i, j;
-	bool bist_start, bist_success;
-	int timeout = 1000000;
+	bool bist_start;
 	u32 mem_init_status_intf;
+	int ret = 0;
 
 	/* Full memory initialization BIST performed on all memory interface(s) */
 	for (i = 0; i < io96b_ctrl->num_instance; i++) {
 		for (j = 0; j < io96b_ctrl->io96b[i].mb_ctrl.num_mem_interface; j++) {
 			bist_start = false;
-			bist_success = false;
 
 			/* Start memory initialization BIST on full memory address */
 			io96b_mb_req(io96b_ctrl->io96b[i].io96b_csr_addr,
@@ -523,29 +557,9 @@ int io96b_bist_mem_init_start(struct io96b_info *io96b_ctrl)
 				return -ENOEXEC;
 			}
 
-			/* Polling for the initiated memory initialization BIST status */
-			while (!bist_success) {
-				io96b_mb_req_no_param(io96b_ctrl->io96b[i].io96b_csr_addr,
-						      io96b_ctrl->io96b[i].mb_ctrl.ip_type[j],
-						      io96b_ctrl->io96b[i].mb_ctrl.ip_instance_id[j],
-						      CMD_TRIG_CONTROLLER_OP,
-						      BIST_MEM_INIT_STATUS, &usr_resp);
-				mem_init_status_intf = IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status)
-
-				bist_success = mem_init_status_intf & BIT(0);
-
-				if (!bist_success && (timeout-- < 0)) {
-					pr_err("%s: Timeout initialize memory on IO96B_%d\n",
-					       __func__, i);
-					pr_err("%s: BIST_MEM_INIT_STATUS Error code 0x%x\n",
-					       __func__, (IOSSM_CMD_RESPONSE_DATA_SHORT
-							  (usr_resp.cmd_resp_status) &
-							  GENMASK(2, 1)) > 0x1);
-					return -ETIMEDOUT;
-				}
-
-				__udelay(1);
-			}
+			ret = io96b_poll_bist_mem_init_status(io96b_ctrl, i, j);
+			if (ret)
+				return ret;
 		}
 
 		pr_debug("%s: Memory initialized successfully on IO96B_%d\n", __func__, i);

-- 
2.47.3




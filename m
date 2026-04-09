Delivery-date: Thu, 09 Apr 2026 15:55:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wApr5-00AJQw-1s
	for lore@lore.pengutronix.de;
	Thu, 09 Apr 2026 15:55:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wApr4-0006s8-Oh
	for lore@pengutronix.de; Thu, 09 Apr 2026 15:55:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3/8aZNtfp6IQBUiB4oafoUelLUMmk3WukN9mvm+z/JY=; b=eCDwJ96UvTHD82+kijrBSfZ+pJ
	h2QxFsM1OkTL5eUWN/mvp5J5IUlxFeGUZvpUWozusag9076AGXot1RzGRlcymM4zeXKXLAZcQjvID
	y4ZVkBegPxUgQHvPQtL+8ovuyvENgaakQwUi9cGmkhWb19FY9VkCg6Q6MPkuIyWlvg6pYmhb/42Qr
	SGrmx4oFqH8AJmfXOtIKruwWqYPStiM/oVz0rJ85mf+4OlctZSs3NFIi+sm8IqWv0zTj9d2BRtYzN
	nhkVHlFS+4TmTsKdoHV+Eq0p8kQQlwzcSqbAJbf6/8oniaNCU8Qn5J2NCBl5A3JNtq3GBs+2SSMU5
	2had3aAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAppX-0000000Ab47-0Z5w;
	Thu, 09 Apr 2026 13:53:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wApoX-0000000AaX6-3Zn9
	for barebox@lists.infradead.org;
	Thu, 09 Apr 2026 13:53:23 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wApoL-0005uF-EF; Thu, 09 Apr 2026 15:52:45 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 09 Apr 2026 15:52:46 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260409-socfpga-iossm-v1-v2-6-09effab91bc1@pengutronix.de>
References: <20260409-socfpga-iossm-v1-v2-0-09effab91bc1@pengutronix.de>
In-Reply-To: <20260409-socfpga-iossm-v1-v2-0-09effab91bc1@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260409_065258_459892_16481860 
X-CRM114-Status: GOOD (  11.53  )
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
Subject: [PATCH v2 06/10] arm: socfpga: iossm: refactor return value
 handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Separate the read of the short return value from the iossm response and
the access of the actual response bits into two separate statements.

This makes the code more readable and helps transitioning to the iossm
v1 API, which uses register reads instead of response messages for these
values.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v2:

- none
---
 arch/arm/mach-socfpga/iossm_mailbox.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm/mach-socfpga/iossm_mailbox.c b/arch/arm/mach-socfpga/iossm_mailbox.c
index 53c8687f4db8..2c598a6c192a 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.c
+++ b/arch/arm/mach-socfpga/iossm_mailbox.c
@@ -370,6 +370,7 @@ int io96b_get_mem_technology(struct io96b_info *io96b_ctrl)
 	struct io96b_mb_resp usr_resp;
 	struct io96b_mb_ctrl *mb_ctrl;
 	int i, j;
+	u32 mem_technology_intf;
 	u8 ddr_type_ret;
 
 	/* Initialize ddr type */
@@ -384,9 +385,9 @@ int io96b_get_mem_technology(struct io96b_info *io96b_ctrl)
 					      mb_ctrl->ip_instance_id[j],
 					      CMD_GET_MEM_INFO, GET_MEM_TECHNOLOGY, &usr_resp);
 
-			ddr_type_ret =
-				IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status)
-				& GENMASK(2, 0);
+			mem_technology_intf = IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status);
+
+			ddr_type_ret = mem_technology_intf & GENMASK(2, 0);
 
 			if (!strcmp(io96b_ctrl->ddr_type, "UNKNOWN"))
 				io96b_ctrl->ddr_type = ddr_type_list[ddr_type_ret];
@@ -452,6 +453,7 @@ int io96b_ecc_enable_status(struct io96b_info *io96b_ctrl)
 	struct io96b_mb_resp usr_resp;
 	struct io96b_mb_ctrl *mb_ctrl;
 	int i, j;
+	u32 ecc_enable_intf;
 	bool ecc_stat_set = false;
 	bool ecc_stat;
 
@@ -467,9 +469,9 @@ int io96b_ecc_enable_status(struct io96b_info *io96b_ctrl)
 					      mb_ctrl->ip_instance_id[j],
 					      CMD_TRIG_CONTROLLER_OP, ECC_ENABLE_STATUS,
 					      &usr_resp);
+			ecc_enable_intf = IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status)
 
-			ecc_stat = ((IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status)
-				     & GENMASK(1, 0)) == 0 ? false : true);
+			ecc_stat = (ecc_enable_intf & GENMASK(1, 0)) == 0 ? false : true;
 
 			if (!ecc_stat_set) {
 				io96b_ctrl->ecc_status = ecc_stat;
@@ -495,6 +497,7 @@ int io96b_bist_mem_init_start(struct io96b_info *io96b_ctrl)
 	int i, j;
 	bool bist_start, bist_success;
 	int timeout = 1000000;
+	u32 mem_init_status_intf;
 
 	/* Full memory initialization BIST performed on all memory interface(s) */
 	for (i = 0; i < io96b_ctrl->num_instance; i++) {
@@ -508,18 +511,15 @@ int io96b_bist_mem_init_start(struct io96b_info *io96b_ctrl)
 				     io96b_ctrl->io96b[i].mb_ctrl.ip_instance_id[j],
 				     CMD_TRIG_CONTROLLER_OP, BIST_MEM_INIT_START,
 				     0x40, 0, 0, 0, 0, 0, 0, &usr_resp);
+			mem_init_status_intf = IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status);
 
-			bist_start =
-				(IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status)
-				 & BIT(0));
+			bist_start = mem_init_status_intf & BIT(0);
 
 			if (!bist_start) {
 				pr_err("%s: Failed to initialized memory on IO96B_%d\n",
 				       __func__, i);
 				pr_err("%s: BIST_MEM_INIT_START Error code 0x%x\n",
-				       __func__,
-				       (IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status)
-					& GENMASK(2, 1)) > 0x1);
+				       __func__, (mem_init_status_intf & GENMASK(2, 1)) > 0x1);
 				return -ENOEXEC;
 			}
 
@@ -530,9 +530,9 @@ int io96b_bist_mem_init_start(struct io96b_info *io96b_ctrl)
 						      io96b_ctrl->io96b[i].mb_ctrl.ip_instance_id[j],
 						      CMD_TRIG_CONTROLLER_OP,
 						      BIST_MEM_INIT_STATUS, &usr_resp);
+				mem_init_status_intf = IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status)
 
-				bist_success = (IOSSM_CMD_RESPONSE_DATA_SHORT
-						(usr_resp.cmd_resp_status) & BIT(0));
+				bist_success = mem_init_status_intf & BIT(0);
 
 				if (!bist_success && (timeout-- < 0)) {
 					pr_err("%s: Timeout initialize memory on IO96B_%d\n",

-- 
2.47.3




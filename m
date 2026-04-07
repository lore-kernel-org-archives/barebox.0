Delivery-date: Tue, 07 Apr 2026 19:10:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wA9x1-009dZR-28
	for lore@lore.pengutronix.de;
	Tue, 07 Apr 2026 19:10:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wA9x0-0000s1-9y
	for lore@pengutronix.de; Tue, 07 Apr 2026 19:10:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OzSjcnq4imw4jtRwexwhysk0E0gm1GfedQRFxsBtkkA=; b=bHOhvDsE+I9JOfZZs538DNI+6T
	+JZsnFmH+w3Wc06H9720kFEaJD5CN4P5tv9pNiEKt8uqGLVanDi21uyQKCdok09HjawBMHTOAFZEJ
	GgiV3drJh9TBqzLrRJqm3iNCaytA/5qur0GvrC/tbPmYGiQiD1d07JA0a3y0fPtp4CULLgPMcx52h
	GZTfkanxiuOtEyysfapUcNQjOGsEAtdleD/SurcFUh3ysrEf0xVLuBa2V41MW6pGG6JBtl92Xbm8s
	oU726Hhe/us6Y7bp/0+h+wiM3Uj1CvV+epN5ZrWVmiJDAo0i6hqpzW1BAu+li5l/v0S3PufoHZCF7
	CIPVzcHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA9wL-00000006pjO-00DH;
	Tue, 07 Apr 2026 17:10:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA9wD-00000006pe9-3FjT
	for barebox@lists.infradead.org;
	Tue, 07 Apr 2026 17:10:09 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wA9wA-0000PH-2P; Tue, 07 Apr 2026 19:10:02 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 07 Apr 2026 19:09:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260407-socfpga-iossm-v1-v1-1-6440a5337eff@pengutronix.de>
References: <20260407-socfpga-iossm-v1-v1-0-6440a5337eff@pengutronix.de>
In-Reply-To: <20260407-socfpga-iossm-v1-v1-0-6440a5337eff@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260407_101005_934645_DE0962F3 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 01/10] arm: socfpga: iossm: remove uninitialized variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The variable i is not initialized. As the index when writing values to
cmd_resp_data is hard-coded, we may use a hard coded index in the print
statements, too.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/iossm_mailbox.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-socfpga/iossm_mailbox.c b/arch/arm/mach-socfpga/iossm_mailbox.c
index 0e8c9e36017d..d89117da4fd4 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.c
+++ b/arch/arm/mach-socfpga/iossm_mailbox.c
@@ -82,7 +82,6 @@ int io96b_mb_req(phys_addr_t io96b_csr_addr, u32 ip_type, u32 instance_id,
 		 u32 cmd_param_4, u32 cmd_param_5, u32 cmd_param_6,
 		 struct io96b_mb_resp *resp)
 {
-	int i;
 	int ret;
 	u32 cmd_req, cmd_resp;
 
@@ -138,15 +137,15 @@ int io96b_mb_req(phys_addr_t io96b_csr_addr, u32 ip_type, u32 instance_id,
 	resp->cmd_resp_data[0] = readl(io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_0_OFFSET);
 	pr_debug("%s: IOSSM_CMD_RESPONSE_DATA_0_OFFSET 0x%llx: 0x%x\n",
 		 __func__, io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_0_OFFSET,
-		 resp->cmd_resp_data[i]);
+		 resp->cmd_resp_data[0]);
 	resp->cmd_resp_data[1] = readl(io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_1_OFFSET);
 	pr_debug("%s: IOSSM_CMD_RESPONSE_DATA_1_OFFSET 0x%llx: 0x%x\n",
 		 __func__, io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_1_OFFSET,
-		 resp->cmd_resp_data[i]);
+		 resp->cmd_resp_data[1]);
 	resp->cmd_resp_data[2] = readl(io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_2_OFFSET);
 	pr_debug("%s: IOSSM_CMD_RESPONSE_DATA_2_OFFSET 0x%llx: 0x%x\n",
 		 __func__, io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_2_OFFSET,
-		 resp->cmd_resp_data[i]);
+		 resp->cmd_resp_data[2]);
 
 	resp->cmd_resp_status = readl(io96b_csr_addr + IOSSM_CMD_RESPONSE_STATUS_OFFSET);
 	pr_debug("%s: CMD_RESPONSE_STATUS 0x%llx: 0x%x\n", __func__,

-- 
2.47.3




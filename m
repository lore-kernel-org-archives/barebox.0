Delivery-date: Thu, 16 Apr 2026 17:26:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDOc1-00Crir-1l
	for lore@lore.pengutronix.de;
	Thu, 16 Apr 2026 17:26:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDOc0-0008IX-Uy
	for lore@pengutronix.de; Thu, 16 Apr 2026 17:26:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CQJdE4iIE8CAfonVpZnOk/EOxBNA92LMllFGcl34yGs=; b=wzGUNhgW2/2kCH1dxSaCJ4t4KK
	zavCX2t8RWb3c+OkU3evQrDgxDO5t4P+ErGGVprGT4oc1urtHnSh0ldxI4nfsdyoy08cIuh0VuCld
	zUJbwU3R+teGl3ofaR+ImML52NXsIHvTu0iqXuul3SxgjRN+IsFlGbXdwez68bNJL3s4wxPkDwOF9
	6W+BlgTQ2nA9l1XNm5TmkOEBXwM5tY5VjVKgsa3lGefE8D0JukD5b4nTwCJ4lir17lIepyhpa+hN9
	O0ktFQUvQotvwyRbbBtzuXxhRG99JQZPVt++Qf+WWcI6vcyXrqf8nC0zCuRH7BNM59Y91tox+Ar8P
	hD6CxrbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDObO-00000002cCn-3rjr;
	Thu, 16 Apr 2026 15:25:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDObL-00000002cAK-1tvS
	for barebox@lists.infradead.org;
	Thu, 16 Apr 2026 15:25:57 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wDObI-0007uE-Uy; Thu, 16 Apr 2026 17:25:52 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 16 Apr 2026 17:25:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260416-socfpga-agilex5-iossm-cleanup-v1-3-ca9aae003c84@pengutronix.de>
References: <20260416-socfpga-agilex5-iossm-cleanup-v1-0-ca9aae003c84@pengutronix.de>
In-Reply-To: <20260416-socfpga-agilex5-iossm-cleanup-v1-0-ca9aae003c84@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_082555_494345_18DCDD7A 
X-CRM114-Status: UNSURE (   9.74  )
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
Subject: [PATCH 3/6] arm: socfpga: iossm: remove duplicate read of response
 status
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The IOSSM_CMD_RESPONSE_STATUS doesn't change after the mailbox command
has returned. Reading the register again isn't necessary.

While clearing the IOSSM_STATUS_COMMAND_RESPONSE_READY bit changes the
response status, this bit may be set in the returned response.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/iossm_mailbox.c | 28 ++++++++--------------------
 1 file changed, 8 insertions(+), 20 deletions(-)

diff --git a/arch/arm/mach-socfpga/iossm_mailbox.c b/arch/arm/mach-socfpga/iossm_mailbox.c
index 7ec79dec4534..24d1404be1a1 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.c
+++ b/arch/arm/mach-socfpga/iossm_mailbox.c
@@ -83,7 +83,7 @@ int io96b_mb_req(phys_addr_t io96b_csr_addr, u32 ip_type, u32 instance_id,
 		 struct io96b_mb_resp *resp)
 {
 	int ret;
-	u32 cmd_req, cmd_resp;
+	u32 cmd_req;
 
 	/* Initialized zeros for responses*/
 	memset(resp, 0x0, sizeof(*resp));
@@ -125,17 +125,14 @@ int io96b_mb_req(phys_addr_t io96b_csr_addr, u32 ip_type, u32 instance_id,
 				 resp->cmd_resp_status,
 				 resp->cmd_resp_status & IOSSM_STATUS_COMMAND_RESPONSE_READY,
 				 10 * USEC_PER_SEC);
-	if (ret) {
-		pr_err("%s: CMD_RESPONSE ERROR:\n", __func__);
-		cmd_resp = readl(io96b_csr_addr + IOSSM_CMD_RESPONSE_STATUS_OFFSET);
-		pr_err("%s: STATUS_GENERAL_ERROR: 0x%x\n", __func__, (cmd_resp >> 1) & 0xF);
-		pr_err("%s: STATUS_CMD_RESPONSE_ERROR: 0x%x\n", __func__, (cmd_resp >> 5) & 0x7);
-	}
+	if (ret)
+		pr_warn("%s: CMD_RESPONSE_STATUS ERROR: 0x%lx 0x%lx\n", __func__,
+			FIELD_GET(GENMASK(4, 1), resp->cmd_resp_status),
+			FIELD_GET(GENMASK(7, 5), resp->cmd_resp_status));
 
-	/* read CMD_RESPONSE_STATUS*/
-	resp->cmd_resp_status = readl(io96b_csr_addr + IOSSM_CMD_RESPONSE_STATUS_OFFSET);
-	pr_debug("%s: CMD_RESPONSE_STATUS 0x%llx: 0x%x\n", __func__, io96b_csr_addr +
-		IOSSM_CMD_RESPONSE_STATUS_OFFSET, resp->cmd_resp_status);
+	pr_debug("%s: CMD_RESPONSE_STATUS 0x%p: 0x%x\n", __func__,
+		 io96b_csr_addr + IOSSM_CMD_RESPONSE_STATUS_OFFSET,
+		 resp->cmd_resp_status);
 
 	/* read CMD_RESPONSE_DATA_* */
 	resp->cmd_resp_data[0] = readl(io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_0_OFFSET);
@@ -151,19 +148,10 @@ int io96b_mb_req(phys_addr_t io96b_csr_addr, u32 ip_type, u32 instance_id,
 		 __func__, io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_2_OFFSET,
 		 resp->cmd_resp_data[2]);
 
-	resp->cmd_resp_status = readl(io96b_csr_addr + IOSSM_CMD_RESPONSE_STATUS_OFFSET);
-	pr_debug("%s: CMD_RESPONSE_STATUS 0x%llx: 0x%x\n", __func__,
-		 io96b_csr_addr + IOSSM_CMD_RESPONSE_STATUS_OFFSET,
-		 resp->cmd_resp_status);
-
 	/* write CMD_RESPONSE_READY = 0 */
 	clrbits_le32((u32 *)(uintptr_t)(io96b_csr_addr + IOSSM_CMD_RESPONSE_STATUS_OFFSET),
 		     IOSSM_STATUS_COMMAND_RESPONSE_READY);
 
-	resp->cmd_resp_status = readl(io96b_csr_addr + IOSSM_CMD_RESPONSE_STATUS_OFFSET);
-	pr_debug("%s: CMD_RESPONSE_READY 0x%llx: 0x%x\n", __func__, io96b_csr_addr +
-		 IOSSM_CMD_RESPONSE_STATUS_OFFSET, resp->cmd_resp_status);
-
 	return 0;
 }
 

-- 
2.47.3




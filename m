Delivery-date: Thu, 09 Apr 2026 15:54:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wApqT-00AJOd-2J
	for lore@lore.pengutronix.de;
	Thu, 09 Apr 2026 15:54:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wApqS-0006g7-7Y
	for lore@pengutronix.de; Thu, 09 Apr 2026 15:54:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qQC6A+bWR5FDY2+2Gi/tidPvYH8XKOkvsCk5svTOKMc=; b=OF1K5Sxijj/jjkDoU+9FWCBG8J
	cAMoynDLCZ1/MsC9jQ+xuOJtAW/N96PVaqXmcyR/yKubYVsdDeyUQVGpBx2SX0BGD+P+FAmYgL5ZK
	obnFO+yHfa7pOXuvAyGDB4R43+bhIG/uFuf6UdzFjfn2Y2UDni0K5PCVg2kMLw4OICkIz+GyI/SiY
	tzK3jyjkNb08ZaeftIRuLhyaRGZU3huSp7B54kvF+F1KIcrXKK0cSmh4k7iFxBpf2+d7yOQEl2ZWl
	CwvUrB47ektbTWu/ZFWJvtXEQRqrlf4gs19XsX+tcF1NnfCThqCB3+2BhwJtJwulHVNS5mxYtA/TR
	NN64Y/bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wApp4-0000000AarE-1Asd;
	Thu, 09 Apr 2026 13:53:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wApoX-0000000AaX3-3CMS
	for barebox@lists.infradead.org;
	Thu, 09 Apr 2026 13:53:12 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wApoL-0005uF-D9; Thu, 09 Apr 2026 15:52:45 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 09 Apr 2026 15:52:45 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260409-socfpga-iossm-v1-v2-5-09effab91bc1@pengutronix.de>
References: <20260409-socfpga-iossm-v1-v2-0-09effab91bc1@pengutronix.de>
In-Reply-To: <20260409-socfpga-iossm-v1-v2-0-09effab91bc1@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260409_065257_845103_DB59E1BA 
X-CRM114-Status: GOOD (  12.04  )
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
Subject: [PATCH v2 05/10] arm: socfpga: iossm: refactor io96b_mb_init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Keep the returned number of interfaces in a local variable and store it
only after checking the type of the memory.

This brings the behavior closer to the behavior of the iossm v1 API and
simplifies the addition of the iossm v1 implementation.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v2:

- none
---
 arch/arm/mach-socfpga/iossm_mailbox.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-socfpga/iossm_mailbox.c b/arch/arm/mach-socfpga/iossm_mailbox.c
index 042ea4a99e5c..53c8687f4db8 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.c
+++ b/arch/arm/mach-socfpga/iossm_mailbox.c
@@ -204,26 +204,27 @@ void io96b_mb_init(struct io96b_info *io96b_ctrl)
 
 	pr_debug("%s: num_instance %d\n", __func__, io96b_ctrl->num_instance);
 	for (i = 0; i < io96b_ctrl->num_instance; i++) {
+		int num_mem_interface = 0;
+		u32 mem_intf_info[2];
+
 		mb_ctrl = &io96b_ctrl->io96b[i].mb_ctrl;
 		pr_debug("%s: get memory interface IO96B %d\n", __func__, i);
 		/* Get memory interface IP type and instance ID (IP identifier) */
 		io96b_mb_req_no_param(io96b_ctrl->io96b[i].io96b_csr_addr, 0, 0,
 				      CMD_GET_SYS_INFO, GET_MEM_INTF_INFO, &usr_resp);
-		pr_debug("%s: get response from memory interface IO96B %d\n", __func__, i);
-		/* Retrieve number of memory interface(s) */
-		mb_ctrl->num_mem_interface =
+		num_mem_interface =
 			IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status) & 0x3;
-		pr_debug("%s: IO96B %d: num_mem_interface: %d\n", __func__,
-			 i, mb_ctrl->num_mem_interface);
+		for (j = 0; j < num_mem_interface; j++)
+			mem_intf_info[j] = usr_resp.cmd_resp_data[j];
 
 		/* Retrieve memory interface IP type and instance ID (IP identifier) */
 		j = 0;
-		for (k = 0; k < mb_ctrl->num_mem_interface; k++) {
-			ip_type_ret = FIELD_GET(INTF_IP_TYPE_MASK, usr_resp.cmd_resp_data[k]);
-			instance_id_ret = FIELD_GET(INTF_INSTANCE_ID_MASK,
-						    usr_resp.cmd_resp_data[k]);
+		for (k = 0; k < num_mem_interface; k++) {
+			ip_type_ret = FIELD_GET(INTF_IP_TYPE_MASK, mem_intf_info[k]);
+			instance_id_ret = FIELD_GET(INTF_INSTANCE_ID_MASK, mem_intf_info[k]);
 
 			if (ip_type_ret) {
+				mb_ctrl->num_mem_interface++;
 				mb_ctrl->ip_type[j] = ip_type_ret;
 				mb_ctrl->ip_instance_id[j] = instance_id_ret;
 				pr_debug("%s: IO96B %d mem_interface %d: ip_type_ret: 0x%x\n",

-- 
2.47.3




Delivery-date: Thu, 16 Apr 2026 17:26:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDOc8-00CrkM-1L
	for lore@lore.pengutronix.de;
	Thu, 16 Apr 2026 17:26:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDOc7-0008MM-OJ
	for lore@pengutronix.de; Thu, 16 Apr 2026 17:26:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WPMON1yHU/aZM0Ebzp/2/j7rUFPZFCzuTQzzHAWsyH8=; b=PMhcR0q0H5M5dxNGOOPFUkahLi
	GrjlKvvID0w5LdJiCBI2sKBKYP5PtCF+PQJiN6PMjQrOZZnoHW0c0ArqLfKmu+pmFiurN0XjJMHY0
	mM7fWhwCCPcuyXG93SZyPsx64dOiS79CA0/vA0jzMKQCXr1dRAmd0ZAiXOXp/+jwT0toJH8EUUjdr
	ZepSuqLF9iUB4jDM+qoHIq3B4ivirPKZ2wUVKuCi/OlSwggV7wvS8DRjxGbHt1rYkyJzc1pT+3GeA
	ltFCT4tIrgUS5t3H0DrMaoVigjGUdoCOAy2TBG4emKtmHpWgMC8NT7UztaRYzvKjBxHijY63kz2Ha
	Ce0Spzcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDObR-00000002cEC-3oL4;
	Thu, 16 Apr 2026 15:26:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDObN-00000002cBb-2NAc
	for barebox@lists.infradead.org;
	Thu, 16 Apr 2026 15:25:59 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wDObJ-0007uE-2j; Thu, 16 Apr 2026 17:25:53 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 16 Apr 2026 17:25:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260416-socfpga-agilex5-iossm-cleanup-v1-6-ca9aae003c84@pengutronix.de>
References: <20260416-socfpga-agilex5-iossm-cleanup-v1-0-ca9aae003c84@pengutronix.de>
In-Reply-To: <20260416-socfpga-agilex5-iossm-cleanup-v1-0-ca9aae003c84@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_082557_619193_5D5A41BB 
X-CRM114-Status: GOOD (  13.05  )
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
Subject: [PATCH 6/6] arm: socfpga: iossm: extract io96b_mb_init_instance
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Extract io96b_mb_init_instance() from io96b_mb_init() to initialize
exactly one io96b instance.

No functional change.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/iossm_mailbox.c | 93 ++++++++++++++++++-----------------
 1 file changed, 49 insertions(+), 44 deletions(-)

diff --git a/arch/arm/mach-socfpga/iossm_mailbox.c b/arch/arm/mach-socfpga/iossm_mailbox.c
index 3a48026d5dd6..06d451c597f0 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.c
+++ b/arch/arm/mach-socfpga/iossm_mailbox.c
@@ -166,16 +166,59 @@ static int io96b_mb_version(struct io96b_info *io96b_ctrl)
 	return version;
 }
 
+static void io96b_mb_init_instance(struct io96b_info *io96b_ctrl, int instance)
+{
+	void __iomem *io96b_csr_addr = io96b_ctrl->io96b[instance].io96b_csr_addr;
+	struct io96b_mb_ctrl *mb_ctrl = &io96b_ctrl->io96b[instance].mb_ctrl;
+	struct io96b_mb_resp usr_resp;
+	u32 mem_intf_info[2];
+	int num_mem_interface = ARRAY_SIZE(mem_intf_info);
+	int i;
+
+	pr_debug("%s: Initialize IO96B_%d\n", __func__, instance);
+
+	/* Get memory interface IP type and instance ID (IP identifier) */
+	if (io96b_ctrl->version == 1) {
+		mem_intf_info[0] = readl(io96b_csr_addr + IOSSM_MEM_INTF_INFO_0_OFFSET);
+		mem_intf_info[1] = readl(io96b_csr_addr + IOSSM_MEM_INTF_INFO_1_OFFSET);
+	} else {
+		io96b_mb_req_no_param(io96b_csr_addr, 0, 0,
+				      CMD_GET_SYS_INFO, GET_MEM_INTF_INFO,
+				      &usr_resp);
+		num_mem_interface =
+			IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status) & 0x3;
+		for (i = 0; i < num_mem_interface; i++)
+			mem_intf_info[i] = usr_resp.cmd_resp_data[i];
+	}
+
+	/* Retrieve memory interface IP type and instance ID (IP identifier) */
+	for (i = 0; i < num_mem_interface; i++) {
+		int interface = mb_ctrl->num_mem_interface;
+		u8 ip_type;
+		u8 instance_id;
+
+		ip_type = FIELD_GET(INTF_IP_TYPE_MASK, mem_intf_info[i]);
+		instance_id = FIELD_GET(INTF_INSTANCE_ID_MASK, mem_intf_info[i]);
+
+		if (!ip_type)
+			continue;
+
+		mb_ctrl->num_mem_interface++;
+		mb_ctrl->ip_type[interface] = ip_type;
+		mb_ctrl->ip_instance_id[interface] = instance_id;
+
+		pr_debug("%s: IO96B_%d interface %d: ip_type=0x%x instance_id=0x%x\n",
+			 __func__, instance, interface, ip_type, instance_id);
+	}
+}
+
 /*
  * Initial function to be called to set memory interface IP type and instance ID
  * IP type and instance ID need to be determined before sending mailbox command
  */
 void io96b_mb_init(struct io96b_info *io96b_ctrl)
 {
-	struct io96b_mb_resp usr_resp;
-	struct io96b_mb_ctrl *mb_ctrl;
-	u8 ip_type_ret, instance_id_ret;
-	int i, j, k;
+	int i;
 	int version;
 
 	version = io96b_mb_version(io96b_ctrl);
@@ -191,46 +234,8 @@ void io96b_mb_init(struct io96b_info *io96b_ctrl)
 	io96b_ctrl->version = version;
 
 	pr_debug("%s: num_instance %d\n", __func__, io96b_ctrl->num_instance);
-	for (i = 0; i < io96b_ctrl->num_instance; i++) {
-		int num_mem_interface = 0;
-		u32 mem_intf_info[2];
-
-		mb_ctrl = &io96b_ctrl->io96b[i].mb_ctrl;
-		pr_debug("%s: get memory interface IO96B %d\n", __func__, i);
-		/* Get memory interface IP type and instance ID (IP identifier) */
-		if (io96b_ctrl->version == 1) {
-			mem_intf_info[0] = readl(io96b_ctrl->io96b[i].io96b_csr_addr +
-						 IOSSM_MEM_INTF_INFO_0_OFFSET);
-			mem_intf_info[1] = readl(io96b_ctrl->io96b[i].io96b_csr_addr +
-						 IOSSM_MEM_INTF_INFO_1_OFFSET);
-			num_mem_interface = 2;
-		} else {
-			io96b_mb_req_no_param(io96b_ctrl->io96b[i].io96b_csr_addr, 0, 0,
-					      CMD_GET_SYS_INFO, GET_MEM_INTF_INFO, &usr_resp);
-			num_mem_interface =
-				IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status) & 0x3;
-			for (j = 0; j < num_mem_interface; j++)
-				mem_intf_info[j] = usr_resp.cmd_resp_data[j];
-		}
-
-		/* Retrieve memory interface IP type and instance ID (IP identifier) */
-		j = 0;
-		for (k = 0; k < num_mem_interface; k++) {
-			ip_type_ret = FIELD_GET(INTF_IP_TYPE_MASK, mem_intf_info[k]);
-			instance_id_ret = FIELD_GET(INTF_INSTANCE_ID_MASK, mem_intf_info[k]);
-
-			if (ip_type_ret) {
-				mb_ctrl->num_mem_interface++;
-				mb_ctrl->ip_type[j] = ip_type_ret;
-				mb_ctrl->ip_instance_id[j] = instance_id_ret;
-				pr_debug("%s: IO96B %d mem_interface %d: ip_type_ret: 0x%x\n",
-					 __func__, i, j, ip_type_ret);
-				pr_debug("%s: IO96B %d mem_interface %d: instance_id_ret: 0x%x\n",
-					 __func__, i, j, instance_id_ret);
-				j++;
-			}
-		}
-	}
+	for (i = 0; i < io96b_ctrl->num_instance; i++)
+		io96b_mb_init_instance(io96b_ctrl, i);
 }
 
 static int io96b_cal_status(void __iomem *io96b_csr_addr)

-- 
2.47.3




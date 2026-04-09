Delivery-date: Thu, 09 Apr 2026 15:55:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wAprC-00AJS4-0f
	for lore@lore.pengutronix.de;
	Thu, 09 Apr 2026 15:55:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wAprB-0006yD-A6
	for lore@pengutronix.de; Thu, 09 Apr 2026 15:55:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fQr8CO4X9Pof0hYt8nbKn8Mcclc4WpPEf3LxltDX4D4=; b=PnG15qW2nRUqxWyxm1+AGEztRv
	/AGeFDlH8UBJfWP+MUqS2y/dzlN3Kbw6cQKFZFCixoyj9pfVaGk6Ix6PBzwvzygoQksAh74iAdLKQ
	0oOzMjuvCilXlFUBNgusyoCEw9/M90WlKC1f782dd8tlRVoTvFMBQ6onLJB0YJCmWCo+y597h9Ywo
	vRHYQJcAYvZY6LnU5cgsEgmFARedwGWNLyT9OLCYfyygiDnsTEkvwjMCOM0XHdASF3etUzMK0IqI0
	fzRuX3bZobFqa5Cxq8sAbOl9LSL2nveofl/Y5ZH0TuTq00AQJHEn8008BJb/PBX3v7KT31B105yj9
	jbm1ko5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAppx-0000000AbSc-3MZu;
	Thu, 09 Apr 2026 13:54:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wApoX-0000000AaX9-43Mc
	for barebox@lists.infradead.org;
	Thu, 09 Apr 2026 13:53:28 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wApoL-0005uF-I1; Thu, 09 Apr 2026 15:52:45 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 09 Apr 2026 15:52:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260409-socfpga-iossm-v1-v2-9-09effab91bc1@pengutronix.de>
References: <20260409-socfpga-iossm-v1-v2-0-09effab91bc1@pengutronix.de>
In-Reply-To: <20260409-socfpga-iossm-v1-v2-0-09effab91bc1@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260409_065258_514497_9C5C3428 
X-CRM114-Status: GOOD (  14.94  )
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
Subject: [PATCH v2 09/10] arm: socfpga: iossm: add memory initialization
 with inline ecc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The memory interfaces may support for inline ECC and report their
configuration via the ECC status. The software is responsible for
initializing the memory accordingly.

Check the memory interface configuration and initialize the memory if
necessary.

Inline ECC uses 1/8 of the available memory for error correction. Thus,
only 7/8 of the reported memory size is actually available.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v2:

- none
---
 arch/arm/mach-socfpga/agilex5-sdram.c |  2 ++
 arch/arm/mach-socfpga/iossm_mailbox.c | 31 +++++++++++++++++++++++++++----
 arch/arm/mach-socfpga/iossm_mailbox.h |  1 +
 3 files changed, 30 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-socfpga/agilex5-sdram.c b/arch/arm/mach-socfpga/agilex5-sdram.c
index 5fb59d413e8f..4e7994985d26 100644
--- a/arch/arm/mach-socfpga/agilex5-sdram.c
+++ b/arch/arm/mach-socfpga/agilex5-sdram.c
@@ -323,6 +323,8 @@ int agilex5_ddr_init_full(void)
 	}
 
 	hw_size = io96b_ctrl.overall_size;
+	if (io96b_ctrl.inline_ecc)
+		hw_size -= hw_size / 8;
 	pr_debug("%s: %lld MiB\n", io96b_ctrl.ddr_type, hw_size / SZ_1M);
 
 	sdram_set_firewall(hw_size);
diff --git a/arch/arm/mach-socfpga/iossm_mailbox.c b/arch/arm/mach-socfpga/iossm_mailbox.c
index 6be1119724d6..4c6a84feccc5 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.c
+++ b/arch/arm/mach-socfpga/iossm_mailbox.c
@@ -456,6 +456,7 @@ int io96b_ecc_enable_status(struct io96b_info *io96b_ctrl)
 	u32 ecc_enable_intf;
 	bool ecc_stat_set = false;
 	bool ecc_stat;
+	bool inline_ecc = false;
 
 	/* Initialize ECC status */
 	io96b_ctrl->ecc_status = false;
@@ -472,13 +473,19 @@ int io96b_ecc_enable_status(struct io96b_info *io96b_ctrl)
 			ecc_enable_intf = IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status)
 
 			ecc_stat = (ecc_enable_intf & GENMASK(1, 0)) == 0 ? false : true;
+			inline_ecc = FIELD_GET(BIT(8), ecc_enable_intf);
 
 			if (!ecc_stat_set) {
 				io96b_ctrl->ecc_status = ecc_stat;
+
+				if (io96b_ctrl->ecc_status)
+					io96b_ctrl->inline_ecc = inline_ecc;
+
 				ecc_stat_set = true;
 			}
 
-			if (ecc_stat != io96b_ctrl->ecc_status) {
+			if (ecc_stat != io96b_ctrl->ecc_status ||
+			    (io96b_ctrl->ecc_status && inline_ecc != io96b_ctrl->inline_ecc)) {
 				pr_err("%s: Mismatch DDR ECC status on IO96B_%d\n",
 				       __func__, i);
 				return -ENOEXEC;
@@ -539,9 +546,25 @@ static int bist_mem_init_by_addr(struct io96b_info *io96b_ctrl,
 	int ret = 0;
 	u32 mem_exp;
 
-	pr_debug("%s: Start memory initialization BIST on full memory address",
-		 __func__);
-	mem_exp = 0x40;
+	if (io96b_ctrl->inline_ecc) {
+		phys_size_t chunk_size;
+
+		/* Check if size is a power of 2 */
+		if (size == 0 || (size & (size - 1)) != 0)
+			return -EINVAL;
+
+		mem_exp = 0;
+		chunk_size = size;
+		while (chunk_size >>= 1)
+			mem_exp++;
+
+		pr_debug("%s: Initializing memory: Addr=0x%llx, Size=2^%u\n",
+			 __func__, base_addr, mem_exp);
+	} else {
+		pr_debug("%s: Start memory initialization BIST on full memory address",
+			 __func__);
+		mem_exp = 0x40;
+	}
 
 	ret = io96b_mb_req(io96b_csr_addr,
 			   mb_ctrl->ip_type[interface],
diff --git a/arch/arm/mach-socfpga/iossm_mailbox.h b/arch/arm/mach-socfpga/iossm_mailbox.h
index 0c15c92bb867..febe51591ca0 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.h
+++ b/arch/arm/mach-socfpga/iossm_mailbox.h
@@ -127,6 +127,7 @@ struct io96b_info {
 	bool			 overall_cal_status;
 	const char		*ddr_type;
 	bool			 ecc_status;
+	bool			 inline_ecc;
 	phys_size_t		 overall_size;
 	struct io96b_instance	 io96b[MAX_IO96B_SUPPORTED];
 	bool			 ckgen_lock;

-- 
2.47.3




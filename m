Delivery-date: Wed, 15 Apr 2026 12:57:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCxva-00CO2t-1b
	for lore@lore.pengutronix.de;
	Wed, 15 Apr 2026 12:57:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCxvZ-0005Kk-VK
	for lore@pengutronix.de; Wed, 15 Apr 2026 12:57:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TCXxiR4fCKl+dNImGcyVxgK833fv/C907zYYhLuzjxg=; b=bGRz2ia//NSBX4gC6F/JRkGenO
	mzHhGVT1Q9ecg05BYdtyeS5Vw8av4hSofGEBM0I46wxU1olyMXYJscea1BvcWz/kIKBC32LQ7/Fbx
	msA1ZRz3JzfZjuBukoIPIUvkODDGcS1Na36aRpB4Ad9C1CgdhBUT39a6Pc9jUEA4wrwlZEFzgbCJf
	pcfvxkTTsD4d2US8tl5nbsqpFHZvLmZGMe/l2ktCTwpJra7GtU5kfzI/eRy5keJgDNuLwJ1GUMUTc
	QdIoxm3jmGmov1Ftz8OkCo2mXrZ6BPWToN2ILG0yiR9QtBoFTJj2LA86tHSOxYnZeqS6/+6GQhhQu
	R+6zW3ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCxv6-00000000zwW-3Xat;
	Wed, 15 Apr 2026 10:56:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCxv4-00000000zw3-3ybV
	for barebox@lists.infradead.org;
	Wed, 15 Apr 2026 10:56:32 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wCxv3-0005C0-4r; Wed, 15 Apr 2026 12:56:29 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Steffen Trumtrar <s.trumtrar@pengutronix.de>,
	Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 15 Apr 2026 12:56:29 +0200
Message-ID: <20260415105629.3994364-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <ad9o5HBwJw0je5UL@pengutronix.de>
References: <ad9o5HBwJw0je5UL@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_035630_984161_455F031B 
X-CRM114-Status: UNSURE (   9.51  )
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
Subject: [PATCH] fixup! arm: socfgpa: iossm: extract initialization of one interface
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/iossm_mailbox.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-socfpga/iossm_mailbox.c b/arch/arm/mach-socfpga/iossm_mailbox.c
index 9fd50fe042de..9c34b3b2882c 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.c
+++ b/arch/arm/mach-socfpga/iossm_mailbox.c
@@ -603,10 +603,13 @@ static int bist_mem_init_by_addr(struct io96b_info *io96b_ctrl,
 	int bist_error = 0;
 	u32 mem_init_status;
 	int ret = 0;
-	u32 mem_exp;
+#define BIST_ADDR_SPACE		GENMASK(5, 0)
+#define BIST_FULL_MEM		BIT(6)
+	u32 cmd_param_0;
 
 	if (io96b_ctrl->inline_ecc) {
 		phys_size_t chunk_size;
+		u32 mem_exp;
 
 		/* Check if size is a power of 2 */
 		if (size == 0 || (size & (size - 1)) != 0)
@@ -619,17 +622,18 @@ static int bist_mem_init_by_addr(struct io96b_info *io96b_ctrl,
 
 		pr_debug("%s: Initializing memory: Addr=0x%llx, Size=2^%u\n",
 			 __func__, base_addr, mem_exp);
+		cmd_param_0 = FIELD_PREP(BIST_ADDR_SPACE, mem_exp);
 	} else {
 		pr_debug("%s: Start memory initialization BIST on full memory address",
 			 __func__);
-		mem_exp = 0x40;
+		cmd_param_0 = BIST_FULL_MEM;
 	}
 
 	ret = io96b_mb_req(io96b_csr_addr,
 			   mb_ctrl->ip_type[interface],
 			   mb_ctrl->ip_instance_id[interface],
 			   CMD_TRIG_CONTROLLER_OP, BIST_MEM_INIT_START,
-			   FIELD_PREP(GENMASK(5, 0), mem_exp),
+			   cmd_param_0,
 			   FIELD_GET(GENMASK(31, 0), base_addr),
 			   FIELD_GET(GENMASK(37, 32), base_addr),
 			   0, 0, 0, 0, &usr_resp);
-- 
2.47.3




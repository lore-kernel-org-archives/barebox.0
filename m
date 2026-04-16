Delivery-date: Thu, 16 Apr 2026 17:26:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDOc7-00Crjz-2D
	for lore@lore.pengutronix.de;
	Thu, 16 Apr 2026 17:26:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDOc7-0008La-5Y
	for lore@pengutronix.de; Thu, 16 Apr 2026 17:26:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WvTLH5jlnc+c5kxRZ6rxpvPIiJy61Skb0DacG7ELHQk=; b=x1R5uNAbckhkgIAtv4u0feBdta
	Q99exn1Uh/KaRoDUUwrcM63feziUiItkCICpvC45XU/mB+dTKS1yxOX6l+GHbIVGc+I5VveeYZk1+
	yhP6BJKDXGtJ+6NH4Q/kfTD/PFYl1nKVx5LrXtBXF2ivP2KmVW4dwoxvzo9uZBKIVg+QWvgIoQhYP
	AVNhFyuj8rtL7wiHO5+7wAs385wqVK/DXm3EQXQp6JrIi5f5bwJTi+q2KrMfwCXzzFG9QRFepvk02
	45zE5zjIXIBVasQ5tcjR3e9B/M3Q++JfJEZfpDgmj58PFABkG+UOacanVv0Ly+CL1sA1jQ7S/cdJK
	gmvQDhyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDObP-00000002cCt-0nwH;
	Thu, 16 Apr 2026 15:25:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDObL-00000002cAI-1tv8
	for barebox@lists.infradead.org;
	Thu, 16 Apr 2026 15:25:58 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wDObI-0007uE-T4; Thu, 16 Apr 2026 17:25:52 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 16 Apr 2026 17:25:46 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260416-socfpga-agilex5-iossm-cleanup-v1-1-ca9aae003c84@pengutronix.de>
References: <20260416-socfpga-agilex5-iossm-cleanup-v1-0-ca9aae003c84@pengutronix.de>
In-Reply-To: <20260416-socfpga-agilex5-iossm-cleanup-v1-0-ca9aae003c84@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_082555_494010_760A2856 
X-CRM114-Status: UNSURE (   8.66  )
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
Subject: [PATCH 1/6] arm: socfpga: iossm: make io96b_cal_status static
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The function is only used in iossm_mailbox. Make it static.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/iossm_mailbox.c | 2 +-
 arch/arm/mach-socfpga/iossm_mailbox.h | 1 -
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/mach-socfpga/iossm_mailbox.c b/arch/arm/mach-socfpga/iossm_mailbox.c
index 2d287b57c0b2..b8c1fcf68c09 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.c
+++ b/arch/arm/mach-socfpga/iossm_mailbox.c
@@ -258,7 +258,7 @@ void io96b_mb_init(struct io96b_info *io96b_ctrl)
 	}
 }
 
-int io96b_cal_status(phys_addr_t addr)
+static int io96b_cal_status(phys_addr_t addr)
 {
 	int ret;
 	u32 cal_success, cal_fail;
diff --git a/arch/arm/mach-socfpga/iossm_mailbox.h b/arch/arm/mach-socfpga/iossm_mailbox.h
index febe51591ca0..5db558ff04c6 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.h
+++ b/arch/arm/mach-socfpga/iossm_mailbox.h
@@ -150,7 +150,6 @@ static inline int io96b_mb_req_no_param(phys_addr_t io96b_csr_addr, u32 ip_type,
 
 /* Supported IOSSM mailbox function */
 void io96b_mb_init(struct io96b_info *io96b_ctrl);
-int io96b_cal_status(phys_addr_t addr);
 void io96b_init_mem_cal(struct io96b_info *io96b_ctrl);
 int io96b_trig_mem_cal(struct io96b_info *io96b_ctrl);
 int io96b_get_mem_technology(struct io96b_info *io96b_ctrl);

-- 
2.47.3




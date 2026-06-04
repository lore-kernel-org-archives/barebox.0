Delivery-date: Thu, 04 Jun 2026 13:08:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV5vn-002FoL-1n
	for lore@lore.pengutronix.de;
	Thu, 04 Jun 2026 13:08:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV5vl-0000no-Re
	for lore@pengutronix.de; Thu, 04 Jun 2026 13:08:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zvGNujS73ElRb8J6IJztrFchdS2T8bRntZKaxg4QWPo=; b=o332JlSw/6OWeeoTrRYIbs9uQ0
	Ga6NLxzdtYRVA+lOUvTUI0bG7RAKH6JiwMcUBjxONtiUcTOOE7WUKIBILyCTCUudArF+T1+rHuXzm
	PI1E6S21MqOjg6pKeeTBLR9Qf5eOpnIFbPlKnTnlQYGLhwSMrkuBH0yq/NO+sGKlIr7tddmvSSf6F
	2jxtFvP6XyIn0DHyvY3mlpr+81mQKv7ah749GGBqvinY0frmjwu5/ZUNEwwyy1KD7gNgTus3poDcX
	NX+PDznfZh6vVTpLwXkzLfOK6u/RlWucb1jGh/G1kBFozW87C547K/LGJB8gkLuIDeGRFcYhTq+N+
	uRgV7KSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV5ul-0000000Gbz2-28cT;
	Thu, 04 Jun 2026 11:07:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV5ue-0000000GbwT-2Ys0
	for barebox@lists.infradead.org;
	Thu, 04 Jun 2026 11:07:06 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wV5uc-0000IX-9B; Thu, 04 Jun 2026 13:06:58 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 04 Jun 2026 13:06:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260604-socfpga-axe5-sdram-init-v1-2-274f6361ce98@pengutronix.de>
References: <20260604-socfpga-axe5-sdram-init-v1-0-274f6361ce98@pengutronix.de>
In-Reply-To: <20260604-socfpga-axe5-sdram-init-v1-0-274f6361ce98@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_040700_683211_A44AF63C 
X-CRM114-Status: UNSURE (   8.36  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] arm: socfpga: agilex5: panic if DDR init failed
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There is no point in continuing booting if the DDR initialization has
failed. Panic early to avoid obscure subsequent faults.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/atf.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-socfpga/atf.c b/arch/arm/mach-socfpga/atf.c
index 1fd11c426bc2..6ddfef34632f 100644
--- a/arch/arm/mach-socfpga/atf.c
+++ b/arch/arm/mach-socfpga/atf.c
@@ -63,6 +63,8 @@ static void __noreturn agilex5_load_and_start_image_via_tfa(void)
 
 static void agilex5_el3_init(void)
 {
+	int ret;
+
 	agilex5_initialize_security_policies();
 	pr_debug("Security policies initialized\n");
 
@@ -73,7 +75,9 @@ static void agilex5_el3_init(void)
 	 */
 	if (!IS_ENABLED(CONFIG_DEBUG_LL))
 		writel(LCR_BKSE, SOCFPGA_UART0_ADDRESS + LCR);
-	agilex5_ddr_init_full();
+	ret = agilex5_ddr_init_full();
+	if (ret)
+		panic("DDR initialization failed\n");
 
 	socfpga_agilex5_qspi_init();
 

-- 
2.47.3




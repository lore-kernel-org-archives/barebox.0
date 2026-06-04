Delivery-date: Thu, 04 Jun 2026 13:08:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV5vo-002Fog-0Q
	for lore@lore.pengutronix.de;
	Thu, 04 Jun 2026 13:08:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV5vn-0000oL-GQ
	for lore@pengutronix.de; Thu, 04 Jun 2026 13:08:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3X4iBiG+x43ruUBMdKuHEJnianOWYJdPk9EnPNApL44=; b=1FEks92M80XQPgs//csDf81rSH
	k3kOM99olRbMxEokmVsNlGvM/ARzmU38xQVIfaH+XPoRIIWX/2WoO0iqea9YhoMmOUkW2kzfYIdfK
	xfa4Sz/c7EAfbJuX49pYIY1Qe9lVQaC4U5IcykXu9Er3qdD/cX1Hf9utW4xGOH6LtMuqsjVujHtzz
	L3TVw0urEkNSkN2bheAmFIemtQAny3uTKP+YP7VIqWPO2yV3U1tS42QuZlfglSjiyXuhC+GOHQi4Y
	+ry6WC8LlAMms1MeUKze2zeYV9Dib8J3foG668TIXvEYrIe95uflKVg2CL9peENWSBMGwEy4bnfDE
	LFxT6KQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV5ul-0000000Gbyv-1eIY;
	Thu, 04 Jun 2026 11:07:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV5ue-0000000GbwS-2YCh
	for barebox@lists.infradead.org;
	Thu, 04 Jun 2026 11:07:05 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wV5uc-0000IX-7r; Thu, 04 Jun 2026 13:06:58 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 04 Jun 2026 13:06:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260604-socfpga-axe5-sdram-init-v1-1-274f6361ce98@pengutronix.de>
References: <20260604-socfpga-axe5-sdram-init-v1-0-274f6361ce98@pengutronix.de>
In-Reply-To: <20260604-socfpga-axe5-sdram-init-v1-0-274f6361ce98@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_040700_670870_13AD59B9 
X-CRM114-Status: GOOD (  10.27  )
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
Subject: [PATCH 1/5] arm: socfpga: agilex5: separate EL3 init function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Extract the EL3 initialization from the entry function as cleanup and to
be able to adjust the el3_init code more easily.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/atf.c | 35 ++++++++++++++++++++---------------
 1 file changed, 20 insertions(+), 15 deletions(-)

diff --git a/arch/arm/mach-socfpga/atf.c b/arch/arm/mach-socfpga/atf.c
index e1f0a3558b04..1fd11c426bc2 100644
--- a/arch/arm/mach-socfpga/atf.c
+++ b/arch/arm/mach-socfpga/atf.c
@@ -61,27 +61,32 @@ static void __noreturn agilex5_load_and_start_image_via_tfa(void)
 	__builtin_unreachable();
 }
 
+static void agilex5_el3_init(void)
+{
+	agilex5_initialize_security_policies();
+	pr_debug("Security policies initialized\n");
+
+	/*
+	 * need to set the bank select enable before the
+	 * agilex5_ddr_init_full() otherwise the serial doesn't show
+	 * anything.
+	 */
+	if (!IS_ENABLED(CONFIG_DEBUG_LL))
+		writel(LCR_BKSE, SOCFPGA_UART0_ADDRESS + LCR);
+	agilex5_ddr_init_full();
+
+	socfpga_agilex5_qspi_init();
+
+	agilex5_load_and_start_image_via_tfa();
+}
+
 void __noreturn agilex5_barebox_entry(void *fdt)
 {
 	phys_addr_t membase;
 	phys_size_t memsize;
 
 	if (current_el() == 3) {
-		agilex5_initialize_security_policies();
-		pr_debug("Security policies initialized\n");
-
-		/*
-		 * need to set the bank select enable before the
-		 * agilex5_ddr_init_full() otherwise the serial doesn't show
-		 * anything.
-		 */
-		if (!IS_ENABLED(CONFIG_DEBUG_LL))
-			writel(LCR_BKSE, SOCFPGA_UART0_ADDRESS + LCR);
-		agilex5_ddr_init_full();
-
-		socfpga_agilex5_qspi_init();
-
-		agilex5_load_and_start_image_via_tfa();
+		agilex5_el3_init();
 		__builtin_unreachable();
 	}
 

-- 
2.47.3




Delivery-date: Mon, 11 Jul 2022 09:54:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAoF5-002C8t-37
	for lore@lore.pengutronix.de; Mon, 11 Jul 2022 09:54:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAoF2-0001N8-DQ
	for lore@pengutronix.de; Mon, 11 Jul 2022 09:54:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a/MiYflhwm2Uau163qBiTkKX+HW2/dXJYRs9NmvRcgo=; b=E1jXdU5+z/P8zWYnsLUe4l25dD
	ju+PJZU1dQF+XjGk4vosGZwGd8TblfIQ4Bg5Oa6aam3VgBklJukx+0/qpC6adHGlGbWPEw2x3EXhz
	5uB9DfPbSdHU/OVyoqV5brtdKPhyfiYBIxZ5LMU26k6hbhzaJdeV11utBFhbaaTbqQsNBOxmsWrq+
	iB3U40bB/IXtYI0k6kCXeUBXl4TRHIcD+eARTllCbtO69Wnwzn4gKtkOdZZ8hgYWSSTeBjvPZhQ6R
	qU7/Ta1GkvASDj3vJBGsy3uJg3Y5xxVGyMcc3zVAecsZ7DR5vc8/ZLBSUXNUCB6EniuEF0tQ7naIq
	0iIhgvFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAoDf-00Gz3P-Ce; Mon, 11 Jul 2022 07:52:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAoDL-00Gyu2-WA
	for barebox@lists.infradead.org; Mon, 11 Jul 2022 07:52:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <str@pengutronix.de>)
	id 1oAoDJ-0000lm-3P; Mon, 11 Jul 2022 09:52:17 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <str@pengutronix.de>)
	id 1oAoDI-000GVd-CZ; Mon, 11 Jul 2022 09:52:16 +0200
Received: from str by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <str@pengutronix.de>)
	id 1oAoDG-00A3hu-Gm; Mon, 11 Jul 2022 09:52:14 +0200
From: Steffen Trumtrar <str@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 11 Jul 2022 09:52:07 +0200
Message-Id: <20220711075209.2377254-4-str@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220711075209.2377254-1-str@pengutronix.de>
References: <20220711075209.2377254-1-str@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_005220_049505_6D579DF1 
X-CRM114-Status: UNSURE (   9.91  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 4/6] ARM: socfpga: achilles: use ENTRY_FUNCTION_WITHSTACK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Use the newer function ENTRY_FUNCTION_WITHSTACK.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/reflex-achilles/lowlevel.c | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boards/reflex-achilles/lowlevel.c b/arch/arm/boards/reflex-achilles/lowlevel.c
index 162cd58c58..adf7dd0ce5 100644
--- a/arch/arm/boards/reflex-achilles/lowlevel.c
+++ b/arch/arm/boards/reflex-achilles/lowlevel.c
@@ -31,12 +31,15 @@
 
 extern char __dtb_z_socfpga_arria10_achilles_start[];
 
-static noinline void achilles_start(void)
+#define ARRIA10_STACKTOP	ARRIA10_OCRAM_ADDR + SZ_256K
+
+ENTRY_FUNCTION_WITHSTACK(start_socfpga_achilles_xload, ARRIA10_STACKTOP, r0, r1, r2)
 {
 	int pbl_index = 0;
 	int barebox = 0;
 	int bitstream = 0;
 
+	arm_cpu_lowlevel_init();
 
 	relocate_to_current_adr();
 	setup_c();
@@ -75,13 +78,6 @@ static noinline void achilles_start(void)
 	arria10_start_image(barebox);
 }
 
-ENTRY_FUNCTION(start_socfpga_achilles_xload, r0, r1, r2)
-{
-	arm_cpu_lowlevel_init();
-	arm_setup_stack(ARRIA10_OCRAM_ADDR + SZ_256K);
-	achilles_start();
-}
-
 ENTRY_FUNCTION(start_socfpga_achilles, r0, r1, r2)
 {
 	void *fdt;
@@ -91,14 +87,12 @@ ENTRY_FUNCTION(start_socfpga_achilles, r0, r1, r2)
 	barebox_arm_entry(0x0, SZ_2G + SZ_1G, fdt);
 }
 
-ENTRY_FUNCTION(start_socfpga_achilles_bringup, r0, r1, r2)
+ENTRY_FUNCTION_WITHSTACK(start_socfpga_achilles_bringup, ARRIA10_STACKTOP, r0, r1, r2)
 {
 	void *fdt;
 
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(ARRIA10_OCRAM_ADDR + SZ_256K);
-
 	relocate_to_current_adr();
 	setup_c();
 
-- 
2.30.2




Delivery-date: Mon, 01 Aug 2022 14:20:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oIUPB-007eMW-Sz
	for lore@lore.pengutronix.de; Mon, 01 Aug 2022 14:20:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oIUP8-0008T8-T6
	for lore@pengutronix.de; Mon, 01 Aug 2022 14:20:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OzrWipOSr+mav8/GxEEu2qoHqIO0Jwvhqs5NMse1TI0=; b=2EeX8ta/O97GfqcAP7VhDuZSFn
	BWX5z1rSTgvUWALblCka4hxO9Umv2k6wCKLmALSv4C4qtWat4GagTSQ/jTnrDKQ/tFudVYnASMl9T
	dZ0v3PRvBtZmFbP/UtC2tgEy7Il9nl0y8unYWARbVXTJGUQlpT5wFv32JOfoaYITkWyGHR8TZsAg4
	mIjCXlKXk8orWmzBuCvbmmZa/Kgmqa0sALhEsLhs86kp8OOt7IUtRiZpq8gbdJ5zmr03PZ47vKnNT
	0oQl6EXTKGtPC4VCTuMt51CzbPQC2vbnwLAUPbyTHYJeddXSlJaaFqV411AdWJlNcd9tAgWz1DhAu
	2IVTPkBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIUNY-0063yf-Vi; Mon, 01 Aug 2022 12:18:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIUCf-005ts8-O0
	for barebox@lists.infradead.org; Mon, 01 Aug 2022 12:07:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <str@pengutronix.de>)
	id 1oIUCb-0005zt-Ty; Mon, 01 Aug 2022 14:07:17 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <str@pengutronix.de>)
	id 1oIUCb-0016gZ-75; Mon, 01 Aug 2022 14:07:17 +0200
Received: from str by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <str@pengutronix.de>)
	id 1oIUCZ-00AXmg-Pp; Mon, 01 Aug 2022 14:07:15 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  1 Aug 2022 14:07:04 +0200
Message-Id: <20220801120708.2511165-4-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220801120708.2511165-1-s.trumtrar@pengutronix.de>
References: <20220801120708.2511165-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220801_050721_894565_7E320741 
X-CRM114-Status: UNSURE (   9.65  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 4/8] ARM: socfpga: achilles: use ENTRY_FUNCTION_WITHSTACK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use the newer function ENTRY_FUNCTION_WITHSTACK.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/reflex-achilles/lowlevel.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boards/reflex-achilles/lowlevel.c b/arch/arm/boards/reflex-achilles/lowlevel.c
index 162cd58c58..2efb9aaea0 100644
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
@@ -91,7 +87,7 @@ ENTRY_FUNCTION(start_socfpga_achilles, r0, r1, r2)
 	barebox_arm_entry(0x0, SZ_2G + SZ_1G, fdt);
 }
 
-ENTRY_FUNCTION(start_socfpga_achilles_bringup, r0, r1, r2)
+ENTRY_FUNCTION_WITHSTACK(start_socfpga_achilles_bringup, ARRIA10_STACKTOP, r0, r1, r2)
 {
 	void *fdt;
 
-- 
2.30.2




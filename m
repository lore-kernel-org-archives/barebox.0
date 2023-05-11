Delivery-date: Thu, 11 May 2023 10:59:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1px299-00DkaZ-Iv
	for lore@lore.pengutronix.de; Thu, 11 May 2023 10:59:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1px296-0002Qc-TV
	for lore@pengutronix.de; Thu, 11 May 2023 10:59:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zUsrypNK2aQtoJQY31u0SS3MXJNYvJyupgKyP5IKbFA=; b=lBVc6VVgrpHjQnXu0CJihTtef5
	/Z1ibJmIRR3DE1qLuKwkROat/WpLYNHQgPlRWpX7GcJCiHuy3XM7brOeI+A8YJBa7GazYKQsaz9vb
	vWAkqN5GXv3UbYqFNNSIgv7rK+Vxtx2pNFndQGUgP9ddysr/16dgtvUA2FxagqddtNRI5HdA+m1KA
	09PE18FbReg6kQ8g8cXSiaQaZr/5p1ZIbTuPNWrVez0t+81Pq2T4kQ9KbJoed9p9/+UPAYayll/rx
	GyI3j09X1KkFzBWTD1iuIN/Rabyt4GPS3PG7spoHPjFHIqN46B774i19zM43D7LUp1G9vr3KRGiQu
	6LEw1niQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1px27r-008HQd-20;
	Thu, 11 May 2023 08:58:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1px27o-008HOu-13
	for barebox@lists.infradead.org;
	Thu, 11 May 2023 08:58:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1px27i-0002BM-KI; Thu, 11 May 2023 10:58:06 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1px27h-002gX0-Tl; Thu, 11 May 2023 10:58:05 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1px27g-001SCA-Tr; Thu, 11 May 2023 10:58:04 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Thu, 11 May 2023 10:58:01 +0200
Message-Id: <20230511085803.335993-2-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230511085803.335993-1-rhi@pengutronix.de>
References: <20230511085803.335993-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230511_015812_406083_D9E74363 
X-CRM114-Status: UNSURE (   8.31  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [RFT][PATCH 1/3] ARM: i.MX6: tqma6x: make use of ENTRY_FUNCTION_WITHSTACK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 arch/arm/boards/tqma6x/lowlevel.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/tqma6x/lowlevel.c b/arch/arm/boards/tqma6x/lowlevel.c
index 9283e3f009f8..6e9c9bed0bf8 100644
--- a/arch/arm/boards/tqma6x/lowlevel.c
+++ b/arch/arm/boards/tqma6x/lowlevel.c
@@ -16,14 +16,12 @@
 extern char __dtb_imx6q_mba6x_start[];
 extern char __dtb_imx6dl_mba6x_start[];
 
-ENTRY_FUNCTION(start_imx6q_mba6x, r0, r1, r2)
+ENTRY_FUNCTION_WITHSTACK(start_imx6q_mba6x, 0x00920000, r0, r1, r2)
 {
 	void *fdt;
 
 	imx6_cpu_lowlevel_init();
 
-	arm_setup_stack(0x00920000);
-
 	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
 		writel(0x2, 0x020e0338);
 		imx6_uart_setup_ll();
@@ -37,14 +35,12 @@ ENTRY_FUNCTION(start_imx6q_mba6x, r0, r1, r2)
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
 
-ENTRY_FUNCTION(start_imx6dl_mba6x, r0, r1, r2)
+ENTRY_FUNCTION_WITHSTACK(start_imx6dl_mba6x, 0x00920000, r0, r1, r2)
 {
 	void *fdt;
 
 	imx6_cpu_lowlevel_init();
 
-	arm_setup_stack(0x00920000);
-
 	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
 		writel(0x2, 0x020e035c);
 		imx6_uart_setup_ll();
-- 
2.39.2




Delivery-date: Mon, 21 Mar 2022 15:10:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWIjs-001RC2-VW
	for lore@lore.pengutronix.de; Mon, 21 Mar 2022 15:10:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWIjv-0005dj-7Q
	for lore@pengutronix.de; Mon, 21 Mar 2022 15:10:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WLterg68ISt8dSYXWmlmjGZm4dHcR+5TuKQFu5XSAhU=; b=b5KlU/jqwvih7h
	UP2m89NaW/USgNVcaqDPqhqWABfbCdXDnC0KJmH8+iKHTSkg+EUIaS4Z2AGvrtNeENJ/P9GgWV/dW
	xJJ5Oa347tUuvbZrIaGBAfx2nGbce8+YxQPgyEwkUBUwc6HQJbKmZDzBZRdykTbHax2VnQuqh09mY
	Dy6UzSzyhY/RvXPtaU0odOt4vBSwzfhvuwFU8gwBr5+kcVzJU75+HmUSzxWuLtdpeD2rVP6QvOtzx
	TwsBF7ANGwF5ryaqSHd46yb1ISHTvLUOwI+OIsfIwCPB/4phhiHap9nJg6/2YvfF31tuV+JqnQpmo
	iN4+fCuWFOOtPPCUPmTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWIiY-007z1P-4o; Mon, 21 Mar 2022 14:09:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWIiT-007z04-Jq
 for barebox@lists.infradead.org; Mon, 21 Mar 2022 14:09:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <jbe@pengutronix.de>) id 1nWIiQ-0005Nq-0S
 for barebox@lists.infradead.org; Mon, 21 Mar 2022 15:08:58 +0100
Received: from [2a0a:edc0:0:900:1d::45] (helo=ginster)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <jbe@pengutronix.de>) id 1nWIiO-0026iB-9Q
 for barebox@lists.infradead.org; Mon, 21 Mar 2022 15:08:57 +0100
Received: from jbe by ginster with local (Exim 4.94.2)
 (envelope-from <jbe@pengutronix.de>) id 1nWIiO-000FU8-JK
 for barebox@lists.infradead.org; Mon, 21 Mar 2022 15:08:56 +0100
From: Juergen Borleis <jbe@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 21 Mar 2022 15:08:54 +0100
Message-Id: <20220321140856.59479-1-jbe@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_070901_673170_A10ED905 
X-CRM114-Status: UNSURE (   9.97  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 1/3] ARM: webasto-ccbv2: consider the available memory size
 for optee
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/arm/boards/webasto-ccbv2/lowlevel.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/webasto-ccbv2/lowlevel.c b/arch/arm/boards/webasto-ccbv2/lowlevel.c
index 32117b0..dfc5c0f 100644
--- a/arch/arm/boards/webasto-ccbv2/lowlevel.c
+++ b/arch/arm/boards/webasto-ccbv2/lowlevel.c
@@ -32,7 +32,7 @@ static void configure_uart(void)
 
 }
 
-static void noinline start_ccbv2(u32 r0)
+static void noinline start_ccbv2(u32 r0, unsigned long mem_size)
 {
 	int tee_size;
 	void *tee;
@@ -48,7 +48,7 @@ static void noinline start_ccbv2(u32 r0)
 	 */
 	if(IS_ENABLED(CONFIG_FIRMWARE_CCBV2_OPTEE)
 	   && !(r0 > MX6_MMDC_P0_BASE_ADDR
-	        &&  r0 < MX6_MMDC_P0_BASE_ADDR + SZ_512M)) {
+	        &&  r0 < MX6_MMDC_P0_BASE_ADDR + mem_size)) {
 		get_builtin_firmware(ccbv2_optee_bin, &tee, &tee_size);
 
 		memset((void *)OPTEE_OVERLAY_LOCATION, 0, 0x1000);
@@ -70,7 +70,7 @@ ENTRY_FUNCTION(start_imx6ul_ccbv2_256m, r0, r1, r2)
 	setup_c();
 	barrier();
 
-	start_ccbv2(r0);
+	start_ccbv2(r0, SZ_256M);
 }
 
 ENTRY_FUNCTION(start_imx6ul_ccbv2_512m, r0, r1, r2)
@@ -84,5 +84,5 @@ ENTRY_FUNCTION(start_imx6ul_ccbv2_512m, r0, r1, r2)
 	setup_c();
 	barrier();
 
-	start_ccbv2(r0);
+	start_ccbv2(r0, SZ_512M);
 }
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


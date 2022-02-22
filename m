Delivery-date: Tue, 22 Feb 2022 11:57:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nMSr3-006lZs-Ja
	for lore@lore.pengutronix.de; Tue, 22 Feb 2022 11:57:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nMSr1-00055e-Fq
	for lore@pengutronix.de; Tue, 22 Feb 2022 11:57:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=72xwYn1QTrlD7PYSUTM0XK7NqB8sgUpC/+d9XOaUOSQ=; b=lwc0xO+/W6yZsb
	PV74JbxQYJETRwmVgzY7MvAjIYwFMmt+kf92SNakUEuW1Sm9EZyD8CHrvdOMFVNQcdMTmx6SsuWYe
	KbYZPkTNpuTQk9aqox9lMzh9FEJRmuKHeK0xAFuvlZtJYXYaOJxDCuDIH9sWSFVwa5NurH2HEFQQ7
	bJbp0U5LYt5Fr/XjgWTxoTLHdxC/jsm6et7a3OE2LpqUGYB7ILPnlfWgGNk3+0hKm1el7SpS5DbsW
	U2LUTf75Z9PamwYm4wYdeUbfbHVbfPO/RdbA/QJHIOjOqlmSNHiq9E3xwxF0/zGmfjnl8ZEj3sMJb
	bKat0aO3mc4aiN0XCnvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMSpI-009Dwy-1F; Tue, 22 Feb 2022 10:55:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMSjC-009Aq2-6S
 for barebox@lists.infradead.org; Tue, 22 Feb 2022 10:49:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <jbe@pengutronix.de>) id 1nMSj7-0003ZI-GT
 for barebox@lists.infradead.org; Tue, 22 Feb 2022 11:49:01 +0100
Received: from [2a0a:edc0:0:900:1d::45] (helo=ginster)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <jbe@pengutronix.de>) id 1nMSj7-000bKN-GV
 for barebox@lists.infradead.org; Tue, 22 Feb 2022 11:49:00 +0100
Received: from jbe by ginster with local (Exim 4.94.2)
 (envelope-from <jbe@pengutronix.de>) id 1nMSj5-000BYm-P6
 for barebox@lists.infradead.org; Tue, 22 Feb 2022 11:48:59 +0100
From: Juergen Borleis <jbe@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 22 Feb 2022 11:48:57 +0100
Message-Id: <20220222104859.44391-1-jbe@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220222_024906_277183_FA09C6B9 
X-CRM114-Status: UNSURE (   9.93  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] ARM: webasto-ccbv2: consider the available memory size
 for optee
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/arm/boards/webasto-ccbv2/lowlevel.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/webasto-ccbv2/lowlevel.c b/arch/arm/boards/webasto-ccbv2/lowlevel.c
index 32117b0..84de271 100644
--- a/arch/arm/boards/webasto-ccbv2/lowlevel.c
+++ b/arch/arm/boards/webasto-ccbv2/lowlevel.c
@@ -32,7 +32,7 @@ static void configure_uart(void)
 
 }
 
-static void noinline start_ccbv2(u32 r0)
+static void noinline start_ccbv2(u32 r0, unsigned long memSize)
 {
 	int tee_size;
 	void *tee;
@@ -48,7 +48,7 @@ static void noinline start_ccbv2(u32 r0)
 	 */
 	if(IS_ENABLED(CONFIG_FIRMWARE_CCBV2_OPTEE)
 	   && !(r0 > MX6_MMDC_P0_BASE_ADDR
-	        &&  r0 < MX6_MMDC_P0_BASE_ADDR + SZ_512M)) {
+	        &&  r0 < MX6_MMDC_P0_BASE_ADDR + memSize)) {
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


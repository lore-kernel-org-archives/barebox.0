Delivery-date: Wed, 21 Sep 2022 11:15:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oavpZ-00BCUd-E2
	for lore@lore.pengutronix.de; Wed, 21 Sep 2022 11:15:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oavpX-0007EY-FL
	for lore@pengutronix.de; Wed, 21 Sep 2022 11:15:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7oCr5AwquXFgv3/X7xk+6Pe5gzFW9e0TPVrEI0bV7Vk=; b=eZDfHshunl3GdYaZbbezN8RY7/
	r43598hGeuK7iQIfOX9mOjlWEWduyCCPZl/dXt7pSoBu3VxJvCkJLPUwAO4a+dMPBOthPvKCNFjQG
	2SPq2nAxNCsoj3qW9+SiFuU3CSLoQK69+XZnEgMxOTqmroKOp5Gr7lKvI+6Pvj6DFf9I+nYJbl9w4
	15dNDz5Lge+UkShNqf68IEQh9jfod98WAoSWVT/znM1EJSumMtkbuOL9CS53VaY8iZWk//+75+wvB
	Hi5kU3pqId6fQqqH0E7SoTDqJH4h3s2RZJWaYWASWayZrt1O/mU8YnaDZUs0bMoy+9h1cW0QJnZPD
	8E6GGERw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oavnZ-00AI5a-Oa; Wed, 21 Sep 2022 09:13:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oavnL-00AHyk-8c
	for barebox@lists.infradead.org; Wed, 21 Sep 2022 09:13:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oavnE-0006r1-R5; Wed, 21 Sep 2022 11:13:20 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oavnF-0021nD-Jc; Wed, 21 Sep 2022 11:13:20 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oavnD-00C5mB-GH; Wed, 21 Sep 2022 11:13:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 21 Sep 2022 11:13:16 +0200
Message-Id: <20220921091316.2879347-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_021327_379266_A4F52E42 
X-CRM114-Status: GOOD (  16.01  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] arm: rk3568 boards: call setup_c() before accessing global pointers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Global pointers may only be accessed after setup_c() has been called.

In pine-quartz64 and the Radxa Rock3 board the device tree pointer has
been initialized earlier. As a result the pointer points to the address
the device tree would be placed when the binary would run from 0x0. For
some reason it nevertheless seemed to work though.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pine64-quartz64/lowlevel.c | 26 ++++++++++++----------
 arch/arm/boards/radxa-rock3/lowlevel.c     | 26 ++++++++++++----------
 2 files changed, 28 insertions(+), 24 deletions(-)

diff --git a/arch/arm/boards/pine64-quartz64/lowlevel.c b/arch/arm/boards/pine64-quartz64/lowlevel.c
index b295885522..ae1f0cf920 100644
--- a/arch/arm/boards/pine64-quartz64/lowlevel.c
+++ b/arch/arm/boards/pine64-quartz64/lowlevel.c
@@ -10,18 +10,9 @@
 
 extern char __dtb_rk3566_quartz64_a_start[];
 
-static noinline void start_quartz64(void *fdt)
+static noinline void start_quartz64(void)
 {
-	/*
-	 * Image execution starts at 0x0, but this is used for ATF and
-	 * OP-TEE later, so move away from here.
-	 */
-	if (current_el() == 3)
-		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
-	else
-		relocate_to_current_adr();
-
-	setup_c();
+	void *fdt = __dtb_rk3566_quartz64_a_start;
 
 	if (current_el() == 3) {
 		rk3568_lowlevel_init();
@@ -35,5 +26,16 @@ static noinline void start_quartz64(void *fdt)
 
 ENTRY_FUNCTION(start_quartz64a, r0, r1, r2)
 {
-	start_quartz64(__dtb_rk3566_quartz64_a_start);
+	/*
+	 * Image execution starts at 0x0, but this is used for ATF and
+	 * OP-TEE later, so move away from here.
+	 */
+	if (current_el() == 3)
+		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
+	else
+		relocate_to_current_adr();
+
+	setup_c();
+
+	start_quartz64();
 }
diff --git a/arch/arm/boards/radxa-rock3/lowlevel.c b/arch/arm/boards/radxa-rock3/lowlevel.c
index 00a68889cd..2a449c17ae 100644
--- a/arch/arm/boards/radxa-rock3/lowlevel.c
+++ b/arch/arm/boards/radxa-rock3/lowlevel.c
@@ -10,18 +10,9 @@
 
 extern char __dtb_rk3568_rock_3a_start[];
 
-static noinline void rk3568_start(void *fdt)
+static noinline void rk3568_start(void)
 {
-	/*
-	 * Image execution starts at 0x0, but this is used for ATF and
-	 * OP-TEE later, so move away from here.
-	 */
-	if (current_el() == 3)
-		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
-	else
-		relocate_to_current_adr();
-
-	setup_c();
+	void *fdt = __dtb_rk3568_rock_3a_start;
 
 	/*
 	 * Enable vccio4 1.8V and vccio6 1.8V
@@ -40,5 +31,16 @@ static noinline void rk3568_start(void *fdt)
 
 ENTRY_FUNCTION(start_rock3a, r0, r1, r2)
 {
-	rk3568_start(__dtb_rk3568_rock_3a_start);
+	/*
+	 * Image execution starts at 0x0, but this is used for ATF and
+	 * OP-TEE later, so move away from here.
+	 */
+	if (current_el() == 3)
+		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
+	else
+		relocate_to_current_adr();
+
+	setup_c();
+
+	rk3568_start();
 }
-- 
2.30.2




Delivery-date: Thu, 26 Jun 2025 16:04:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUnDE-00BIFJ-16
	for lore@lore.pengutronix.de;
	Thu, 26 Jun 2025 16:04:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUnDC-0001dP-7t
	for lore@pengutronix.de; Thu, 26 Jun 2025 16:04:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Fq9N+1B38Zd24E9ZzaH/0wsA0IVuG7UbYAy+QcHQ2ME=; b=q1qqMq0m+8YeKMY3zsilcVyBee
	Bjm4TqOOf8YaLKZGWquZ2OAy7WrnXFzPBCULRam6FZTp2ouDc4RU8wC9n6V2P0M4dYHZNydJB5fvv
	v6Ph1a0DGRNz6EjRy00EjB/rrIREqpf2+vEPzaUyIkCVyMgRzFIlAWaIwz8iU2ljabn05bbA7W/hF
	HBUR0+ibidxCApU4kTNW84Aks1M+TP0ewS2nbW9Mmq8P3Tq53fx20ep3hWC4Jm2VDINVvC90vJ1AK
	C2o/TwcM28rs8z00AX9nFJehBErjCn+jwG4s8nyn4kHZPScxeWprQaA4NW5qojnobFwV4K+PwoxXm
	7USqwP/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUnCS-0000000Bqm5-1Quf;
	Thu, 26 Jun 2025 14:03:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUnCP-0000000Bqk7-02p9
	for barebox@lists.infradead.org;
	Thu, 26 Jun 2025 14:03:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uUnCM-0000Fs-Fb; Thu, 26 Jun 2025 16:03:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uUnCM-005SPb-0u;
	Thu, 26 Jun 2025 16:03:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uUnCM-001kkf-0X;
	Thu, 26 Jun 2025 16:03:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 26 Jun 2025 16:03:29 +0200
Message-Id: <20250626140329.418033-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250626140329.418033-1-s.hauer@pengutronix.de>
References: <20250626140329.418033-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_070333_047099_D78B17B6 
X-CRM114-Status: GOOD (  17.08  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: i.MX: Webasto ccbv2: fix barebox chainloading with OP-TEE enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Chainloading barebox when OP-TEE is enabled has multiple bugs, fix them.

When barebox starts we have to guess if we have to start OP-TEE or not.
As we can't detect the exception level on ARMv7 we do this by checking
if a first stage loader has passed us a device tree.

First of all the device tree is passed in r2, not in r0, so fix the
register we use.

Then we have to check if r2 is within the SDRAM. We check against
MX6_MMDC_P0_BASE_ADDR which is the base of the SDRAM controller. Use the
base address of the SDRAM instead.

Finally we manipulate the TZASC which we are obviously not allowed in
EL1, so move the manipulation to the code which is only executed in EL2.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/webasto-ccbv2/lowlevel.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/webasto-ccbv2/lowlevel.c b/arch/arm/boards/webasto-ccbv2/lowlevel.c
index 7a198bd801..17264479c2 100644
--- a/arch/arm/boards/webasto-ccbv2/lowlevel.c
+++ b/arch/arm/boards/webasto-ccbv2/lowlevel.c
@@ -31,23 +31,21 @@ static void configure_uart(void)
 
 }
 
-static void noinline start_ccbv2(u32 r0, unsigned long mem_size, char *fdt)
+static void noinline start_ccbv2(u32 r2, unsigned long mem_size, char *fdt)
 {
 	int tee_size;
 	void *tee;
 
-	/* Enable normal/secure r/w for TZC380 region0 */
-	writel(0xf0000000, 0x021D0108);
-
 	configure_uart();
 
 	/*
 	 * Chainloading barebox will pass a device tree within the RAM in r0,
 	 * skip OP-TEE early loading in this case
 	 */
-	if(IS_ENABLED(CONFIG_FIRMWARE_CCBV2_OPTEE)
-	   && !(r0 > MX6_MMDC_P0_BASE_ADDR
-	        &&  r0 < MX6_MMDC_P0_BASE_ADDR + mem_size)) {
+	if(IS_ENABLED(CONFIG_FIRMWARE_CCBV2_OPTEE) &&
+	   !(r2 > MX6_MMDC_PORT0_BASE_ADDR && r2 < MX6_MMDC_PORT0_BASE_ADDR + mem_size)) {
+		/* Enable normal/secure r/w for TZC380 region0 */
+		writel(0xf0000000, 0x021D0108);
 		get_builtin_firmware(ccbv2_optee_bin, &tee, &tee_size);
 
 		memset((void *)OPTEE_OVERLAY_LOCATION, 0, 0x1000);
@@ -70,7 +68,7 @@ ENTRY_FUNCTION(start_imx6ul_ccbv2_256m, r0, r1, r2)
 	setup_c();
 	barrier();
 
-	start_ccbv2(r0, SZ_256M, __dtb_z_imx6ul_webasto_ccbv2_start);
+	start_ccbv2(r2, SZ_256M, __dtb_z_imx6ul_webasto_ccbv2_start);
 }
 
 ENTRY_FUNCTION(start_imx6ul_ccbv2_512m, r0, r1, r2)
@@ -83,7 +81,7 @@ ENTRY_FUNCTION(start_imx6ul_ccbv2_512m, r0, r1, r2)
 	setup_c();
 	barrier();
 
-	start_ccbv2(r0, SZ_512M, __dtb_z_imx6ul_webasto_ccbv2_start);
+	start_ccbv2(r2, SZ_512M, __dtb_z_imx6ul_webasto_ccbv2_start);
 }
 
 extern char __dtb_z_imx6ul_webasto_marvel_start[];
@@ -97,5 +95,5 @@ ENTRY_FUNCTION(start_imx6ul_marvel, r0, r1, r2)
 	setup_c();
 	barrier();
 
-	start_ccbv2(r0, SZ_512M, __dtb_z_imx6ul_webasto_marvel_start);
+	start_ccbv2(r2, SZ_512M, __dtb_z_imx6ul_webasto_marvel_start);
 }
-- 
2.39.5




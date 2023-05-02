Delivery-date: Tue, 02 May 2023 11:15:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm6q-002AeD-2N
	for lore@lore.pengutronix.de; Tue, 02 May 2023 11:15:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm6n-0002HE-3Y
	for lore@pengutronix.de; Tue, 02 May 2023 11:15:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EYA4NNUw2CGyMnanSLzYy1Jvr1Zzq8c6BMlGSYUvXlk=; b=pGx6Gh5IfJjF9nj7Wap9GLV1+m
	neGY1ujnOvnO76AZjGiny5/VkcKGQP43VATpLyFELnypknKC9lTelHPexAtl7FVnM26SO5Mw4UjsZ
	inD+fBvF5Bc6nEC+Lhn8zY76VvD05OiGq4Ohyoyyyzl1FltoJG7bSDgMMFjVPyBzYyJ27JOvpxygs
	dAtnlezx7xPsKKpsSStbOIskrQwugjT4Lc+Jj4HWS0Dvk64848qg9tNw6ZfKW8I5sH18VK6t6/m/7
	OKWTRIxPRgOwLgoxfP/p2T2tkMSnBa98pKVFvtrWLeW0AcC8Gtx4LiUpYsVy7fp8TD15wwZhMVSYa
	hvkLFK9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm5g-000jOq-0m;
	Tue, 02 May 2023 09:14:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm5X-000jGr-2i
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 09:14:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5W-0001A9-IK; Tue, 02 May 2023 11:14:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5W-000YjX-1q; Tue, 02 May 2023 11:14:22 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5U-00Aqzo-82; Tue, 02 May 2023 11:14:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 11:14:14 +0200
Message-Id: <20230502091419.2551228-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230502091419.2551228-1-s.hauer@pengutronix.de>
References: <20230502091419.2551228-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_021423_902394_EE97730D 
X-CRM114-Status: GOOD (  12.28  )
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
Subject: [PATCH 07/12] ARM: versatile: make sure to run initcalls on versatile only
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/versatile/versatilepb.c | 13 +++++--------
 arch/arm/mach-versatile/core.c          |  9 ++++++---
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boards/versatile/versatilepb.c b/arch/arm/boards/versatile/versatilepb.c
index 8079ade9a5..3eae1e4f78 100644
--- a/arch/arm/boards/versatile/versatilepb.c
+++ b/arch/arm/boards/versatile/versatilepb.c
@@ -24,6 +24,10 @@ static int vpb_console_init(void)
 	char *hostname = "versatilepb-unknown";
 	char *model = "ARM Versatile PB";
 
+	if (!of_machine_is_compatible("arm,versatile-pb") &&
+	    !of_machine_is_compatible("arm,versatile-ab"))
+		return 0;
+
 	if (cpu_is_arm926()) {
 		hostname = "versatilepb-arm926";
 		model = "ARM Versatile PB (arm926)";
@@ -32,17 +36,10 @@ static int vpb_console_init(void)
 		model = "ARM Versatile PB (arm1176)";
 	}
 
+	armlinux_set_architecture(MACH_TYPE_VERSATILE_PB);
 	barebox_set_hostname(hostname);
 	barebox_set_model(model);
 
 	return 0;
 }
 console_initcall(vpb_console_init);
-
-static int vpb_devices_init(void)
-{
-	armlinux_set_architecture(MACH_TYPE_VERSATILE_PB);
-
-	return 0;
-}
-device_initcall(vpb_devices_init);
diff --git a/arch/arm/mach-versatile/core.c b/arch/arm/mach-versatile/core.c
index 8dea053d48..74af8c0804 100644
--- a/arch/arm/mach-versatile/core.c
+++ b/arch/arm/mach-versatile/core.c
@@ -98,8 +98,6 @@ static int vpb_clocksource_init(void)
 	return init_clock(&vpb_cs);
 }
 
-core_initcall(vpb_clocksource_init);
-
 static void __noreturn versatile_reset_soc(struct restart_handler *rst)
 {
 	u32 val;
@@ -116,7 +114,12 @@ static void __noreturn versatile_reset_soc(struct restart_handler *rst)
 
 static int versatile_init(void)
 {
+	if (!of_machine_is_compatible("arm,versatile-pb") &&
+	    !of_machine_is_compatible("arm,versatile-ab"))
+		return 0;
+
+	vpb_clocksource_init();
 	restart_handler_register_fn("soc", versatile_reset_soc);
 	return 0;
 }
-coredevice_initcall(versatile_init);
+core_initcall(versatile_init);
-- 
2.39.2




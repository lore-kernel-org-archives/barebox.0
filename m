Delivery-date: Fri, 17 Mar 2023 10:46:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pd6et-003mOG-2a
	for lore@lore.pengutronix.de; Fri, 17 Mar 2023 10:45:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pd6et-0007s1-1T
	for lore@pengutronix.de; Fri, 17 Mar 2023 10:45:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=f7uSQNaoC9xoQd9F/023Rml6eDChlBMwsrkWOHyZtRI=; b=IWiVmEFMZ1ptuhguPxk5P0u0WS
	sg4IkcxMO0pbY7norqBRlPRiPq08wtQNU+D+JrE/q5Gvm43IzxxRKJLwp+YeeJdNwsztO8WH97SqG
	usHjEkxIJODSVw3MrSw2LDQOcDS6EzdfHyv6SCRCr0YLATF/0TKAFzCSG8VGkNbhzjmE6l8lqmocz
	kSzpUifLY4HyEa3wDJNIs7l38nn1CLBWCQVFxjTDZ3lRfRxB4Z2FwUYKWazo3l1GH/vFgeA8s8v32
	jYAzeyXPL01UFR6aJ5olyvbmrVFPZHJZ2zwdqsH+NomqwZ7OvoKtZ5bWKfAMo6h6KpMClA9UxzSHn
	zUU9rjng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pd6dX-001mgG-15;
	Fri, 17 Mar 2023 09:44:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pd6dT-001meF-31
	for barebox@lists.infradead.org;
	Fri, 17 Mar 2023 09:44:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pd6dO-0007Zt-GP; Fri, 17 Mar 2023 10:44:26 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pd6dN-004k8m-SF; Fri, 17 Mar 2023 10:44:25 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pd6dN-00DFBP-8s; Fri, 17 Mar 2023 10:44:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 17 Mar 2023 10:44:20 +0100
Message-Id: <20230317094420.3156584-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230317_024431_977389_5009AA8B 
X-CRM114-Status: GOOD (  10.63  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX: boards: Use imx6_cpu_lowlevel_init()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some i.MX6 boards still call arm_cpu_lowlevel_init() instead of
imx6_cpu_lowlevel_init(). The latter calls arm_cpu_lowlevel_init()
and additionally enables ARM errata workarounds applicable for i.MX6.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/cm-fx6/lowlevel.c    | 4 ++--
 arch/arm/boards/skov-imx6/lowlevel.c | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/cm-fx6/lowlevel.c b/arch/arm/boards/cm-fx6/lowlevel.c
index 27c15f5412..3b8014b238 100644
--- a/arch/arm/boards/cm-fx6/lowlevel.c
+++ b/arch/arm/boards/cm-fx6/lowlevel.c
@@ -334,7 +334,7 @@ static noinline void cm_fx6_start(void)
 
 ENTRY_FUNCTION(start_imx6_cm_fx6, r0, r1, r2)
 {
-	arm_cpu_lowlevel_init();
+	imx6_cpu_lowlevel_init();
 
 	relocate_to_current_adr();
 	setup_c();
@@ -361,7 +361,7 @@ static noinline void utilite_start(void)
 
 ENTRY_FUNCTION(start_imx6_utilite, r0, r1, r2)
 {
-	arm_cpu_lowlevel_init();
+	imx6_cpu_lowlevel_init();
 
 	relocate_to_current_adr();
 	setup_c();
diff --git a/arch/arm/boards/skov-imx6/lowlevel.c b/arch/arm/boards/skov-imx6/lowlevel.c
index ea6de36a36..68a656b7fd 100644
--- a/arch/arm/boards/skov-imx6/lowlevel.c
+++ b/arch/arm/boards/skov-imx6/lowlevel.c
@@ -658,7 +658,7 @@ static noinline void skov_imx6_start(void)
 
 ENTRY_FUNCTION(start_imx6_skov_imx6, r0, r1, r2)
 {
-	arm_cpu_lowlevel_init();
+	imx6_cpu_lowlevel_init();
 
 	relocate_to_current_adr();
 	setup_c();
-- 
2.30.2




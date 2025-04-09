Delivery-date: Wed, 09 Apr 2025 16:13:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2WBZ-00ARPB-2J
	for lore@lore.pengutronix.de;
	Wed, 09 Apr 2025 16:13:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2WBZ-0001ad-3F
	for lore@pengutronix.de; Wed, 09 Apr 2025 16:13:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BfWDnieeIOf/BFIOBOVXN94GJtkGiASkanZMRczo7JE=; b=JvlwxJnvZwNLAzMFC5vGXgYwVB
	WuaQgErlmtzbw+IrGQqdqPKX2ilY0hHB5Iwue8Jp27zbniuLRS/MxkmSPDlC2NY6YIh8E3pF1rU9Q
	uT2j100+JJE83WYI5yfcYUd9lASOovpPgaIxML21NfoOFhKjzdDOiF0cA6e9cF7qBs05rWfK6TTiF
	1GqcnZa6EStkUe1kRNiGsPjFcy4XYZPhfL+0CyGPnA4pPcsYXCevb5yuK1a0NjL6CW0mDQOc1hDP4
	tU7JUr1YaVXaImVTi925B+zIIY7nCFEPMAqLbiFFUMEttSgmdv56xZ39gDVsBkearJqZ3l5o3+a/W
	DGDesyLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2WAx-00000007PDy-40pT;
	Wed, 09 Apr 2025 14:13:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2VKt-00000007GvR-05da
	for barebox@lists.infradead.org;
	Wed, 09 Apr 2025 13:19:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2VKr-0006iM-Qa; Wed, 09 Apr 2025 15:19:21 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2VKr-0046qL-22;
	Wed, 09 Apr 2025 15:19:21 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2VKr-008BBO-1i;
	Wed, 09 Apr 2025 15:19:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Apr 2025 15:19:20 +0200
Message-Id: <20250409131920.1949534-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250409131920.1949534-1-a.fatoum@pengutronix.de>
References: <20250409131920.1949534-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_061923_060969_69FF3007 
X-CRM114-Status: GOOD (  12.57  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: stm32mp: init: expand bootsource logic to STM32MP13{1,3}
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently run through the bootsource logic only for STM32MP135, but
the code is equally applicable to the cheaper variants that only differ
in available peripherals.

Change the check to account for current STM32MP13 variants.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-stm32mp/init.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-stm32mp/init.c b/arch/arm/mach-stm32mp/init.c
index b24649e86658..1c7f62dbb033 100644
--- a/arch/arm/mach-stm32mp/init.c
+++ b/arch/arm/mach-stm32mp/init.c
@@ -240,7 +240,11 @@ static int stm32mp_init(void)
 {
 	u32 boot_ctx;
 
-	if (of_machine_is_compatible("st,stm32mp135"))
+	if (of_machine_is_compatible("st,stm32mp131"))
+		__st32mp_soc = 0x32131;
+	else if (of_machine_is_compatible("st,stm32mp133"))
+		__st32mp_soc = 0x32133;
+	else if (of_machine_is_compatible("st,stm32mp135"))
 		__st32mp_soc = 0x32135;
 	else if (of_machine_is_compatible("st,stm32mp151"))
 		__st32mp_soc = 0x32151;
@@ -251,7 +255,7 @@ static int stm32mp_init(void)
 	else
 		return 0;
 
-	if (__st32mp_soc == 0x32135) {
+	if ((__st32mp_soc & 0xFF0) == 0x130) {
 		boot_ctx = readl(STM32MP13_TAMP_BOOT_CONTEXT);
 	} else {
 		stm32mp15_setup_cpu_type();
-- 
2.39.5




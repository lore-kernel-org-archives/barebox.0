Delivery-date: Mon, 22 May 2023 07:15:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0xtV-009ISU-Qm
	for lore@lore.pengutronix.de; Mon, 22 May 2023 07:15:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0xtT-0000Qw-I6
	for lore@pengutronix.de; Mon, 22 May 2023 07:15:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=i9YJNdVAhqLBrm+ulZzVdKbM887s4DN4rqfB6MEFWbg=; b=wx2CX2xD94hyMM+RZHbIoeLj1e
	HL4EtANXd5YkmNx8DQmF+/NaChRkOEAvywOiheEn0xhnjEgGdIhYptUarHRwkttvNf6v/f/6IX2nh
	J0Zp+mUnG16dAuWvFCaHNdjXFRrZP/01hevsfQ9DOGKDrFYLePeiPWw2vtj6HhigatSmjLIJ5uhl9
	oeVDfIgJiREDodKBL8l+hHXUT0ulPGHkKp5GWyoeB2FGPnqDk+KrMAxm5cnKQZ0EQiXWTB84delcG
	Oniyq4+gvzTmfQFhoMUAEjnVs8agomCIQU4Gbz6vx7qsIW5GfZhtrinvF2Fws/BE9ZMIflB+isPdU
	qZKZvHlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0xry-005MAQ-2A;
	Mon, 22 May 2023 05:14:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0xrv-005M9K-1B
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 05:14:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q0xrp-0008UR-4D; Mon, 22 May 2023 07:13:57 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0xro-001vtI-FT; Mon, 22 May 2023 07:13:56 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0xrn-004LRN-My; Mon, 22 May 2023 07:13:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 May 2023 07:13:54 +0200
Message-Id: <20230522051354.1035717-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_221403_403049_D72EAF01 
X-CRM114-Status: GOOD (  11.19  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! ARM: rockchip: rk3588: add memsize detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Extension of the Rockchip DMC driver for RK3588 support broke the
existing support for RK3566. Patch that up.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-rockchip/dmc.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-rockchip/dmc.c b/arch/arm/mach-rockchip/dmc.c
index 85fa8acd192f..630f0f6b7347 100644
--- a/arch/arm/mach-rockchip/dmc.c
+++ b/arch/arm/mach-rockchip/dmc.c
@@ -25,6 +25,7 @@
 
 #define RK3399_INT_REG_START		0xf0000000
 #define RK3568_INT_REG_START		RK3399_INT_REG_START
+#define RK3588_INT_REG_START		RK3568_INT_REG_START
 
 struct rockchip_dmc_drvdata {
 	unsigned int os_reg2;
@@ -228,11 +229,17 @@ static const struct rockchip_dmc_drvdata rk3399_drvdata = {
 };
 
 static const struct rockchip_dmc_drvdata rk3568_drvdata = {
+	.os_reg2 = RK3568_PMUGRF_OS_REG2,
+	.os_reg3 = RK3568_PMUGRF_OS_REG3,
+	.internal_registers_start = RK3568_INT_REG_START,
+};
+
+static const struct rockchip_dmc_drvdata rk3588_drvdata = {
 	.os_reg2 = RK3588_PMUGRF_OS_REG2,
 	.os_reg3 = RK3588_PMUGRF_OS_REG3,
 	.os_reg4 = RK3588_PMUGRF_OS_REG4,
 	.os_reg5 = RK3588_PMUGRF_OS_REG5,
-	.internal_registers_start = RK3568_INT_REG_START,
+	.internal_registers_start = RK3588_INT_REG_START,
 };
 
 static struct of_device_id rockchip_dmc_dt_ids[] = {
@@ -246,7 +253,7 @@ static struct of_device_id rockchip_dmc_dt_ids[] = {
 	},
 	{
 		.compatible = "rockchip,rk3588-dmc",
-		.data = &rk3568_drvdata,
+		.data = &rk3588_drvdata,
 	},
 	{ /* sentinel */ }
 };
-- 
2.39.2




Delivery-date: Mon, 17 Oct 2022 18:20:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okSqU-00BjvZ-Fz
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 18:20:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okSqS-0004U4-MJ
	for lore@pengutronix.de; Mon, 17 Oct 2022 18:20:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bWJM7VZrrH836uCkJB5Hsqzgy9twfJJfaYY3o4c2+HY=; b=n0gaM+14bcPupNqoWbUdVU4b4v
	EnNffTpEwR0nvyx7KuaB3E1mlA7NvrVDUzbiMrdm7bt6N7xFkTGqRgmMCRxydDkqZSij8sx7WiBE0
	BjQCYudZl9rDDQxq6ZkrjhYr0SvRd90v5dF+Caxu1Mwj1IKSv/N1Mt9XXvQDXe71lhSm6V+COG+mH
	HUymFHXA7rcR2YYSuYNrOvHgHdGWqCjJigzNJdKur8bgZY1Io2rDDf6CAoSq4xRmdMHGEj6mvjENJ
	nDL7AuIX8npH7UYPySvuBim6pc/8yA+ZrANdJmyHfSoObUUKpBCxEbujQD2TTsqKCU/R0ZHY7Xqqf
	UI/8rN+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okSoy-00DjvA-V7; Mon, 17 Oct 2022 16:18:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okSot-00Djsd-Ey
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 16:18:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1okSon-0004DM-Id
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 18:18:21 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1okSom-00270g-QE
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 18:18:20 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1okSol-001Ofa-Tt
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 18:18:19 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 17 Oct 2022 18:18:18 +0200
Message-Id: <20221017161818.333094-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221017161818.333094-1-m.felsch@pengutronix.de>
References: <20221017161818.333094-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_091827_523615_43DC17E1 
X-CRM114-Status: GOOD (  12.12  )
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
Subject: [PATCH next 3/3] ARM: i.MX8M: align SIP_BUILDINFO with the tf-a define
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Align the define with the name used by the usptream and downstream tf-a.

While on change the pr_info behaviour to only print the version if a0
contain something useful.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/imx8m.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index 8b275bd6f6..9758525b54 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -18,8 +18,8 @@
 #include <linux/iopoll.h>
 #include <linux/arm-smccc.h>
 
-#define FSL_SIP_BUILDINFO			0xC2000003
-#define FSL_SIP_BUILDINFO_GET_COMMITHASH	0x00
+#define IMX_SIP_BUILDINFO			0xC2000003
+#define IMX_SIP_BUILDINFO_GET_COMMITHASH	0x00
 
 void imx8m_clock_set_target_val(int clock_id, u32 val)
 {
@@ -62,10 +62,12 @@ static int imx8m_init(const char *cputypestr)
 
 	if (IS_ENABLED(CONFIG_ARM_SMCCC) &&
 	    IS_ENABLED(CONFIG_FIRMWARE_IMX8MQ_ATF)) {
-		arm_smccc_smc(FSL_SIP_BUILDINFO,
-			      FSL_SIP_BUILDINFO_GET_COMMITHASH,
+		arm_smccc_smc(IMX_SIP_BUILDINFO,
+			      IMX_SIP_BUILDINFO_GET_COMMITHASH,
 			      0, 0, 0, 0, 0, 0, &res);
-		pr_info("i.MX ARM Trusted Firmware: %s\n", (char *)&res.a0);
+
+		if (res.a0 > 0)
+			pr_info("i.MX ARM Trusted Firmware: %s\n", (char *)&res.a0);
 	}
 
 	return 0;
-- 
2.30.2




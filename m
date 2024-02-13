Delivery-date: Tue, 13 Feb 2024 16:18:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZuYB-004xnT-2Q
	for lore@lore.pengutronix.de;
	Tue, 13 Feb 2024 16:18:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZuYB-0004cC-5o
	for lore@pengutronix.de; Tue, 13 Feb 2024 16:18:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eNzLyxmdhqh6xcyRyrbMP/BWtcWJPJq2vJzczf34xqQ=; b=q66HvMFdBLuJM/iEYB80xybUfK
	ipk2rA3LR0Rp7Yrr7RLb8yYm74HdZXeyJyY2o74Xa3PyfZ9w/qj4qUSzgEIfDlUmixryrIfPAQBr9
	W2V0Jen+EkisV687Qun2QqZyx4TAz0qVSqlsEeD8p3vw+Nt6AwgyPv9gJUWlasmtaY1HwgSt0cicQ
	yXUh1fGSWehUwpiayw2r4wVHx/Vz6lFzic0BdIu/TyKZ6qkXwo0J434/CxMIyPo0SduV2N8KGw7qF
	TCjLNexa14J/L25UHWP4eSVmaJga+zor0FRVJMcNEjbwd+xWjHvF718noAao7phX0wRnNMtKr90qA
	ctKCwj1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZuXi-00000009iij-32K5;
	Tue, 13 Feb 2024 15:17:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZuXc-00000009if2-0t46
	for barebox@lists.infradead.org;
	Tue, 13 Feb 2024 15:17:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZuXZ-0004Lo-SX; Tue, 13 Feb 2024 16:17:45 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZuXZ-000VpE-GO; Tue, 13 Feb 2024 16:17:45 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZuXZ-002pOE-1I;
	Tue, 13 Feb 2024 16:17:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 13 Feb 2024 16:17:39 +0100
Message-Id: <20240213151744.307958-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240213151744.307958-1-s.hauer@pengutronix.de>
References: <20240213151744.307958-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_071748_347350_CD5954F1 
X-CRM114-Status: GOOD (  13.06  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/6] hab: drop incomplete i.MX28 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

HAB for i.MX28 was introduced with the first commit adding HAB support,
but was never fully implemented for i.MX28. Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/hab/habv4.c | 23 -----------------------
 include/hab.h       |  5 -----
 2 files changed, 28 deletions(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index 6440ef7f51..d8e5732adf 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -20,7 +20,6 @@
 #include <mach/imx/generic.h>
 #include <mach/imx/imx8mq.h>
 
-#define HABV4_RVT_IMX28 0xffff8af8
 #define HABV4_RVT_IMX6_OLD 0x00000094
 #define HABV4_RVT_IMX6_NEW 0x00000098
 #define HABV4_RVT_IMX6UL 0x00000100
@@ -720,25 +719,3 @@ static int init_imx6_hab_get_status(void)
  * faulting.
  */
 postmmu_initcall(init_imx6_hab_get_status);
-
-int imx28_hab_get_status(void)
-{
-	const struct habv4_rvt *rvt = (void *)HABV4_RVT_IMX28;
-
-	return habv4_get_status(rvt);
-}
-
-static int init_imx28_hab_get_status(void)
-{
-	if (!cpu_is_mx28())
-		/* can happen in multi-image builds and is not an error */
-		return 0;
-
-
-	/* nobody will check the return value if there were HAB errors, but the
-	 * initcall will fail spectaculously with a strange error message. */
-	imx28_hab_get_status();
-	return 0;
-}
-/* i.MX28 ROM code can be run after MMU setup to make use of caching */
-postmmu_initcall(init_imx28_hab_get_status);
diff --git a/include/hab.h b/include/hab.h
index ebe19ce357..d0952e9376 100644
--- a/include/hab.h
+++ b/include/hab.h
@@ -21,14 +21,9 @@ enum habv4_state {
 };
 
 #ifdef CONFIG_HABV4
-int imx28_hab_get_status(void);
 int imx6_hab_get_status(void);
 int habv4_get_state(void);
 #else
-static inline int imx28_hab_get_status(void)
-{
-	return -EPERM;
-}
 static inline int imx6_hab_get_status(void)
 {
 	return -EPERM;
-- 
2.39.2




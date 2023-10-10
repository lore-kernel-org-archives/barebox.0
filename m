Delivery-date: Tue, 10 Oct 2023 16:34:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDox-003BFn-1K
	for lore@lore.pengutronix.de; Tue, 10 Oct 2023 16:34:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDou-0008IW-0H
	for lore@pengutronix.de; Tue, 10 Oct 2023 16:34:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KW3Zcn7tVtQUNtAiUNjj8Uok3iGMbyerDtrOIOOUZrc=; b=T5snyRikIO6SIEjIvaTJFD16C5
	TjUgMyljDoC8DkEjls0y6/ACHBLqfcRD/uB2mTf3m6P3XC++DCfqIwzDhF9DBcA+IZeSxj/JWHQLN
	tqknIMJr65cZAA2YUztzyRPCkf2u9fjWJw263oNRN1l6LO6k+f7P1ULLVH55Tk40POjMPCtKn8z7U
	ZVZVf0BHB+ScelsVz7+GpdlP9vo/uruu2XjHGYbnfG3PqiTfSmooFngJtfv4Et11zLW4K38Ubo1eX
	ceWByifLl5oqROw3Ly4IShOlQlgipuMqKtUIfdI6AJrDKLNNpDfIVZT/cA9k0aLJKXNFzd86JCem6
	gpdqKezA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnf-00DZX1-0o;
	Tue, 10 Oct 2023 14:33:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnY-00DZQ6-1M
	for barebox@lists.infradead.org;
	Tue, 10 Oct 2023 14:33:28 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qqDnV-0007Dl-3a
	for barebox@lists.infradead.org; Tue, 10 Oct 2023 16:33:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 10 Oct 2023 16:32:52 +0200
Message-Id: <20231010143314.2031253-5-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010143314.2031253-1-m.felsch@pengutronix.de>
References: <20231010143314.2031253-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_073324_459063_E658AECD 
X-CRM114-Status: GOOD (  10.84  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/26] i.MX: HAB: remove unused init() hook
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The init() hook was never used so we can remove it to cleanup the code a
bit.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/hab/hab.c | 18 ++++--------------
 1 file changed, 4 insertions(+), 14 deletions(-)

diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index fa9912f784b4..a1c1e89eb249 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -185,7 +185,6 @@ static int imx_hab_device_locked_down_ocotp(void)
 }
 
 struct imx_hab_ops {
-	int (*init)(void);
 	int (*write_srk_hash)(const u8 *srk, unsigned flags);
 	int (*read_srk_hash)(u8 *srk);
 	int (*permanent_write_enable)(int enable);
@@ -219,29 +218,20 @@ static struct imx_hab_ops imx8m_hab_ops_ocotp = {
 
 static struct imx_hab_ops *imx_get_hab_ops(void)
 {
-	static struct imx_hab_ops *ops, *tmp;
-	int ret;
+	static struct imx_hab_ops *ops;
 
 	if (ops)
 		return ops;
 
 	if (IS_ENABLED(CONFIG_HABV3) && (cpu_is_mx25() || cpu_is_mx35()))
-		tmp = &imx_hab_ops_iim;
+		ops = &imx_hab_ops_iim;
 	else if (IS_ENABLED(CONFIG_HABV4) && cpu_is_mx6())
-		tmp = &imx6_hab_ops_ocotp;
+		ops = &imx6_hab_ops_ocotp;
 	else if (IS_ENABLED(CONFIG_HABV4) && cpu_is_mx8mq())
-		tmp = &imx8m_hab_ops_ocotp;
+		ops = &imx8m_hab_ops_ocotp;
 	else
 		return NULL;
 
-	if (tmp->init) {
-		ret = tmp->init();
-		if (ret)
-			return NULL;
-	}
-
-	ops = tmp;
-
 	return ops;
 }
 
-- 
2.39.2




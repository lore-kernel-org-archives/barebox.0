Delivery-date: Tue, 14 Nov 2023 14:31:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2tW2-00BJtv-1d
	for lore@lore.pengutronix.de;
	Tue, 14 Nov 2023 14:31:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2tW2-0006xy-Hk
	for lore@pengutronix.de; Tue, 14 Nov 2023 14:31:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0oQyOQQzEB3x8D8DVbbPV1xnGpJsUAE6MWkh8zrJn0o=; b=ID/MkPmO+NSqMIZcRMr35KBSf3
	ETMLr6oVK6vlIaToidQ/Z6zOhfEW7dHWMehnYIVmczjNHOAis+m+O6h0PqX2va9xKgRtwfgK9dyh8
	cBqgskLM1nWtfPMMZplBo48NDsIWQWapWoiDqnuInEE896yP4/xvaPG+r9BH6HOS+pJq1ghK4lb40
	KkNO9dPMWiJVB2Al5wAnk0yp7XigMjzq9uD3lNkvAYNXfTdMS0ClOmvhfe2y412TtvmHHoP+JxeUY
	MDCmjrWEYvwpxrMnefPqcNgHnU2crZSpXgy7QzRQl7zzN4Mk9SRmzZN/nhi63U46aY9Xck9rtYYAc
	EFvgQORA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2tUn-00G2mP-0X;
	Tue, 14 Nov 2023 13:30:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2tUe-00G2hy-1d
	for barebox@lists.infradead.org;
	Tue, 14 Nov 2023 13:30:20 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1r2tUd-0006Gh-CS
	for barebox@lists.infradead.org; Tue, 14 Nov 2023 14:30:15 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 14 Nov 2023 14:30:06 +0100
Message-Id: <20231114133007.3662931-7-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231114133007.3662931-1-m.felsch@pengutronix.de>
References: <20231114133007.3662931-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231114_053016_598062_F6256F98 
X-CRM114-Status: UNSURE (   8.35  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 7/8] mci: core: cosmetic cleanup mci_register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Just use one generic 'struct param_d' variable instead of having two.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/mci/mci-core.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 8ce97b5d5cdd..70e367997763 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -2158,7 +2158,7 @@ int mci_register(struct mci_host *host)
 {
 	struct mci *mci;
 	struct device *hw_dev;
-	struct param_d *param_probe, *param_broken_cd;
+	struct param_d *param;
 	int ret;
 
 	mci = xzalloc(sizeof(*mci));
@@ -2203,20 +2203,20 @@ int mci_register(struct mci_host *host)
 
 	dev_info(hw_dev, "registered as %s\n", dev_name(&mci->dev));
 
-	param_probe = dev_add_param_bool(&mci->dev, "probe",
-			mci_set_probe, NULL, &mci->probe, mci);
+	param = dev_add_param_bool(&mci->dev, "probe", mci_set_probe, NULL,
+				   &mci->probe, mci);
 
-	if (IS_ERR(param_probe) && PTR_ERR(param_probe) != -ENOSYS) {
-		ret = PTR_ERR(param_probe);
+	if (IS_ERR(param) && PTR_ERR(param) != -ENOSYS) {
+		ret = PTR_ERR(param);
 		dev_dbg(&mci->dev, "Failed to add 'probe' parameter to the MCI device\n");
 		goto err_unregister;
 	}
 
-	param_broken_cd = dev_add_param_bool(&mci->dev, "broken_cd",
-					     NULL, NULL, &host->broken_cd, mci);
+	param = dev_add_param_bool(&mci->dev, "broken_cd", NULL, NULL,
+				   &host->broken_cd, mci);
 
-	if (IS_ERR(param_broken_cd) && PTR_ERR(param_broken_cd) != -ENOSYS) {
-		ret = PTR_ERR(param_broken_cd);
+	if (IS_ERR(param) && PTR_ERR(param) != -ENOSYS) {
+		ret = PTR_ERR(param);
 		dev_dbg(&mci->dev, "Failed to add 'broken_cd' parameter to the MCI device\n");
 		goto err_unregister;
 	}
-- 
2.39.2




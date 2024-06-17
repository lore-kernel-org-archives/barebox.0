Delivery-date: Mon, 17 Jun 2024 13:42:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAka-007YyK-0p
	for lore@lore.pengutronix.de;
	Mon, 17 Jun 2024 13:42:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAkZ-00083X-KA
	for lore@pengutronix.de; Mon, 17 Jun 2024 13:42:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fZ7Q3fewNIUcPPuSuIV3PioWCDMZ226BgwkQ6avo0ec=; b=C+JROYR7XMssNkjZEKsJQvYYLF
	Coo9m5/e43zU9UT8MAsjUlICXwfmRzSTnyeGwxMW4Qvx9ZUyIxdQ5s1a9DdLhE5JbUVY21n7r1E6c
	92NmWZzSB18Wyvf4NNNjgv+3CDgNmlALp6PAhCnQ32B2HjhTOlnbA5ORY+1phN/2y6aNd7Y21FN/3
	Lyq5V0Xx4NoVF+8Dh/X5Kh+hx1kqIaDBzyRdDuF9iyhV0d2fPaSBVg5NFnFlK7baHBzJBcM5wwBiZ
	V40SU+EAmstTQL13hTcQnIa+/a2VBVJtE2wPLwGSpwZf8PvVBu0/fzf9LGD0TCmPG6T8ylcPdj3ED
	grEb7Z5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAk8-0000000AXEZ-0ZHb;
	Mon, 17 Jun 2024 11:41:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAk5-0000000AXDp-3jpi
	for barebox@lists.infradead.org;
	Mon, 17 Jun 2024 11:41:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sJAk4-0007sj-EJ; Mon, 17 Jun 2024 13:41:44 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sJAk4-002y14-1S; Mon, 17 Jun 2024 13:41:44 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sJAk3-006URJ-35;
	Mon, 17 Jun 2024 13:41:43 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ske@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Jun 2024 13:41:41 +0200
Message-Id: <20240617114142.1546941-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_044145_949842_F3D00A56 
X-CRM114-Status: GOOD (  10.75  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH RESEND 1/2] mci: core: remove dev_add_param_bool error paths
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

dev_add_param_bool fails when the device already has a parameter with
the same name or if there's no memory. The first error can't happen here
and the second won't go unnoticed anyway as something critical is bound
to panic.

Remove thus the error paths, which are never triggered.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> RESEND:
  - add missing prerequisite patch
---
 drivers/mci/mci-core.c | 23 ++++-------------------
 1 file changed, 4 insertions(+), 19 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 9aa0f284fdd3..d40519f124b9 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -2509,7 +2509,6 @@ int mci_register(struct mci_host *host)
 {
 	struct mci *mci;
 	struct device *hw_dev;
-	struct param_d *param;
 	int ret;
 
 	mci = xzalloc(sizeof(*mci));
@@ -2554,23 +2553,11 @@ int mci_register(struct mci_host *host)
 
 	dev_info(hw_dev, "registered as %s\n", dev_name(&mci->dev));
 
-	param = dev_add_param_bool(&mci->dev, "probe", mci_set_probe, NULL,
-				   &mci->probe, mci);
+	dev_add_param_bool(&mci->dev, "probe", mci_set_probe, NULL,
+			   &mci->probe, mci);
 
-	if (IS_ERR(param) && PTR_ERR(param) != -ENOSYS) {
-		ret = PTR_ERR(param);
-		dev_dbg(&mci->dev, "Failed to add 'probe' parameter to the MCI device\n");
-		goto err_unregister;
-	}
-
-	param = dev_add_param_bool(&mci->dev, "broken_cd", NULL, NULL,
-				   &host->broken_cd, mci);
-
-	if (IS_ERR(param) && PTR_ERR(param) != -ENOSYS) {
-		ret = PTR_ERR(param);
-		dev_dbg(&mci->dev, "Failed to add 'broken_cd' parameter to the MCI device\n");
-		goto err_unregister;
-	}
+	dev_add_param_bool(&mci->dev, "broken_cd", NULL, NULL,
+			   &host->broken_cd, mci);
 
 	if (IS_ENABLED(CONFIG_MCI_INFO))
 		mci->dev.info = mci_info;
@@ -2586,8 +2573,6 @@ int mci_register(struct mci_host *host)
 
 	return 0;
 
-err_unregister:
-	unregister_device(&mci->dev);
 err_free:
 	free(mci);
 
-- 
2.39.2




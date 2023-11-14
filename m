Delivery-date: Tue, 14 Nov 2023 14:01:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2t2g-00BI7s-2r
	for lore@lore.pengutronix.de;
	Tue, 14 Nov 2023 14:01:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2t2g-0007oJ-V7
	for lore@pengutronix.de; Tue, 14 Nov 2023 14:01:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9gDLogFqhEu3QQIJUTWDt6y9JGJzq/6ax+eyjI45I0A=; b=ql836ga++MsEv8pcDSHIxRP05n
	VRM2W0q/+Cnh9z/L6Cd696787meMUWwbEH/f1KycCw76OPj6BE+iNlLXD9rnOI32uwsD4gCAylYuT
	kafGg2ENCrgB5RL42Ep1B+Of7za6ntZVQaO/J5lkQVqFQKkzrMIl1Vv+6orIbjFzxs36LkC6zo47s
	RyGle3b9M+s7JCc172iQ5MQ95dObdBWipuAIiSPURhjXQcbkAC3dnI1iBq3y8OtizjeNo4Dz1VHGp
	m+yTNwWDzECVvJgKPs8ePzTAeqoBHrhDwmH0N5wPPgQgJotxsQqj+3t2AQVq4gWXbqcz2FWpdJCr4
	DFX5GqnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2t1C-00Fz7l-1G;
	Tue, 14 Nov 2023 12:59:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2t18-00Fz7N-2K
	for barebox@lists.infradead.org;
	Tue, 14 Nov 2023 12:59:48 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1r2t0z-0006eb-RL
	for barebox@lists.infradead.org; Tue, 14 Nov 2023 13:59:37 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 14 Nov 2023 13:59:31 +0100
Message-Id: <20231114125931.2980297-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231114_045946_776955_C6097A9B 
X-CRM114-Status: UNSURE (   8.56  )
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
Subject: [PATCH] mci: core: add partitioning_completed device parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add mmcX.partitioning_completed parameter so it can be queried by
scripts and board code.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/mci/mci-core.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 70e367997763..d20db925876e 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1968,6 +1968,22 @@ static int of_broken_cd_fixup(struct device_node *root, void *ctx)
 	return 0;
 }
 
+static int mci_get_partition_setting_completed(struct mci *mci)
+{
+	u8 *ext_csd;
+	int ret;
+
+	ext_csd = mci_get_ext_csd(mci);
+	if (IS_ERR(ext_csd))
+		return PTR_ERR(ext_csd);
+
+	ret = ext_csd[EXT_CSD_PARTITION_SETTING_COMPLETED];
+
+	free(ext_csd);
+
+	return ret;
+}
+
 /**
  * Probe an MCI card at the given host interface
  * @param mci MCI device instance
@@ -2079,6 +2095,13 @@ static int mci_card_probe(struct mci *mci)
 			dev_add_param_bool(&mci->dev, "boot_ack",
 					   mci_set_boot_ack, NULL,
 					   &mci->boot_ack_enable, mci);
+
+		ret = mci_get_partition_setting_completed(mci);
+		if (ret < 0)
+			dev_dbg(&mci->dev,
+				"Failed to determine EXT_CSD_PARTITION_SETTING_COMPLETED\n");
+		else
+			dev_add_param_bool_fixed(&mci->dev, "partitioning_completed", ret);
 	}
 
 	dev_dbg(&mci->dev, "SD Card successfully added\n");
-- 
2.39.2




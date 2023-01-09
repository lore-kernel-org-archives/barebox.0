Delivery-date: Mon, 09 Jan 2023 16:21:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEtxf-006ltm-V1
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 16:21:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEtxe-0005Tt-6v
	for lore@pengutronix.de; Mon, 09 Jan 2023 16:21:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0puoJzVQLZPg4NHCoRia23IBUw37OzporayiJyAVeLU=; b=n/PB9cuKnxpMBn4jQOn5CJXIdD
	ZTNnER9LnMBZMjXFf6brQPs1tUHTaO7T/klTh/FXbchTMXPufY+RQmG7YG7+xaRlFQvM7EOlXmy1t
	LJ3lFp4vb8A7bQg0njdlMM3zoJ2zPnEtUCwTeYjREBm/GKPLRHyJ83lxlzkOMmOR0B6FqGcI7UJ2a
	oLcw222ymJLEr7LKJPKcQgQP4mUKT3mO7Rgk/fCntU+VfvPgF0LzCtCgXWPIwvcUgSFmlpYCVLzNl
	p9nJh83AapgJkvgmjO9HFc0YHbpoaVMuAU0crRy8+Hc2jBIxGeRFqJ46CiDNxprK1Ac5VtuCGs7tQ
	QLU7/gmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEtwI-002Bzw-PK; Mon, 09 Jan 2023 15:19:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEtwC-002ByQ-CJ
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 15:19:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pEtwA-00051Z-PQ; Mon, 09 Jan 2023 16:19:46 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEtwA-004scg-4e; Mon, 09 Jan 2023 16:19:46 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEtw9-008gi2-0u; Mon, 09 Jan 2023 16:19:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Jan 2023 16:19:44 +0100
Message-Id: <20230109151944.2070704-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_071948_445210_81B92655 
X-CRM114-Status: GOOD (  11.85  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] regulator: scmi: rename struct scmi_regulator::device_node to of_node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The naming is different than the Linux driver and was only chosen for
symmetry with device_d::device_node. Now that this is renamed to
device:of_node, follow suite in the barebox driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/regulator/scmi-regulator.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/regulator/scmi-regulator.c b/drivers/regulator/scmi-regulator.c
index 22813ce66248..2a007ac620a1 100644
--- a/drivers/regulator/scmi-regulator.c
+++ b/drivers/regulator/scmi-regulator.c
@@ -44,7 +44,7 @@ struct scmi_regulator {
 	struct scmi_device *sdev;
 	struct scmi_protocol_handle *ph;
 	struct regulator_dev rdev;
-	struct device_node *device_node;
+	struct device_node *of_node;
 	struct scmi_reg_desc sdesc;
 };
 
@@ -232,7 +232,7 @@ static int scmi_regulator_common_init(struct scmi_regulator *sreg)
 	 */
 	if (vinfo->negative_volts_allowed) {
 		dev_warn(dev, "Negative voltages NOT supported...skip %s\n",
-			 sreg->device_node->full_name);
+			 sreg->of_node->full_name);
 		return -EOPNOTSUPP;
 	}
 
@@ -278,7 +278,7 @@ static int process_scmi_regulator_of_node(struct scmi_device *sdev,
 	rinfo->sregv[dom]->ph = ph;
 
 	/* get hold of good nodes */
-	rinfo->sregv[dom]->device_node = np;
+	rinfo->sregv[dom]->of_node = np;
 
 	dev_dbg(&sdev->dev,
 		"Found SCMI Regulator entry -- OF node [%d] -> %s\n",
-- 
2.30.2




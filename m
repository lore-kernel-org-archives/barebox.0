Delivery-date: Wed, 28 Sep 2022 10:53:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odSoq-00HCkR-3X
	for lore@lore.pengutronix.de; Wed, 28 Sep 2022 10:53:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odSoo-0005RV-Ti
	for lore@pengutronix.de; Wed, 28 Sep 2022 10:53:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BeKepAohhaf0NeRTKJGzFB0vZEqqFeNPNXL+BGYvF/Q=; b=DL4WPnDZKCXc5w5Lo7RThiJFgU
	0nyuHkB1WZWuGNQ7S7T63dnptf9vnqTngHuCRITXxBbRNZeKJARnSbm2FP8YcBaY1WwgFOj0xXVyE
	Vb/56EKsJ/elJ5F4NXhNy4Z9zNPJYwM0wCIjdBe5Hlb2idmy8YqCcGCgo8c5UESDBGFVPEPkxFsFK
	UrxDgYcz6sHE3jkXDie9bcLqVtHChvF6cRmvk6FKOK6xKiiO0G3anES3PSe27G98j9dfbmLzx7BU6
	HSgSwJBclP5elNmmFOE3vSezuYuxaLgIDRidAd6Os8C7x7y4uWEQyTwsMtdvUT07S4ZtlrapONAPq
	UmPu/5qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odSmX-00F0fg-MY; Wed, 28 Sep 2022 08:51:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odSmS-00F0dB-Ne
	for barebox@lists.infradead.org; Wed, 28 Sep 2022 08:51:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1odSmP-000542-5r; Wed, 28 Sep 2022 10:50:57 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1odSmP-003Nlc-UT; Wed, 28 Sep 2022 10:50:56 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1odSmN-00AuhS-En; Wed, 28 Sep 2022 10:50:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 Sep 2022 10:50:52 +0200
Message-Id: <20220928085052.2599436-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_015100_789911_6F81E9A6 
X-CRM114-Status: GOOD (  13.11  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mfd: axp20x: export axp20x-regulator child for AXP152
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

While the upstream Linux driver doesn't support regulator configuration
for the AXP152, we may need this in barebox for initial regulator setup.
Thus have the MFD driver register the appropriate child device as done
for the other drivers. While at it, pass along the axp20x driver data
object. This is needed, so the regulator driver can query the variant;
so far it was only possible to retrieve the parent regmap and redo the
revision readout.

Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mfd/axp20x.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/mfd/axp20x.c b/drivers/mfd/axp20x.c
index da1e8ce35a7d..0a53eaea7cfa 100644
--- a/drivers/mfd/axp20x.c
+++ b/drivers/mfd/axp20x.c
@@ -141,6 +141,9 @@ static const struct mfd_cell axp152_cells[] = {
 	{
 		.name		= "axp20x-pek",
 	},
+	{
+		.name		= "axp20x-regulator",
+	},
 };
 
 static const struct mfd_cell axp288_cells[] = {
@@ -337,6 +340,8 @@ int axp20x_device_probe(struct axp20x_dev *axp20x)
 				     AXP806_REG_ADDR_EXT_ADDR_SLAVE_MODE);
 	}
 
+	axp20x->dev->priv = axp20x;
+
 	ret = mfd_add_devices(axp20x->dev, axp20x->cells, axp20x->nr_cells);
 	if (ret)
 		return dev_err_probe(axp20x->dev, ret, "failed to add MFD devices\n");
-- 
2.30.2




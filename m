Delivery-date: Wed, 25 Jan 2023 08:55:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKace-001GnZ-Vi
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 08:55:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKacb-0001u1-Rl
	for lore@pengutronix.de; Wed, 25 Jan 2023 08:55:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lNWkK1bJ3p8LMvJ62jD0GQGoUgWXesGtA7Dx7dNdvFk=; b=LJo32G7eFwczdqMsUMeuY7gEmr
	If+7pTcoMR+QcJwTj9GYiO6aHVLdfUeyYGKtHXYQ7fUixGXRShFQaVX1LoR1ejkR57qXnu2E2rtWe
	ft8R42drlRB6ziMnGeNFEG3zduwPCdsNbP8+4GFj4ZpksuSakYTUVCuI7+Tw3f4VIXJo5RYyTGhlX
	FVKbDBUTqFdR8Jx8egU8iISPK/OxoTO4MB4V+Zv0wx+40Z+3/CKuO2FA/pB6Sx8Ji6JNasOvFTsOz
	ezlrXHo7tcKiyJj40KCu4Up8Mp+qAe7/fRDkgcvj37Ght5AM7ijSoeyDwTIgO2wVySoU+lizrQFDi
	8FLBnq1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKab7-006IGL-IU; Wed, 25 Jan 2023 07:53:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKab2-006IFf-OG
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 07:53:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pKaaz-0001fi-62; Wed, 25 Jan 2023 08:53:25 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pKaaz-000HpF-Fl; Wed, 25 Jan 2023 08:53:24 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pKaax-007Nqs-RV; Wed, 25 Jan 2023 08:53:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 25 Jan 2023 08:53:23 +0100
Message-Id: <20230125075323.1759934-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_235328_832199_6EBEE672 
X-CRM114-Status: GOOD (  12.39  )
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
Subject: [PATCH] i2c: implement detect callback for virtual adapter device as well
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For MMCs, we already support detect on both the hardware device and the
mmcX virtual device. Let's do the same for i2c, so users have the option
to do `detect i2c0` instead of `detect 30a30000.i2c@30a30000.of`.

`detect -a` still works as expected, as the detect callback is a no-op
if everything on the bus is already registered.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/i2c/i2c.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 7e1cea49f3b6..4ecf7bb163e6 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -472,6 +472,14 @@ int of_i2c_register_devices_by_node(struct device_node *node)
 }
 
 static int i2c_bus_detect(struct device *dev)
+{
+	struct i2c_adapter *adap = container_of(dev, struct i2c_adapter, dev);
+
+	of_i2c_register_devices(adap);
+	return 0;
+}
+
+static int i2c_hw_detect(struct device *dev)
 {
 	struct i2c_adapter *adap;
 
@@ -712,6 +720,7 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 	}
 
 	adapter->dev.id = adapter->nr;
+	adapter->dev.detect = i2c_bus_detect;
 	dev_set_name(&adapter->dev, "i2c");
 
 	ret = register_device(&adapter->dev);
@@ -726,8 +735,8 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 	hw_dev = adapter->dev.parent;
 	if (hw_dev && dev_of_node(hw_dev)) {
 		if (!hw_dev->detect)
-			hw_dev->detect = i2c_bus_detect;
-		i2c_bus_detect(hw_dev);
+			hw_dev->detect = i2c_hw_detect;
+		i2c_hw_detect(hw_dev);
 	}
 
 	return 0;
-- 
2.30.2




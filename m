Delivery-date: Fri, 12 Dec 2025 16:37:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vU5D3-00AiPN-37
	for lore@lore.pengutronix.de;
	Fri, 12 Dec 2025 16:37:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vU5D3-0005xP-DH
	for lore@pengutronix.de; Fri, 12 Dec 2025 16:37:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2FAdgq+DAOXA1yh/yANa6KzNWFnKhx41574j7IbF6oc=; b=BNEXQlWTkulen/vd0EjBXYRYPc
	m6JWU3LOhK+OkFh9gMcD+eijZo0m8668Es9X90uh5gEoluH/DsoI3aGR8foXG3Ihe/k2uI52tRW3X
	N2olTD6LoRyxqqmMjmqPznKJ19YU6z2EHQh5wlY+iSBYZkad34of8xtKWMtnKWhRKmIl0TCoLGTiM
	zXXegWLwqJXfARNFqPoqAWX2VosjJzFZ2alesv7HmH7HKg1sc7nFlv2is3Fj703PkUhi66wQXz81d
	dqevjCT0A4xRb2lVX/rNvxDjEadgQtf8Z2GTwVmFEoIGbzfVFsuIPlZfEOLEUsVHuv2dKQozGiFPK
	ZJo2q7Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU5CT-00000000kVn-3FKI;
	Fri, 12 Dec 2025 15:36:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU5CQ-00000000kVE-1isv
	for barebox@lists.infradead.org;
	Fri, 12 Dec 2025 15:36:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU5CO-0005oL-Hq; Fri, 12 Dec 2025 16:36:52 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU5CO-005Jm2-1B;
	Fri, 12 Dec 2025 16:36:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU5CO-00000001b8q-14mz;
	Fri, 12 Dec 2025 16:36:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 12 Dec 2025 16:36:20 +0100
Message-ID: <20251212153649.365215-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_073654_447340_029285F8 
X-CRM114-Status: GOOD (  10.25  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] i2c: omap: fix probe on am335x
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The AM335x uses ti,omap4-i2c as compatible for the I2C device tree
nodes, but that compatible unlike its brethern has no driver data as
it's determined using the machine compatible in the probe function
instead.

device_get_match_data() returning NULL is thus expected and should not
lead to an immediate error.

Fixes: 20d87123a638 ("treewide: replace dev_get_drvdata with device_get_match_data")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
I manually verified all drivers calling device_get_match_data() and I
believe this to be the only such bug.
---
 drivers/i2c/busses/i2c-omap.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index 29378a96d722..c45483579250 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -1076,14 +1076,15 @@ i2c_omap_probe(struct device *pdev)
 	}
 
 	i2c_data = device_get_match_data(pdev);
-	if (!i2c_data)
-		return -ENODEV;
 
 	if (of_machine_is_compatible("ti,am33xx"))
 		i2c_data = &am33xx_data;
 	if (of_machine_is_compatible("ti,omap4"))
 		i2c_data = &omap4_data;
 
+	if (!i2c_data)
+		return -EINVAL;
+
 	i2c_omap->data = i2c_data;
 	i2c_omap->reg_shift = (i2c_data->flags >>
 					OMAP_I2C_FLAG_BUS_SHIFT__SHIFT) & 3;
-- 
2.47.3




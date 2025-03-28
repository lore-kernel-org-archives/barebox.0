Delivery-date: Fri, 28 Mar 2025 09:36:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ty5Ci-005DWr-1y
	for lore@lore.pengutronix.de;
	Fri, 28 Mar 2025 09:36:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ty5Ci-0000jq-0w
	for lore@pengutronix.de; Fri, 28 Mar 2025 09:36:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1Gj+32n6iK7Pmj3hXZLDOuVBQ8quxhgeRj+XZ7ZTil0=; b=eU6YN+j7JLvdGjYXMRRG4ipiv1
	yNxBC/UE5AGv4hwY81uDS5I35A8zs+2kgzlCWZxPpyfRlgn71Chs2ggYb2F1+tsWDEdjpO/+olslM
	kGCjFEQzPWDZ07cNKNy4D58ZbMkWJod4/OISaVGBKx1VgtHAV7QdKANEQWtPZ38c2z/7yyAlwp6uG
	hreTY5ztuxBB8P1sEMj8nNjyED7fg57jqB2+ZQzG/8famrLA2oFbetC93NQjHjZLsZXo0YdHv9dzU
	ZTsxck9wHkR8NUi8zqMcjwgCBBVgMevImFZ1TmHlB1qfkF1QoFq1E87H2pu+tTWZi5tX6pavO4hYH
	Z3sBU8Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty5CE-0000000CwAc-14EB;
	Fri, 28 Mar 2025 08:36:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty5Bv-0000000Cw7r-3LSp
	for barebox@lists.infradead.org;
	Fri, 28 Mar 2025 08:35:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ty5Bu-0000SI-Fz; Fri, 28 Mar 2025 09:35:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ty5Bu-0024MQ-0z;
	Fri, 28 Mar 2025 09:35:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ty5Bu-0029u6-0g;
	Fri, 28 Mar 2025 09:35:50 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 28 Mar 2025 09:35:47 +0100
Message-Id: <20250328083549.514506-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250328_013551_840603_CEE7761A 
X-CRM114-Status: GOOD (  10.07  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] i2c: muxes: pca954x: switch to device_get_match_data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

dev_get_drvdata has other semantics in barebox than in Linux and should
be removed eventually. Drop it in favor of device_get_match_data, which
avoids common bugs with pointer width difference casts.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/i2c/muxes/i2c-mux-pca954x.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/i2c/muxes/i2c-mux-pca954x.c b/drivers/i2c/muxes/i2c-mux-pca954x.c
index 6c21b92860f0..4a926fb92b17 100644
--- a/drivers/i2c/muxes/i2c-mux-pca954x.c
+++ b/drivers/i2c/muxes/i2c-mux-pca954x.c
@@ -186,7 +186,6 @@ static int pca954x_probe(struct device *dev)
 	struct i2c_adapter *adap = to_i2c_adapter(client->dev.parent);
 	int num;
 	struct pca954x *data;
-	uintptr_t tmp;
 	int ret = -ENODEV;
 	int gpio;
 	bool idle_disconnect;
@@ -210,10 +209,7 @@ static int pca954x_probe(struct device *dev)
 	if (i2c_smbus_write_byte(client, 0) < 0)
 		goto exit_free;
 
-	ret = dev_get_drvdata(dev, (const void **)&tmp);
-	data->type = tmp;
-	if (ret)
-		goto exit_free;
+	data->type = (uintptr_t)device_get_match_data(dev);
 
 	idle_disconnect = of_property_read_bool(dev->of_node,
 						"i2c-mux-idle-disconnect");
-- 
2.39.5




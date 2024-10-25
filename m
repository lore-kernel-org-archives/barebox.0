Delivery-date: Fri, 25 Oct 2024 10:51:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4G2H-000Ys5-1t
	for lore@lore.pengutronix.de;
	Fri, 25 Oct 2024 10:51:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4G2I-0001OL-7C
	for lore@pengutronix.de; Fri, 25 Oct 2024 10:51:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V2ejSYOaW+HCmfstJ+S09pc7OpUrJSHHgu+fPAeD/58=; b=cQwVUgyVom8QdtJ6mr+Y8cDZ4L
	6MpO/zSZXrcxVL1K/pWg19wrMQ0rFmsO/oj69tyoS7Q4YvSUN6Jr9zjq8C/E5ri2X0Echx5E2XaoT
	60gPnQsBic8HUeAb63yglKV0faim505QCoVjT3YNbhM24QFaczoO7c+0349lD1WvJ+HxrtnDfvd81
	uho51DnMSBF4zkC72r9c6COn59yFTCLVP75X35Bh12EHMs22WBcU30uG6n4B4QvLEMXt2CHdgoLoa
	7T9SeXYZE5AuJ5ioB0OCnBWv9T7lenSX8KoVffyFkOmIvRor9jEHfOQo8a0DbL65hcFYSrJputqsL
	B96xtiuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4G1r-000000032u8-1iR1;
	Fri, 25 Oct 2024 08:50:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4G0D-000000032Kv-1T8P
	for barebox@lists.infradead.org;
	Fri, 25 Oct 2024 08:49:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4G0C-0000zN-1Y; Fri, 25 Oct 2024 10:49:00 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4G0B-000KrU-2h;
	Fri, 25 Oct 2024 10:48:59 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4G0B-008U4a-2W;
	Fri, 25 Oct 2024 10:48:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 25 Oct 2024 10:49:01 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241025-phy-class-v1-3-24bf51365a08@pengutronix.de>
References: <20241025-phy-class-v1-0-24bf51365a08@pengutronix.de>
In-Reply-To: <20241025-phy-class-v1-0-24bf51365a08@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729846139; l=1933;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=22Gwg3Mhc4cmfyiB/lV6PHU6OZtt8Hv//leHd7gV5TQ=;
 b=BpRMihCKoRHcXnSuEb7wKD4XKGVGqMuG7QnN2LAyYwGamHpTpAhPZRfET7j7AlLzML117qDg+
 sFPgg6NinTGBNVndKPt2x6mOpTElk6emdWIaftpaOPgBNuNes1OPTT+
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241025_014901_428695_F76CB285 
X-CRM114-Status: GOOD (  12.38  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] phy: add of_phy_simple_xlate()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

of_phy_provider_register() needs a of_xlate function. For simple
one-phy-per-device-node type phys of_phy_simple_xlate() can be used.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/phy/phy-core.c  | 25 +++++++++++++++++++++++++
 include/linux/phy/phy.h |  3 +++
 2 files changed, 28 insertions(+)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index cd9b59f1fd..f876dc2dea 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -254,6 +254,31 @@ static struct phy_provider *of_phy_provider_lookup(struct device_node *node)
 	return ERR_PTR(-EPROBE_DEFER);
 }
 
+/**
+ * of_phy_simple_xlate() - returns the phy instance from phy provider
+ * @dev: the PHY provider device
+ * @args: of_phandle_args (not used here)
+ *
+ * Intended to be used by phy provider for the common case where #phy-cells is
+ * 0. For other cases where #phy-cells is greater than '0', the phy provider
+ * should provide a custom of_xlate function that reads the *args* and returns
+ * the appropriate phy.
+ */
+struct phy *of_phy_simple_xlate(struct device *dev,
+				const struct of_phandle_args *args)
+{
+	struct phy *phy;
+
+	for_each_phy(phy) {
+		if (args->np != phy->dev.of_node)
+			continue;
+
+		return phy;
+	}
+
+	return ERR_PTR(-ENODEV);
+}
+
 /**
  * _of_phy_get() - lookup and obtain a reference to a phy by phandle
  * @np: device_node for which to get the phy
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index e861e50f76..dd28c6eeef 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -147,6 +147,9 @@ static inline void *phy_get_drvdata(struct phy *phy)
 	return phy->dev.priv;
 }
 
+struct phy *of_phy_simple_xlate(struct device *dev,
+				const struct of_phandle_args *args);
+
 #if IS_ENABLED(CONFIG_GENERIC_PHY)
 int phy_init(struct phy *phy);
 int phy_exit(struct phy *phy);

-- 
2.39.5




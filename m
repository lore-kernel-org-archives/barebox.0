Delivery-date: Mon, 05 Jun 2023 14:59:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q69ns-00BnAx-Gk
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 14:59:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q69nq-0008SV-1E
	for lore@pengutronix.de; Mon, 05 Jun 2023 14:59:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BjJdTnV99akta3WDXLrmBXlHXgymzY4TTketnBxS4xo=; b=bE3o2HJIybOQqaO9uiZPUpd6aR
	Z11IAhjT/lQ8+kj8jMKkq7i/2qTnRH+jqwLuEhLzoKYxNBSSeZy+ZzkNDg4H22V/uxWkCkhdQFcGh
	tn3O5plI0acOgcu0psjB4eKwzVk1eAE5k2/NNhP8C2jmfCsZY5n2EVS7JLO2LCZLPZ5r3fpa7NdVr
	nyVyC+e7enLFB2Biivl9gG7Cnm7DhR6KSqjSPKj+4Z0mPFslGAFPoiJbxz+z567DE4EwD3DSQAYAe
	k65CTt5tOMaSOUrv8A2mD9cjwfjuGKdI+bhN6xiAhR2bgWh0oQmArvnBSNBlcF5W+MwBcpy7m7SLJ
	z4xPw6tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q69mb-00FX3Q-32;
	Mon, 05 Jun 2023 12:58:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q69mZ-00FX18-1O
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 12:58:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1q69mU-0008H2-9S; Mon, 05 Jun 2023 14:57:54 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1q69mT-005HEq-KI; Mon, 05 Jun 2023 14:57:53 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1q69mS-00FNXC-UU; Mon, 05 Jun 2023 14:57:52 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Mon,  5 Jun 2023 14:57:47 +0200
Message-Id: <20230605125748.3665121-1-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_055759_463341_9D722BB6 
X-CRM114-Status: GOOD (  10.47  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 1/2] net: phy: add phy_modify_mmd_indirect convenience function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add a read-modify-write convenience helper similar to phy_modify() for
setting single bits in MMD registers.

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
PATCH v1 -> v2: new in v2

 drivers/net/phy/phy.c | 23 +++++++++++++++++++++++
 include/linux/phy.h   |  2 ++
 2 files changed, 25 insertions(+)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 54dbbca7255a..cbdd5bbfb607 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -882,6 +882,29 @@ void phy_write_mmd_indirect(struct phy_device *phydev, int prtad, int devad,
 	phy_write(phydev, MII_MMD_DATA, data);
 }
 
+/**
+ * phy_modify_mmd_indirect - Convenience function for modifying a MMD register
+ * @phydev: phy device
+ * @prtad: MMD Address
+ * @devad: MMD DEVAD
+ * @mask: bit mask of bits to clear
+ * @set: new value of bits set in @mask
+ *
+ */
+int phy_modify_mmd_indirect(struct phy_device *phydev, int prtad, int devad,
+				   u16 mask, u16 set)
+{
+	int ret;
+
+	ret = phy_read_mmd_indirect(phydev, prtad, devad);
+	if (ret < 0)
+		return ret;
+
+	phy_write_mmd_indirect(phydev, prtad, devad, (ret & ~mask) | set);
+
+	return 0;
+}
+
 int genphy_config_init(struct phy_device *phydev)
 {
 	int val;
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 5c3ad91d5ecc..509bf72de918 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -409,6 +409,8 @@ int phy_scan_fixups(struct phy_device *phydev);
 int phy_read_mmd_indirect(struct phy_device *phydev, int prtad, int devad);
 void phy_write_mmd_indirect(struct phy_device *phydev, int prtad, int devad,
 				   u16 data);
+int phy_modify_mmd_indirect(struct phy_device *phydev, int prtad, int devad,
+				    u16 mask, u16 set);
 
 static inline bool phy_acquired(struct phy_device *phydev)
 {
-- 
2.39.2




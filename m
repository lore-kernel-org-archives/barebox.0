Delivery-date: Fri, 11 Aug 2023 12:28:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUPNY-00GSae-9E
	for lore@lore.pengutronix.de; Fri, 11 Aug 2023 12:28:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUPNV-0007U1-5L
	for lore@pengutronix.de; Fri, 11 Aug 2023 12:28:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w/ds1Yu4Zjqhoiw0Vd9OkXPwqyUf5BuLpu13IZiDgIM=; b=AukcyF5obQ+sK+oO9EQzljcc+O
	pZ581nKp6yssVvLv71XZMlt9Wfr1mEQezofiaVMReB8E4+qWYcUxGxOk2+UMqr2x13Akt4zcGxtRv
	dFR2FOrqttAJgkKE1AygpQ6o+gfIKQdnuGo6mPLbz5MhqBVrMiafNcasuhThkLWDVH4iQ0VtDiXGg
	k+JgU57Tt1w9yT/sw3R9IsiEembLUu/7nIthzGkRY7q38ksvldFFg5v0Rak2aY4+Fu9vAbOh1cWUq
	QhBBMgmGtinGdrJCQPTv6YvtKTtVR2k62J3h8kh8oN1KffIgyt9BqiEq0y8lOxng8nf/NtnJUEBdx
	GTTouBew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUPMY-00ADKX-1U;
	Fri, 11 Aug 2023 10:27:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUPMI-00AD03-1F
	for barebox@lists.infradead.org;
	Fri, 11 Aug 2023 10:27:12 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qUPMD-00073K-Ga
	for barebox@lists.infradead.org; Fri, 11 Aug 2023 12:27:01 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 11 Aug 2023 12:26:49 +0200
Message-Id: <20230811102657.271931-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230811102657.271931-1-m.felsch@pengutronix.de>
References: <20230811102657.271931-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230811_032706_671391_52BD8B37 
X-CRM114-Status: GOOD (  13.73  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 03/11] net: phy: fix struct member comments
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Nothing special just add the missing @ which is useful for the
documentation generation.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- new patch

 include/linux/phy.h | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/include/linux/phy.h b/include/linux/phy.h
index 509bf72de918..fee3868d38f9 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -143,12 +143,12 @@ int mdiobus_write(struct mii_bus *bus, int addr, u32 regnum, u16 val);
 
 /* phy_device: An instance of a PHY
  *
- * bus: Pointer to the bus this PHY is on
- * dev: driver model device structure for this PHY
- * phy_id: UID for this device found during discovery
- * dev_flags: Device-specific flags used by the PHY driver.
- * addr: Bus address of PHY
- * attached_dev: The attached enet driver's device instance ptr
+ * @bus: Pointer to the bus this PHY is on
+ * @dev: driver model device structure for this PHY
+ * @phy_id: UID for this device found during discovery
+ * @dev_flags: Device-specific flags used by the PHY driver.
+ * @addr: Bus address of PHY
+ * @attached_dev: The attached enet driver's device instance ptr
  *
  * speed, duplex, pause, supported, advertising, and
  * autoneg are used like in mii_if_info
@@ -202,11 +202,11 @@ struct phy_device {
 
 /* struct phy_driver: Driver structure for a particular PHY type
  *
- * phy_id: The result of reading the UID registers of this PHY
+ * @phy_id: The result of reading the UID registers of this PHY
  *   type, and ANDing them with the phy_id_mask.  This driver
  *   only works for PHYs with IDs which match this field
- * phy_id_mask: Defines the important bits of the phy_id
- * features: A list of features (speed, duplex, etc) supported
+ * @phy_id_mask: Defines the important bits of the phy_id
+ * @features: A list of features (speed, duplex, etc) supported
  *   by this PHY
  * @driver_data: Static driver data
  *
-- 
2.39.2




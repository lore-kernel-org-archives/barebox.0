Delivery-date: Thu, 04 Jan 2024 12:23:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLLpK-003Sy4-0q
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 12:23:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLLpJ-0006nW-42
	for lore@pengutronix.de; Thu, 04 Jan 2024 12:23:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rbGczkcGyEHE2iX0UXVdyjxud3KynqWOX2uPiiHcZ/U=; b=h1qXBCql+gUz934yGEadxXU7W5
	IHZemiqKM1lpHbYtNcFrDVli20hrt5T1ntVCQHdWq6AXFVMEnls1a/0WqdTlNgkjuOxDrVUEZqK5H
	ew3jTChWY5EMiWu5npMEeY6ZFtwLJiKkyosI1FRJoG+EKy6OBKHofbVbX+z45hM9VN0cZLEhKAJxj
	91qgWNnK9q9uVZFIUULc+CJVkX9qUlWecbiOBc0piT/y6rFsH9xQ3iFqFaABy1aYrPdjijWkSOHkh
	y1igHbmOye9wYa2PRrWqmqX3fDxL+6Eq7kmqk+n4P2ZH/H2wGdKIle1Upur//qSynhngLGHJoMkC7
	KyaKQy2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLLoJ-00DhYK-21;
	Thu, 04 Jan 2024 11:22:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLLoE-00DhUS-2D
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 11:22:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLLoB-0006Xj-58; Thu, 04 Jan 2024 12:22:43 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rLLoA-000Klj-Oq; Thu, 04 Jan 2024 12:22:42 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rLLoA-0049lX-29;
	Thu, 04 Jan 2024 12:22:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 Jan 2024 12:22:40 +0100
Message-Id: <20240104112241.989839-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_032246_744790_A90F0A66 
X-CRM114-Status: GOOD (  10.49  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,UPPERCASE_50_75 autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] net/phy: sync phy_interface_t types with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This syncs the phy interface modes with Linux as of linux-6.7-rc7.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/phy.h | 55 +++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 51 insertions(+), 4 deletions(-)

diff --git a/include/linux/phy.h b/include/linux/phy.h
index d68ee5665a..7da4f94e0e 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -36,7 +36,46 @@
 #define PHY_GBIT_FEATURES       (PHY_BASIC_FEATURES | \
 				 PHY_1000BT_FEATURES)
 
-/* Interface Mode definitions */
+/**
+ * enum phy_interface_t - Interface Mode definitions
+ *
+ * @PHY_INTERFACE_MODE_NA: Not Applicable - don't touch
+ * @PHY_INTERFACE_MODE_INTERNAL: No interface, MAC and PHY combined
+ * @PHY_INTERFACE_MODE_MII: Media-independent interface
+ * @PHY_INTERFACE_MODE_GMII: Gigabit media-independent interface
+ * @PHY_INTERFACE_MODE_SGMII: Serial gigabit media-independent interface
+ * @PHY_INTERFACE_MODE_TBI: Ten Bit Interface
+ * @PHY_INTERFACE_MODE_REVMII: Reverse Media Independent Interface
+ * @PHY_INTERFACE_MODE_RMII: Reduced Media Independent Interface
+ * @PHY_INTERFACE_MODE_REVRMII: Reduced Media Independent Interface in PHY role
+ * @PHY_INTERFACE_MODE_RGMII: Reduced gigabit media-independent interface
+ * @PHY_INTERFACE_MODE_RGMII_ID: RGMII with Internal RX+TX delay
+ * @PHY_INTERFACE_MODE_RGMII_RXID: RGMII with Internal RX delay
+ * @PHY_INTERFACE_MODE_RGMII_TXID: RGMII with Internal RX delay
+ * @PHY_INTERFACE_MODE_RTBI: Reduced TBI
+ * @PHY_INTERFACE_MODE_SMII: Serial MII
+ * @PHY_INTERFACE_MODE_XGMII: 10 gigabit media-independent interface
+ * @PHY_INTERFACE_MODE_XLGMII:40 gigabit media-independent interface
+ * @PHY_INTERFACE_MODE_MOCA: Multimedia over Coax
+ * @PHY_INTERFACE_MODE_PSGMII: Penta SGMII
+ * @PHY_INTERFACE_MODE_QSGMII: Quad SGMII
+ * @PHY_INTERFACE_MODE_TRGMII: Turbo RGMII
+ * @PHY_INTERFACE_MODE_100BASEX: 100 BaseX
+ * @PHY_INTERFACE_MODE_1000BASEX: 1000 BaseX
+ * @PHY_INTERFACE_MODE_2500BASEX: 2500 BaseX
+ * @PHY_INTERFACE_MODE_5GBASER: 5G BaseR
+ * @PHY_INTERFACE_MODE_RXAUI: Reduced XAUI
+ * @PHY_INTERFACE_MODE_XAUI: 10 Gigabit Attachment Unit Interface
+ * @PHY_INTERFACE_MODE_10GBASER: 10G BaseR
+ * @PHY_INTERFACE_MODE_25GBASER: 25G BaseR
+ * @PHY_INTERFACE_MODE_USXGMII:  Universal Serial 10GE MII
+ * @PHY_INTERFACE_MODE_10GKR: 10GBASE-KR - with Clause 73 AN
+ * @PHY_INTERFACE_MODE_QUSGMII: Quad Universal SGMII
+ * @PHY_INTERFACE_MODE_1000BASEKX: 1000Base-KX - with Clause 73 AN
+ * @PHY_INTERFACE_MODE_MAX: Book keeping
+ *
+ * Describes the interface between the MAC and PHY.
+ */
 typedef enum {
 	PHY_INTERFACE_MODE_NA,
 	PHY_INTERFACE_MODE_INTERNAL,
@@ -54,17 +93,25 @@ typedef enum {
 	PHY_INTERFACE_MODE_RTBI,
 	PHY_INTERFACE_MODE_SMII,
 	PHY_INTERFACE_MODE_XGMII,
+	PHY_INTERFACE_MODE_XLGMII,
 	PHY_INTERFACE_MODE_MOCA,
+	PHY_INTERFACE_MODE_PSGMII,
 	PHY_INTERFACE_MODE_QSGMII,
 	PHY_INTERFACE_MODE_TRGMII,
+	PHY_INTERFACE_MODE_100BASEX,
 	PHY_INTERFACE_MODE_1000BASEX,
 	PHY_INTERFACE_MODE_2500BASEX,
+	PHY_INTERFACE_MODE_5GBASER,
 	PHY_INTERFACE_MODE_RXAUI,
 	PHY_INTERFACE_MODE_XAUI,
-	/* 10GBASE-KR, XFI, SFI - single lane 10G Serdes */
+	/* 10GBASE-R, XFI, SFI - single lane 10G Serdes */
+	PHY_INTERFACE_MODE_10GBASER,
+	PHY_INTERFACE_MODE_25GBASER,
+	PHY_INTERFACE_MODE_USXGMII,
+	/* 10GBASE-KR - with Clause 73 AN */
 	PHY_INTERFACE_MODE_10GKR,
-	PHY_INTERFACE_MODE_SGMII_2500,
-	PHY_INTERFACE_MODE_NONE,
+	PHY_INTERFACE_MODE_QUSGMII,
+	PHY_INTERFACE_MODE_1000BASEKX,
 	PHY_INTERFACE_MODE_MAX,
 } phy_interface_t;
 
-- 
2.39.2




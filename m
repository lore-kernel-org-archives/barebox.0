Delivery-date: Wed, 20 Sep 2023 13:24:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qivJJ-004Ze5-O0
	for lore@lore.pengutronix.de; Wed, 20 Sep 2023 13:24:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qivJH-0004xx-A8
	for lore@pengutronix.de; Wed, 20 Sep 2023 13:24:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XPfGU95BG+hBA32bVBpzS5bamsB2buC8pIbyw04sX7o=; b=et/FVLL7phyxJyr20QS5q9Enqy
	9G6Rtlp+JnIOuRZTMHqZMcKo/rWCV6jNXymv5cH7LCMCzdXppIkG+Qzrhj9Xo3b9Qoi8pPRsH0Eew
	T9fieGMWXmV2XNboXHcdOsuphMhwFQOwy1fEEEg7aUuWrewCEpvBfuDzOZuJYsYiK9/rzCpjP8Rrc
	U8hSGG15u2jxE4pDJjJDDs41dgV0GnOVQBcjb3X/H9lhNu0KYdqYgVBfq7/ppyjfoP0RSvLIgLgEG
	0ZAMSwoocMuCtoUtZKRZ42BeSOpq4Xs7NgWAa8ghXr2yy8bKWmY6quS71gRHU291kb5n044zTE0RL
	Yh6kQ4fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qivIH-002rMF-09;
	Wed, 20 Sep 2023 11:22:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qivIE-002rLW-2i
	for barebox@lists.infradead.org;
	Wed, 20 Sep 2023 11:22:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qivID-0004ih-Kn; Wed, 20 Sep 2023 13:22:53 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qivID-007ftI-8c; Wed, 20 Sep 2023 13:22:53 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qivID-00Bfxe-00; Wed, 20 Sep 2023 13:22:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 20 Sep 2023 13:22:51 +0200
Message-Id: <20230920112252.2782897-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_042254_883683_A45B76CD 
X-CRM114-Status: UNSURE (   9.67  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] net: phy: Add phy_(set|clear)_bits_mmd()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Provide phy_set_bits_mmd() and phy_clear_bits() for easier code adoption
from the kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/phy.h | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/include/linux/phy.h b/include/linux/phy.h
index bb728dfaf8..d68ee5665a 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -422,6 +422,34 @@ int phy_modify_mmd(struct phy_device *phydev, int devad, u32 regnum,
 int phy_modify_mmd_changed(struct phy_device *phydev, int devad, u32 regnum,
 			   u16 mask, u16 set);
 
+/**
+ * phy_set_bits_mmd - Convenience function for setting bits in a register
+ * on MMD
+ * @phydev: the phy_device struct
+ * @devad: the MMD containing register to modify
+ * @regnum: register number to modify
+ * @val: bits to set
+ */
+static inline int phy_set_bits_mmd(struct phy_device *phydev, int devad,
+		u32 regnum, u16 val)
+{
+	return phy_modify_mmd(phydev, devad, regnum, 0, val);
+}
+
+/**
+ * phy_clear_bits_mmd - Convenience function for clearing bits in a register
+ * on MMD
+ * @phydev: the phy_device struct
+ * @devad: the MMD containing register to modify
+ * @regnum: register number to modify
+ * @val: bits to clear
+ */
+static inline int phy_clear_bits_mmd(struct phy_device *phydev, int devad,
+		u32 regnum, u16 val)
+{
+	return phy_modify_mmd(phydev, devad, regnum, val, 0);
+}
+
 static inline bool phy_acquired(struct phy_device *phydev)
 {
 	return phydev && phydev->bus && slice_acquired(&phydev->bus->slice);
-- 
2.39.2




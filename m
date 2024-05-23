Delivery-date: Thu, 23 May 2024 16:41:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sA9dD-00FH9u-2f
	for lore@lore.pengutronix.de;
	Thu, 23 May 2024 16:41:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sA9dD-0006Sw-7q
	for lore@pengutronix.de; Thu, 23 May 2024 16:41:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=79tvNtW6F+GfW3rIGbT7ZG8lF/xJeowcpWHCd16fACg=; b=K0x0g8EDYKOaY/WmF2HD4o9cUz
	pEJomxgcY2QGSyFmp4djRWkUmWhYPQiXyzPMz/mU6PBEVIMoIvLtYCPTWgBMZnmWjmSLuIlkzwYVN
	Jg07ZMVuSeEA/OAEtpmZgmSsdMn1qdlVZmRQTOpxKokNWP1J37/WRXS8g/4eQYzZzX//WB8CjF6Ns
	ZFyvc7U2SSWvPWCJyui9lJdcytZi6H9l5ruDRUBJh5oEm8tjKn0iZwW5GqWeIQI9Xa+WM6kSYpabm
	ce51/JfHR0yD07DJp8ZNRX5DZUbTPneXf+ZaH+z7hCmszCSdSQxWNHAkmk7jVqig7UWZ0jAAQn/C+
	Gh+zAuJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA9ca-00000006WMa-2GYq;
	Thu, 23 May 2024 14:40:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA9cV-00000006WL0-16wG
	for barebox@lists.infradead.org;
	Thu, 23 May 2024 14:40:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sA9cQ-00065H-UD; Thu, 23 May 2024 16:40:34 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sA9cQ-002fq4-HA; Thu, 23 May 2024 16:40:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sA9cQ-0078ww-1Z;
	Thu, 23 May 2024 16:40:34 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 23 May 2024 16:40:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240523-feature-dp83867-soft-reset-v1-2-428d15168dfe@pengutronix.de>
References: <20240523-feature-dp83867-soft-reset-v1-0-428d15168dfe@pengutronix.de>
In-Reply-To: <20240523-feature-dp83867-soft-reset-v1-0-428d15168dfe@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_074039_338321_AB222E77 
X-CRM114-Status: GOOD (  11.72  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] net: phy: document core PHY structures
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a port of linux commit 4069a572d423b73919ae40a500dfc4b10f8a6f32
("net: phy: Document core PHY structures"), that copies the Doxygen
comments for the PHY structure where applicable.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 include/linux/phy.h | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/include/linux/phy.h b/include/linux/phy.h
index a6b96a5984..ef25dec033 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -280,36 +280,38 @@ struct phy_driver {
 	 */
 	int (*soft_reset)(struct phy_device *phydev);
 
-	/*
-	 * Called to initialize the PHY,
+	/**
+	 * @config_init: Called to initialize the PHY,
 	 * including after a reset
 	 */
 	int (*config_init)(struct phy_device *phydev);
 
-	/*
-	 * Called during discovery.  Used to set
+	/**
+	 * @probe: Called during discovery.  Used to set
 	 * up device-specific structures, if any
 	 */
 	int (*probe)(struct phy_device *phydev);
 
-	/*
-	 * Configures the advertisement and resets
+	/**
+	 * @config_aneg: Configures the advertisement and resets
 	 * autonegotiation if phydev->autoneg is on,
 	 * forces the speed to the current settings in phydev
 	 * if phydev->autoneg is off
 	 */
 	int (*config_aneg)(struct phy_device *phydev);
 
-	/* Determines the auto negotiation result */
+	/** @aneg_done: Determines the auto negotiation result */
 	int (*aneg_done)(struct phy_device *phydev);
 
-	/* Determines the negotiated speed and duplex */
+	/** @read_status: Determines the negotiated speed and duplex */
 	int (*read_status)(struct phy_device *phydev);
 
-	/* Clears up any memory if needed */
+	/** @remove: Clears up any memory if needed */
 	void (*remove)(struct phy_device *phydev);
 
+	/** @read_page: Return the current PHY register page number */
 	int (*read_page)(struct phy_device *phydev);
+	/** @write_page: Set the current PHY register page number */
 	int (*write_page)(struct phy_device *phydev, int page);
 
 	struct driver	 drv;

-- 
2.39.2




Delivery-date: Fri, 11 Aug 2023 12:28:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUPNl-00GSea-1s
	for lore@lore.pengutronix.de; Fri, 11 Aug 2023 12:28:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUPNj-0007Zw-7B
	for lore@pengutronix.de; Fri, 11 Aug 2023 12:28:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6dyVKO7lOJkznOSNMl2Tpe3u1V9ysNUIaxMGdX5w73I=; b=s2VkM+kcG+MuQTV35XM1CeCeL0
	65e3vrw9e1ut297ENCmi7EC81HH/Cuk10ohwoM2kFqzlS9v94ArUS8Oz2RW1ZnrpKBXKKxVp8cX7Y
	EF4J/oFdJNqdl5kyZZI/inzA1waQ25V49JG8md6aPueHvTwylVDdtLJ/iyDmk7DIOKrq/TjVrYQP+
	SndPvVSy6WebmoXhZEe3DoKy9oCagC1eVbiTX4BVsXqgXhwETOhnH7HFhRnAGw2nbD1zOXAcJ2Fst
	pu09bSKNu7+KBkRiw5wKTe5dbOUDH4B3KlEqTb0SSxvVAFkzqAIyDUG8vBwRHiPlYHsowFHVUwvPd
	xHUJiyzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUPMZ-00ADMz-2c;
	Fri, 11 Aug 2023 10:27:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUPML-00AD1G-04
	for barebox@lists.infradead.org;
	Fri, 11 Aug 2023 10:27:12 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qUPME-00073K-RM
	for barebox@lists.infradead.org; Fri, 11 Aug 2023 12:27:02 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 11 Aug 2023 12:26:57 +0200
Message-Id: <20230811102657.271931-11-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230811102657.271931-1-m.felsch@pengutronix.de>
References: <20230811102657.271931-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230811_032709_060769_2945619F 
X-CRM114-Status: GOOD (  14.13  )
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
Subject: [PATCH v2 11/11] net: phy: at803x: disable extended next page bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This commit ports Linux commit:

| commit 3c51fa5d2afe7a4909b53af5019635326389dd29
| Author: Russell King <rmk+kernel@armlinux.org.uk>
| Date:   Tue Jan 12 22:59:43 2021 +0000
|
|     net: phy: ar803x: disable extended next page bit
|
|     This bit is enabled by default and advertises support for extended
|     next page support.  XNP is only needed for 10GBase-T and MultiGig
|     support which is not supported. Additionally, Cisco MultiGig switches
|     will read this bit and attempt 10Gb negotiation even though Next Page
|     support is disabled. This will cause timeouts when the interface is
|     forced to 100Mbps and auto-negotiation will fail. The interfaces are
|     only 1000Base-T and supporting auto-negotiation for this only requires
|     the Next Page bit to be set.
|
|     Taken from:
|     https://github.com/SolidRun/linux-stable/commit/7406c5244b7ea6bc17a2afe8568277a8c4b126a9
|     and adapted to mainline kernels by rmk.
|
|     Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
|     Reviewed-by: Andrew Lunn <andrew@lunn.ch>
|     Link: https://lore.kernel.org/r/E1kzSdb-000417-FJ@rmk-PC.armlinux.org.uk
|     Signed-off-by: Jakub Kicinski <kuba@kernel.org>

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v2
- add afa's rb

 drivers/net/phy/at803x.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
index b9e11025b86c..8d6b879a27ab 100644
--- a/drivers/net/phy/at803x.c
+++ b/drivers/net/phy/at803x.c
@@ -303,7 +303,13 @@ static int at803x_config_init(struct phy_device *phydev)
 	if (ret < 0)
 		return ret;
 
-	return 0;
+	/* Ar803x extended next page bit is enabled by default. Cisco
+	 * multigig switches read this bit and attempt to negotiate 10Gbps
+	 * rates even if the next page bit is disabled. This is incorrect
+	 * behaviour but we still need to accommodate it. XNP is only needed
+	 * for 10Gbps support, so disable XNP.
+	 */
+	return phy_modify(phydev, MII_ADVERTISE, MDIO_AN_CTRL1_XNP, 0);
 }
 
 static struct phy_driver at803x_driver[] = {
-- 
2.39.2




Delivery-date: Mon, 10 Jul 2023 08:38:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIkXl-005NZu-Uo
	for lore@lore.pengutronix.de; Mon, 10 Jul 2023 08:38:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIkXj-0003EK-Ho
	for lore@pengutronix.de; Mon, 10 Jul 2023 08:38:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bea9kP2FBz+Pjr2vVjRl3Od6/bHHscGoipaoEKjR2qU=; b=gztnYjqGAyUoWo51HjrlkXe6O8
	kqJ2NRyx1lYw8xMLjEDnYdbQQ8tcjI1OjCFcpBJlm7mWznSWOVFWqk437r18wkj79uKGCXw0+3Jc+
	R2NExU7/P53xcUqEH9/RQpGLAnmD8AQCs/AlP0DD5NFx2fAY0GKXOEWxfbV5zF9uM6lYdHl1UQE/g
	CGaHVCYJJBLWeZtA5X+jSoZHev0KTNlXOgijb8+XzOxYD7nkiEDTk3IUoRxTJKOIHpqxbky1Pk78X
	d0R8xlgG5p95C+6AdTxvmOo+UeW5oXm23Ebzw+VqunoI/hyF4XfDwLnV1tOOFa7dyDOdc9OJ3nOk7
	yX/Qv81A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIkWM-00AaxM-2J;
	Mon, 10 Jul 2023 06:37:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIkWG-00Aatp-31
	for barebox@lists.infradead.org;
	Mon, 10 Jul 2023 06:37:15 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qIkW4-0002w5-KL
	for barebox@lists.infradead.org; Mon, 10 Jul 2023 08:37:00 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 10 Jul 2023 08:36:53 +0200
Message-Id: <20230710063653.660040-7-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230710063653.660040-1-m.felsch@pengutronix.de>
References: <20230710063653.660040-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230709_233712_998679_DA23AFBA 
X-CRM114-Status: GOOD (  14.11  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 7/7] net: phy: at803x: disable extended next page bit
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
---
 drivers/net/phy/at803x.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
index d8a9c3588f..577bdf1244 100644
--- a/drivers/net/phy/at803x.c
+++ b/drivers/net/phy/at803x.c
@@ -365,7 +365,13 @@ static int at803x_config_init(struct phy_device *phydev)
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




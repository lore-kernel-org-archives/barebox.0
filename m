Delivery-date: Fri, 11 Aug 2023 12:28:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUPNh-00GSd1-DL
	for lore@lore.pengutronix.de; Fri, 11 Aug 2023 12:28:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUPNe-0007Vx-FX
	for lore@pengutronix.de; Fri, 11 Aug 2023 12:28:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sDcJMpxTO3Uy42INenHdHjD0oqVLHfpemRQHwvMjL1Q=; b=b2KUMk4zKWnrwqwpcMC+Z55QN7
	uHBU0awOPNdJzFQnnP2hmws7pE4OBUo0BTAEiFyIsdJeEjiWx+AorK2L8NsLj0bo3V+I6sSj9WBkn
	eryDygQqpiYsQow7piVjcPTKXd9AxnaTaT2A6SULUGrApDEEh6NsBpXxKucz6V2RimF4PTf4/6pgj
	XLFxfPn+IaBLXOlrh34btnPSxskofLAY+yRtXKNA7t3u6lIigyPshhC33TXQS4vci6LHX9YvgIfoO
	RWINNS7AvyP0qFZcr+JfHIsjnkKnXfYFwbqIeZ1sGDFLAGmhPX0CVzDt7nR1ZHCR53+RrlFRHsH+e
	e7KvWcHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUPMS-00ADDc-35;
	Fri, 11 Aug 2023 10:27:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUPMI-00AD0I-1M
	for barebox@lists.infradead.org;
	Fri, 11 Aug 2023 10:27:10 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qUPMD-00073K-Lz
	for barebox@lists.infradead.org; Fri, 11 Aug 2023 12:27:01 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 11 Aug 2023 12:26:50 +0200
Message-Id: <20230811102657.271931-4-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230811102657.271931-1-m.felsch@pengutronix.de>
References: <20230811102657.271931-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230811_032706_487990_E5ABF151 
X-CRM114-Status: GOOD (  10.80  )
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
Subject: [PATCH v2 04/11] net: phy: mmd_phy_indirect: align parameters with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Switch the prtad and devad to align it with Linux to make porting from
Linux less error prone. While on it rename prtad with regnum.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- new patch

 drivers/net/phy/phy.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 74381949b43a..c1b8cb46e6be 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -819,14 +819,14 @@ int genphy_read_status(struct phy_device *phydev)
 	return 0;
 }
 
-static inline void mmd_phy_indirect(struct phy_device *phydev, int prtad,
-					int devad)
+static inline void mmd_phy_indirect(struct phy_device *phydev, int devad,
+				    u16 regnum)
 {
 	/* Write the desired MMD Devad */
 	phy_write(phydev, MII_MMD_CTRL, devad);
 
 	/* Write the desired MMD register address */
-	phy_write(phydev, MII_MMD_DATA, prtad);
+	phy_write(phydev, MII_MMD_DATA, regnum);
 
 	/* Select the Function : DATA with no post increment */
 	phy_write(phydev, MII_MMD_CTRL, (devad | MII_MMD_CTRL_NOINCR));
@@ -850,7 +850,7 @@ int phy_read_mmd_indirect(struct phy_device *phydev, int prtad, int devad)
 {
 	u32 ret;
 
-	mmd_phy_indirect(phydev, prtad, devad);
+	mmd_phy_indirect(phydev, devad, prtad);
 
 	/* Read the content of the MMD's selected register */
 	ret = phy_read(phydev, MII_MMD_DATA);
@@ -876,7 +876,7 @@ int phy_read_mmd_indirect(struct phy_device *phydev, int prtad, int devad)
 void phy_write_mmd_indirect(struct phy_device *phydev, int prtad, int devad,
 				   u16 data)
 {
-	mmd_phy_indirect(phydev, prtad, devad);
+	mmd_phy_indirect(phydev, devad, prtad);
 
 	/* Write the data into MMD's selected register */
 	phy_write(phydev, MII_MMD_DATA, data);
-- 
2.39.2




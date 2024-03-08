Delivery-date: Fri, 08 Mar 2024 15:21:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rib6Q-00DmgB-08
	for lore@lore.pengutronix.de;
	Fri, 08 Mar 2024 15:21:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rib6P-0004RP-DS
	for lore@pengutronix.de; Fri, 08 Mar 2024 15:21:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Geo+A3VZIyQ7ouJy9CJ8u1smpPNnJMx7yc0/5PEATOY=; b=sOiahWolt4aGxVb5WFjor9wXYd
	ShLE8rUmCw4FdAlmtyX0yF/bmkMJvGvqQwSWwn8N0KTsjdEfiNr6ek9ggfzibWNdp+fncbBe+r48P
	OGAbU+NwTfD6Ykiw9C63GsyyWVrjBe4t6/rkODxUgpG1Lod2mXA69lKB6J4r8nSKckoVCwoB+2j8U
	4YEFeJDHJPl2UXGdRPWHiCgaS2R83j9g8211XGWB/vv35KnpaGvOMyraULz13Lt4WwUzNTBnphrkU
	KsTQAnJ8dMUNaw104PHuoH7590LYFUpKcmb8AMxWXrPAHZuu7nQf3o1BhKBiLnTZSwkCj1BeAxYvM
	iUmu1NZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rib5q-00000009X9d-3TSl;
	Fri, 08 Mar 2024 14:21:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rib5n-00000009X6O-0Pc9
	for barebox@lists.infradead.org;
	Fri, 08 Mar 2024 14:21:00 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1rib5k-0003hm-HR; Fri, 08 Mar 2024 15:20:56 +0100
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Bastian Krause <bst@pengutronix.de>
Date: Fri,  8 Mar 2024 15:20:51 +0100
Message-Id: <20240308142052.2683407-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_062059_163461_6F40D2D2 
X-CRM114-Status: UNSURE (   7.76  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] ARM: i.MX8MM: set SION bits for i2c2, i2c3, i2c4 mux options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

i2c data lines are bidirectional, so the SION bit should be set. For
i2c1, this is already the case. Apply the same to the remaining i2c mux
options.

Suggested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 include/mach/imx/iomux-mx8mm.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/include/mach/imx/iomux-mx8mm.h b/include/mach/imx/iomux-mx8mm.h
index f2ebde3d3bf..ee0240f5383 100644
--- a/include/mach/imx/iomux-mx8mm.h
+++ b/include/mach/imx/iomux-mx8mm.h
@@ -614,32 +614,32 @@ enum {
 	IMX8MM_PAD_I2C1_SDA_ENET1_MDIO                                =  IOMUX_PAD(0x0480, 0x0218, 1, 0x04C0, 2, 0),
 	IMX8MM_PAD_I2C1_SDA_GPIO5_IO15                                =  IOMUX_PAD(0x0480, 0x0218, 5, 0x0000, 0, 0),
 
-	IMX8MM_PAD_I2C2_SCL_I2C2_SCL                                  =  IOMUX_PAD(0x0484, 0x021C, 0, 0x0000, 0, 0),
+	IMX8MM_PAD_I2C2_SCL_I2C2_SCL                                  =  IOMUX_PAD(0x0484, 0x021C, 0 | IOMUX_CONFIG_SION, 0x0000, 0, 0),
 	IMX8MM_PAD_I2C2_SCL_ENET1_1588_EVENT1_IN                      =  IOMUX_PAD(0x0484, 0x021C, 1, 0x0000, 0, 0),
 	IMX8MM_PAD_I2C2_SCL_USDHC3_CD_B                               =  IOMUX_PAD(0x0484, 0x021C, 2, 0x0544, 1, 0),
 	IMX8MM_PAD_I2C2_SCL_GPIO5_IO16                                =  IOMUX_PAD(0x0484, 0x021C, 5, 0x0000, 0, 0),
 
-	IMX8MM_PAD_I2C2_SDA_I2C2_SDA                                  =  IOMUX_PAD(0x0488, 0x0220, 0, 0x0000, 0, 0),
+	IMX8MM_PAD_I2C2_SDA_I2C2_SDA                                  =  IOMUX_PAD(0x0488, 0x0220, 0 | IOMUX_CONFIG_SION, 0x0000, 0, 0),
 	IMX8MM_PAD_I2C2_SDA_ENET1_1588_EVENT1_OUT                     =  IOMUX_PAD(0x0488, 0x0220, 1, 0x0000, 0, 0),
 	IMX8MM_PAD_I2C2_SDA_USDHC3_WP                                 =  IOMUX_PAD(0x0488, 0x0220, 2, 0x0548, 1, 0),
 	IMX8MM_PAD_I2C2_SDA_GPIO5_IO17                                =  IOMUX_PAD(0x0488, 0x0220, 5, 0x0000, 0, 0),
 
-	IMX8MM_PAD_I2C3_SCL_I2C3_SCL                                  =  IOMUX_PAD(0x048C, 0x0224, 0, 0x0000, 0, 0),
+	IMX8MM_PAD_I2C3_SCL_I2C3_SCL                                  =  IOMUX_PAD(0x048C, 0x0224, 0 | IOMUX_CONFIG_SION, 0x0000, 0, 0),
 	IMX8MM_PAD_I2C3_SCL_PWM4_OUT                                  =  IOMUX_PAD(0x048C, 0x0224, 1, 0x0000, 0, 0),
 	IMX8MM_PAD_I2C3_SCL_GPT2_CLK                                  =  IOMUX_PAD(0x048C, 0x0224, 2, 0x0000, 0, 0),
 	IMX8MM_PAD_I2C3_SCL_GPIO5_IO18                                =  IOMUX_PAD(0x048C, 0x0224, 5, 0x0000, 0, 0),
 
-	IMX8MM_PAD_I2C3_SDA_I2C3_SDA                                  =  IOMUX_PAD(0x0490, 0x0228, 0, 0x0000, 0, 0),
+	IMX8MM_PAD_I2C3_SDA_I2C3_SDA                                  =  IOMUX_PAD(0x0490, 0x0228, 0 | IOMUX_CONFIG_SION, 0x0000, 0, 0),
 	IMX8MM_PAD_I2C3_SDA_PWM3_OUT                                  =  IOMUX_PAD(0x0490, 0x0228, 1, 0x0000, 0, 0),
 	IMX8MM_PAD_I2C3_SDA_GPT3_CLK                                  =  IOMUX_PAD(0x0490, 0x0228, 2, 0x0000, 0, 0),
 	IMX8MM_PAD_I2C3_SDA_GPIO5_IO19                                =  IOMUX_PAD(0x0490, 0x0228, 5, 0x0000, 0, 0),
 
-	IMX8MM_PAD_I2C4_SCL_I2C4_SCL                                  =  IOMUX_PAD(0x0494, 0x022C, 0, 0x0000, 0, 0),
+	IMX8MM_PAD_I2C4_SCL_I2C4_SCL                                  =  IOMUX_PAD(0x0494, 0x022C, 0 | IOMUX_CONFIG_SION, 0x0000, 0, 0),
 	IMX8MM_PAD_I2C4_SCL_PWM2_OUT                                  =  IOMUX_PAD(0x0494, 0x022C, 1, 0x0000, 0, 0),
 	IMX8MM_PAD_I2C4_SCL_PCIE1_CLKREQ_B                            =  IOMUX_PAD(0x0494, 0x022C, 2, 0x0524, 0, 0),
 	IMX8MM_PAD_I2C4_SCL_GPIO5_IO20                                =  IOMUX_PAD(0x0494, 0x022C, 5, 0x0000, 0, 0),
 
-	IMX8MM_PAD_I2C4_SDA_I2C4_SDA                                  =  IOMUX_PAD(0x0498, 0x0230, 0, 0x0000, 0, 0),
+	IMX8MM_PAD_I2C4_SDA_I2C4_SDA                                  =  IOMUX_PAD(0x0498, 0x0230, 0 | IOMUX_CONFIG_SION, 0x0000, 0, 0),
 	IMX8MM_PAD_I2C4_SDA_PWM1_OUT                                  =  IOMUX_PAD(0x0498, 0x0230, 1, 0x0000, 0, 0),
 	IMX8MM_PAD_I2C4_SDA_GPIO5_IO21                                =  IOMUX_PAD(0x0498, 0x0230, 5, 0x0000, 0, 0),
 
-- 
2.39.2




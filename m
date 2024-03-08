Delivery-date: Fri, 08 Mar 2024 15:21:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rib6T-00Dmgf-2g
	for lore@lore.pengutronix.de;
	Fri, 08 Mar 2024 15:21:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rib6S-0004St-6I
	for lore@pengutronix.de; Fri, 08 Mar 2024 15:21:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MdJHUXuYGZ3TFptZ384aMa9UyIiYN1/pghgOzPHS5PQ=; b=Y3pO7ltJ8BOHb/xippVDWBkhEy
	pTkBEycDNeNlaIeOQhF5Rntnw4ucXmR7kj2LTnBpHb0mygraAgQkwPmYFBq8+Q2+5QY/LMNmK4FsT
	sXx9s3bKDVlxp9K+v8J/t25Rf/ssaPciZmqFi/XnsPn4hZ5ucx9klrS7ecFEMjF0HUAIlssjpgh0o
	EaYjG2Gz34fRJmgNFt/XySrwQT2a/eWvls4Stbd9Ox1cYUot2MUqT4aMQCN2EonFJd9/f3GUI+zEz
	RbbxulcF75ZUYL3cF914st27qQA22m5T7xh8cl5L/yTaYS8SRifURQ8+04nMFCqrRzzxjzef7BzKq
	fRfOY7oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rib5r-00000009X9s-2b7W;
	Fri, 08 Mar 2024 14:21:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rib5n-00000009X6e-3GFF
	for barebox@lists.infradead.org;
	Fri, 08 Mar 2024 14:21:01 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1rib5l-0003hm-6f; Fri, 08 Mar 2024 15:20:57 +0100
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Bastian Krause <bst@pengutronix.de>
Date: Fri,  8 Mar 2024 15:20:52 +0100
Message-Id: <20240308142052.2683407-2-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240308142052.2683407-1-bst@pengutronix.de>
References: <20240308142052.2683407-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_062100_171320_1F01BB0D 
X-CRM114-Status: UNSURE (   7.17  )
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
	T_SCC_BODY_TEXT_LINE,UPPERCASE_50_75 autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: i.MX8MN: set SION bits for i2c mux options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

i2c data lines are bidirectional, so the SION bit should be set. Apply
them to all i2c mux options.

Suggested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 include/mach/imx/iomux-mx8mn.h | 64 +++++++++++++++++-----------------
 1 file changed, 32 insertions(+), 32 deletions(-)

diff --git a/include/mach/imx/iomux-mx8mn.h b/include/mach/imx/iomux-mx8mn.h
index 981c0465d9f..43d7028bc17 100644
--- a/include/mach/imx/iomux-mx8mn.h
+++ b/include/mach/imx/iomux-mx8mn.h
@@ -12,10 +12,10 @@
 
 enum {
 	IMX8MN_PAD_BOOT_MODE2__CCMSRCGPCMIX_BOOT_MODE2                          = IOMUX_PAD(0x025C, 0x0020, 0, 0x0000, 0, 0),
-	IMX8MN_PAD_BOOT_MODE2__I2C1_SCL                                         = IOMUX_PAD(0x025C, 0x0020, 1, 0x055C, 3, 0),
+	IMX8MN_PAD_BOOT_MODE2__I2C1_SCL                                         = IOMUX_PAD(0x025C, 0x0020, 1 | IOMUX_CONFIG_SION, 0x055C, 3, 0),
 
 	IMX8MN_PAD_BOOT_MODE3__CCMSRCGPCMIX_BOOT_MODE3                          = IOMUX_PAD(0x0260, 0x0024, 0, 0x0000, 0, 0),
-	IMX8MN_PAD_BOOT_MODE3__I2C1_SDA                                         = IOMUX_PAD(0x0260, 0x0024, 1, 0x056C, 3, 0),
+	IMX8MN_PAD_BOOT_MODE3__I2C1_SDA                                         = IOMUX_PAD(0x0260, 0x0024, 1 | IOMUX_CONFIG_SION, 0x056C, 3, 0),
 
 	IMX8MN_PAD_GPIO1_IO00__GPIO1_IO0                                        = IOMUX_PAD(0x0290, 0x0028, 0, 0x0000, 0, 0),
 	IMX8MN_PAD_GPIO1_IO00__CCMSRCGPCMIX_ENET_PHY_REF_CLK_ROOT               = IOMUX_PAD(0x0290, 0x0028, 1, 0x0000, 0, 0),
@@ -226,28 +226,28 @@ enum {
 
 	IMX8MN_PAD_SD1_DATA4__USDHC1_DATA4                                      = IOMUX_PAD(0x0320, 0x00B8, 0, 0x0000, 0, 0),
 	IMX8MN_PAD_SD1_DATA4__ENET1_RGMII_TX_CTL                                = IOMUX_PAD(0x0320, 0x00B8, 1, 0x0000, 0, 0),
-	IMX8MN_PAD_SD1_DATA4__I2C1_SCL                                          = IOMUX_PAD(0x0320, 0x00B8, 3, 0x055C, 1, 0),
+	IMX8MN_PAD_SD1_DATA4__I2C1_SCL                                          = IOMUX_PAD(0x0320, 0x00B8, 3 | IOMUX_CONFIG_SION, 0x055C, 1, 0),
 	IMX8MN_PAD_SD1_DATA4__UART2_DCE_RTS_B                                   = IOMUX_PAD(0x0320, 0x00B8, 4, 0x04F8, 4, 0),
 	IMX8MN_PAD_SD1_DATA4__UART2_DTE_CTS_B                                   = IOMUX_PAD(0x0320, 0x00B8, 4, 0x0000, 0, 0),
 	IMX8MN_PAD_SD1_DATA4__GPIO2_IO6                                         = IOMUX_PAD(0x0320, 0x00B8, 5, 0x0000, 0, 0),
 
 	IMX8MN_PAD_SD1_DATA5__USDHC1_DATA5                                      = IOMUX_PAD(0x0324, 0x00BC, 0, 0x0000, 0, 0),
 	IMX8MN_PAD_SD1_DATA5__ENET1_TX_ER                                       = IOMUX_PAD(0x0324, 0x00BC, 1, 0x0000, 0, 0),
-	IMX8MN_PAD_SD1_DATA5__I2C1_SDA                                          = IOMUX_PAD(0x0324, 0x00BC, 3, 0x056C, 1, 0),
+	IMX8MN_PAD_SD1_DATA5__I2C1_SDA                                          = IOMUX_PAD(0x0324, 0x00BC, 3 | IOMUX_CONFIG_SION, 0x056C, 1, 0),
 	IMX8MN_PAD_SD1_DATA5__UART2_DCE_CTS_B                                   = IOMUX_PAD(0x0324, 0x00BC, 4, 0x0000, 0, 0),
 	IMX8MN_PAD_SD1_DATA5__UART2_DTE_RTS_B                                   = IOMUX_PAD(0x0324, 0x00BC, 4, 0x04F8, 5, 0),
 	IMX8MN_PAD_SD1_DATA5__GPIO2_IO7                                         = IOMUX_PAD(0x0324, 0x00BC, 5, 0x0000, 0, 0),
 
 	IMX8MN_PAD_SD1_DATA6__USDHC1_DATA6                                      = IOMUX_PAD(0x0328, 0x00C0, 0, 0x0000, 0, 0),
 	IMX8MN_PAD_SD1_DATA6__ENET1_RGMII_RX_CTL                                = IOMUX_PAD(0x0328, 0x00C0, 1, 0x0574, 1, 0),
-	IMX8MN_PAD_SD1_DATA6__I2C2_SCL                                          = IOMUX_PAD(0x0328, 0x00C0, 3, 0x05D0, 1, 0),
+	IMX8MN_PAD_SD1_DATA6__I2C2_SCL                                          = IOMUX_PAD(0x0328, 0x00C0, 3 | IOMUX_CONFIG_SION, 0x05D0, 1, 0),
 	IMX8MN_PAD_SD1_DATA6__UART3_DCE_TX                                      = IOMUX_PAD(0x0328, 0x00C0, 4, 0x0000, 0, 0),
 	IMX8MN_PAD_SD1_DATA6__UART3_DTE_RX                                      = IOMUX_PAD(0x0328, 0x00C0, 4, 0x0504, 4, 0),
 	IMX8MN_PAD_SD1_DATA6__GPIO2_IO8                                         = IOMUX_PAD(0x0328, 0x00C0, 5, 0x0000, 0, 0),
 
 	IMX8MN_PAD_SD1_DATA7__USDHC1_DATA7                                      = IOMUX_PAD(0x032C, 0x00C4, 0, 0x0000, 0, 0),
 	IMX8MN_PAD_SD1_DATA7__ENET1_RX_ER                                       = IOMUX_PAD(0x032C, 0x00C4, 1, 0x05C8, 1, 0),
-	IMX8MN_PAD_SD1_DATA7__I2C2_SDA                                          = IOMUX_PAD(0x032C, 0x00C4, 3, 0x0560, 1, 0),
+	IMX8MN_PAD_SD1_DATA7__I2C2_SDA                                          = IOMUX_PAD(0x032C, 0x00C4, 3 | IOMUX_CONFIG_SION, 0x0560, 1, 0),
 	IMX8MN_PAD_SD1_DATA7__UART3_DCE_RX                                      = IOMUX_PAD(0x032C, 0x00C4, 4, 0x0504, 5, 0),
 	IMX8MN_PAD_SD1_DATA7__UART3_DTE_TX                                      = IOMUX_PAD(0x032C, 0x00C4, 4, 0x0000, 0, 0),
 	IMX8MN_PAD_SD1_DATA7__GPIO2_IO9                                         = IOMUX_PAD(0x032C, 0x00C4, 5, 0x0000, 0, 0),
@@ -255,13 +255,13 @@ enum {
 	IMX8MN_PAD_SD1_RESET_B__USDHC1_RESET_B                                  = IOMUX_PAD(0x0330, 0x00C8, 0, 0x0000, 0, 0),
 	IMX8MN_PAD_SD1_RESET_B__ENET1_TX_CLK                              = IOMUX_PAD(0x0330, 0x00C8, 1, 0x05A4, 1, 0),
 	IMX8MN_PAD_SD1_RESET_B__CCMSRCGPCMIX_ENET_REF_CLK_ROOT                  = IOMUX_PAD(0x0330, 0x00C8, 1, 0x05A4, 0, 0),
-	IMX8MN_PAD_SD1_RESET_B__I2C3_SCL                                        = IOMUX_PAD(0x0330, 0x00C8, 3, 0x0588, 1, 0),
+	IMX8MN_PAD_SD1_RESET_B__I2C3_SCL                                        = IOMUX_PAD(0x0330, 0x00C8, 3 | IOMUX_CONFIG_SION, 0x0588, 1, 0),
 	IMX8MN_PAD_SD1_RESET_B__UART3_DCE_RTS_B                                 = IOMUX_PAD(0x0330, 0x00C8, 4, 0x0500, 2, 0),
 	IMX8MN_PAD_SD1_RESET_B__UART3_DTE_CTS_B                                 = IOMUX_PAD(0x0330, 0x00C8, 4, 0x0000, 0, 0),
 	IMX8MN_PAD_SD1_RESET_B__GPIO2_IO10                                      = IOMUX_PAD(0x0330, 0x00C8, 5, 0x0000, 0, 0),
 
 	IMX8MN_PAD_SD1_STROBE__USDHC1_STROBE                                    = IOMUX_PAD(0x0334, 0x00CC, 0, 0x0000, 0, 0),
-	IMX8MN_PAD_SD1_STROBE__I2C3_SDA                                         = IOMUX_PAD(0x0334, 0x00CC, 3, 0x05BC, 1, 0),
+	IMX8MN_PAD_SD1_STROBE__I2C3_SDA                                         = IOMUX_PAD(0x0334, 0x00CC, 3 | IOMUX_CONFIG_SION, 0x05BC, 1, 0),
 	IMX8MN_PAD_SD1_STROBE__UART3_DCE_CTS_B                                  = IOMUX_PAD(0x0334, 0x00CC, 4, 0x0000, 0, 0),
 	IMX8MN_PAD_SD1_STROBE__UART3_DTE_RTS_B                                  = IOMUX_PAD(0x0334, 0x00CC, 4, 0x0500, 3, 0),
 	IMX8MN_PAD_SD1_STROBE__GPIO2_IO11                                       = IOMUX_PAD(0x0334, 0x00CC, 5, 0x0000, 0, 0),
@@ -290,7 +290,7 @@ enum {
 
 	IMX8MN_PAD_SD2_DATA0__USDHC2_DATA0                                      = IOMUX_PAD(0x0344, 0x00DC, 0, 0x0000, 0, 0),
 	IMX8MN_PAD_SD2_DATA0__SAI5_RX_DATA0                                     = IOMUX_PAD(0x0344, 0x00DC, 1, 0x04D4, 1, 0),
-	IMX8MN_PAD_SD2_DATA0__I2C4_SDA                                          = IOMUX_PAD(0x0344, 0x00DC, 2, 0x058C, 1, 0),
+	IMX8MN_PAD_SD2_DATA0__I2C4_SDA                                          = IOMUX_PAD(0x0344, 0x00DC, 2 | IOMUX_CONFIG_SION, 0x058C, 1, 0),
 	IMX8MN_PAD_SD2_DATA0__UART2_DCE_RX                                      = IOMUX_PAD(0x0344, 0x00DC, 3, 0x04FC, 6, 0),
 	IMX8MN_PAD_SD2_DATA0__UART2_DTE_TX                                      = IOMUX_PAD(0x0344, 0x00DC, 3, 0x0000, 0, 0),
 	IMX8MN_PAD_SD2_DATA0__PDM_BIT_STREAM0                                   = IOMUX_PAD(0x0344, 0x00DC, 4, 0x0534, 2, 0),
@@ -299,7 +299,7 @@ enum {
 
 	IMX8MN_PAD_SD2_DATA1__USDHC2_DATA1                                      = IOMUX_PAD(0x0348, 0x00E0, 0, 0x0000, 0, 0),
 	IMX8MN_PAD_SD2_DATA1__SAI5_TX_SYNC                                      = IOMUX_PAD(0x0348, 0x00E0, 1, 0x04EC, 1, 0),
-	IMX8MN_PAD_SD2_DATA1__I2C4_SCL                                          = IOMUX_PAD(0x0348, 0x00E0, 2, 0x05D4, 1, 0),
+	IMX8MN_PAD_SD2_DATA1__I2C4_SCL                                          = IOMUX_PAD(0x0348, 0x00E0, 2 | IOMUX_CONFIG_SION, 0x05D4, 1, 0),
 	IMX8MN_PAD_SD2_DATA1__UART2_DCE_TX                                      = IOMUX_PAD(0x0348, 0x00E0, 3, 0x0000, 0, 0),
 	IMX8MN_PAD_SD2_DATA1__UART2_DTE_RX                                      = IOMUX_PAD(0x0348, 0x00E0, 3, 0x04FC, 7, 0),
 	IMX8MN_PAD_SD2_DATA1__PDM_BIT_STREAM1                                   = IOMUX_PAD(0x0348, 0x00E0, 4, 0x0538, 4, 0),
@@ -350,7 +350,7 @@ enum {
 	IMX8MN_PAD_NAND_CE1_B__QSPI_A_SS1_B                                     = IOMUX_PAD(0x0364, 0x00FC, 1, 0x0000, 0, 0),
 	IMX8MN_PAD_NAND_CE1_B__USDHC3_STROBE                                    = IOMUX_PAD(0x0364, 0x00FC, 2, 0x059C, 0, 0),
 	IMX8MN_PAD_NAND_CE1_B__PDM_BIT_STREAM0                                  = IOMUX_PAD(0x0364, 0x00FC, 3, 0x0534, 4, 0),
-	IMX8MN_PAD_NAND_CE1_B__I2C4_SCL                                         = IOMUX_PAD(0x0364, 0x00FC, 4, 0x05D4, 2, 0),
+	IMX8MN_PAD_NAND_CE1_B__I2C4_SCL                                         = IOMUX_PAD(0x0364, 0x00FC, 4 | IOMUX_CONFIG_SION, 0x05D4, 2, 0),
 	IMX8MN_PAD_NAND_CE1_B__GPIO3_IO2                                        = IOMUX_PAD(0x0364, 0x00FC, 5, 0x0000, 0, 0),
 	IMX8MN_PAD_NAND_CE1_B__CORESIGHT_TRACE0                                 = IOMUX_PAD(0x0364, 0x00FC, 6, 0x0000, 0, 0),
 
@@ -358,7 +358,7 @@ enum {
 	IMX8MN_PAD_NAND_CE2_B__QSPI_B_SS0_B                                     = IOMUX_PAD(0x0368, 0x0100, 1, 0x0000, 0, 0),
 	IMX8MN_PAD_NAND_CE2_B__USDHC3_DATA5                                     = IOMUX_PAD(0x0368, 0x0100, 2, 0x0550, 0, 0),
 	IMX8MN_PAD_NAND_CE2_B__PDM_BIT_STREAM1                                  = IOMUX_PAD(0x0368, 0x0100, 3, 0x0538, 6, 0),
-	IMX8MN_PAD_NAND_CE2_B__I2C4_SDA                                         = IOMUX_PAD(0x0368, 0x0100, 4, 0x058C, 2, 0),
+	IMX8MN_PAD_NAND_CE2_B__I2C4_SDA                                         = IOMUX_PAD(0x0368, 0x0100, 4 | IOMUX_CONFIG_SION, 0x058C, 2, 0),
 	IMX8MN_PAD_NAND_CE2_B__GPIO3_IO3                                        = IOMUX_PAD(0x0368, 0x0100, 5, 0x0000, 0, 0),
 	IMX8MN_PAD_NAND_CE2_B__CORESIGHT_TRACE1                                 = IOMUX_PAD(0x0368, 0x0100, 6, 0x0000, 0, 0),
 
@@ -366,7 +366,7 @@ enum {
 	IMX8MN_PAD_NAND_CE3_B__QSPI_B_SS1_B                                     = IOMUX_PAD(0x036C, 0x0104, 1, 0x0000, 0, 0),
 	IMX8MN_PAD_NAND_CE3_B__USDHC3_DATA6                                     = IOMUX_PAD(0x036C, 0x0104, 2, 0x0584, 0, 0),
 	IMX8MN_PAD_NAND_CE3_B__PDM_BIT_STREAM2                                  = IOMUX_PAD(0x036C, 0x0104, 3, 0x053C, 5, 0),
-	IMX8MN_PAD_NAND_CE3_B__I2C3_SDA                                         = IOMUX_PAD(0x036C, 0x0104, 4, 0x05BC, 2, 0),
+	IMX8MN_PAD_NAND_CE3_B__I2C3_SDA                                         = IOMUX_PAD(0x036C, 0x0104, 4 | IOMUX_CONFIG_SION, 0x05BC, 2, 0),
 	IMX8MN_PAD_NAND_CE3_B__GPIO3_IO4                                        = IOMUX_PAD(0x036C, 0x0104, 5, 0x0000, 0, 0),
 	IMX8MN_PAD_NAND_CE3_B__CORESIGHT_TRACE2                                 = IOMUX_PAD(0x036C, 0x0104, 6, 0x0000, 0, 0),
 
@@ -395,7 +395,7 @@ enum {
 	IMX8MN_PAD_NAND_DATA02__RAWNAND_DATA02                                  = IOMUX_PAD(0x037C, 0x0114, 0, 0x0000, 0, 0),
 	IMX8MN_PAD_NAND_DATA02__QSPI_A_DATA2                                    = IOMUX_PAD(0x037C, 0x0114, 1, 0x0000, 0, 0),
 	IMX8MN_PAD_NAND_DATA02__USDHC3_CD_B                                     = IOMUX_PAD(0x037C, 0x0114, 2, 0x0598, 0, 0),
-	IMX8MN_PAD_NAND_DATA02__I2C4_SDA                                        = IOMUX_PAD(0x037C, 0x0114, 4, 0x058C, 3, 0),
+	IMX8MN_PAD_NAND_DATA02__I2C4_SDA                                        = IOMUX_PAD(0x037C, 0x0114, 4 | IOMUX_CONFIG_SION, 0x058C, 3, 0),
 	IMX8MN_PAD_NAND_DATA02__GPIO3_IO8                                       = IOMUX_PAD(0x037C, 0x0114, 5, 0x0000, 0, 0),
 	IMX8MN_PAD_NAND_DATA02__CORESIGHT_TRACE6                                = IOMUX_PAD(0x037C, 0x0114, 6, 0x0000, 0, 0),
 
@@ -432,7 +432,7 @@ enum {
 	IMX8MN_PAD_NAND_DQS__RAWNAND_DQS                                        = IOMUX_PAD(0x0394, 0x012C, 0, 0x0000, 0, 0),
 	IMX8MN_PAD_NAND_DQS__QSPI_A_DQS                                         = IOMUX_PAD(0x0394, 0x012C, 1, 0x0000, 0, 0),
 	IMX8MN_PAD_NAND_DQS__PDM_CLK                                            = IOMUX_PAD(0x0394, 0x012C, 3, 0x0000, 0, 0),
-	IMX8MN_PAD_NAND_DQS__I2C3_SCL                                           = IOMUX_PAD(0x0394, 0x012C, 4, 0x0588, 2, 0),
+	IMX8MN_PAD_NAND_DQS__I2C3_SCL                                           = IOMUX_PAD(0x0394, 0x012C, 4 | IOMUX_CONFIG_SION, 0x0588, 2, 0),
 	IMX8MN_PAD_NAND_DQS__GPIO3_IO14                                         = IOMUX_PAD(0x0394, 0x012C, 5, 0x0000, 0, 0),
 	IMX8MN_PAD_NAND_DQS__CORESIGHT_TRACE12                                  = IOMUX_PAD(0x0394, 0x012C, 6, 0x0000, 0, 0),
 
@@ -446,19 +446,19 @@ enum {
 	IMX8MN_PAD_NAND_READY_B__RAWNAND_READY_B                                = IOMUX_PAD(0x039C, 0x0134, 0, 0x0000, 0, 0),
 	IMX8MN_PAD_NAND_READY_B__USDHC3_RESET_B                                 = IOMUX_PAD(0x039C, 0x0134, 2, 0x0000, 0, 0),
 	IMX8MN_PAD_NAND_READY_B__PDM_BIT_STREAM3                                = IOMUX_PAD(0x039C, 0x0134, 3, 0x0540, 6, 0),
-	IMX8MN_PAD_NAND_READY_B__I2C3_SCL                                       = IOMUX_PAD(0x039C, 0x0134, 4, 0x0588, 3, 0),
+	IMX8MN_PAD_NAND_READY_B__I2C3_SCL                                       = IOMUX_PAD(0x039C, 0x0134, 4 | IOMUX_CONFIG_SION, 0x0588, 3, 0),
 	IMX8MN_PAD_NAND_READY_B__GPIO3_IO16                                     = IOMUX_PAD(0x039C, 0x0134, 5, 0x0000, 0, 0),
 	IMX8MN_PAD_NAND_READY_B__CORESIGHT_TRACE14                              = IOMUX_PAD(0x039C, 0x0134, 6, 0x0000, 0, 0),
 
 	IMX8MN_PAD_NAND_WE_B__RAWNAND_WE_B                                      = IOMUX_PAD(0x03A0, 0x0138, 0, 0x0000, 0, 0),
 	IMX8MN_PAD_NAND_WE_B__USDHC3_CLK                                        = IOMUX_PAD(0x03A0, 0x0138, 2  | IOMUX_CONFIG_SION, 0x05A0, 0, 0),
-	IMX8MN_PAD_NAND_WE_B__I2C3_SDA                                          = IOMUX_PAD(0x03A0, 0x0138, 4, 0x05BC, 3, 0),
+	IMX8MN_PAD_NAND_WE_B__I2C3_SDA                                          = IOMUX_PAD(0x03A0, 0x0138, 4 | IOMUX_CONFIG_SION, 0x05BC, 3, 0),
 	IMX8MN_PAD_NAND_WE_B__GPIO3_IO17                                        = IOMUX_PAD(0x03A0, 0x0138, 5, 0x0000, 0, 0),
 	IMX8MN_PAD_NAND_WE_B__CORESIGHT_TRACE15                                 = IOMUX_PAD(0x03A0, 0x0138, 6, 0x0000, 0, 0),
 
 	IMX8MN_PAD_NAND_WP_B__RAWNAND_WP_B                                      = IOMUX_PAD(0x03A4, 0x013C, 0, 0x0000, 0, 0),
 	IMX8MN_PAD_NAND_WP_B__USDHC3_CMD                                        = IOMUX_PAD(0x03A4, 0x013C, 2, 0x05DC, 0, 0),
-	IMX8MN_PAD_NAND_WP_B__I2C4_SDA                                          = IOMUX_PAD(0x03A4, 0x013C, 4, 0x058C, 4, 0),
+	IMX8MN_PAD_NAND_WP_B__I2C4_SDA                                          = IOMUX_PAD(0x03A4, 0x013C, 4 | IOMUX_CONFIG_SION, 0x058C, 4, 0),
 	IMX8MN_PAD_NAND_WP_B__GPIO3_IO18                                        = IOMUX_PAD(0x03A4, 0x013C, 5, 0x0000, 0, 0),
 	IMX8MN_PAD_NAND_WP_B__CORESIGHT_EVENTO                                  = IOMUX_PAD(0x03A4, 0x013C, 6, 0x0000, 0, 0),
 
@@ -611,28 +611,28 @@ enum {
 	IMX8MN_PAD_ECSPI1_SCLK__ECSPI1_SCLK                                     = IOMUX_PAD(0x045C, 0x01F4, 0, 0x05D8, 0, 0),
 	IMX8MN_PAD_ECSPI1_SCLK__UART3_DCE_RX                                    = IOMUX_PAD(0x045C, 0x01F4, 1, 0x0504, 0, 0),
 	IMX8MN_PAD_ECSPI1_SCLK__UART3_DTE_TX                                    = IOMUX_PAD(0x045C, 0x01F4, 1, 0x0000, 0, 0),
-	IMX8MN_PAD_ECSPI1_SCLK__I2C1_SCL                                        = IOMUX_PAD(0x045C, 0x01F4, 2, 0x055C, 2, 0),
+	IMX8MN_PAD_ECSPI1_SCLK__I2C1_SCL                                        = IOMUX_PAD(0x045C, 0x01F4, 2 | IOMUX_CONFIG_SION, 0x055C, 2, 0),
 	IMX8MN_PAD_ECSPI1_SCLK__SAI5_RX_SYNC                                    = IOMUX_PAD(0x045C, 0x01F4, 3, 0x04DC, 2, 0),
 	IMX8MN_PAD_ECSPI1_SCLK__GPIO5_IO6                                       = IOMUX_PAD(0x045C, 0x01F4, 5, 0x0000, 0, 0),
 
 	IMX8MN_PAD_ECSPI1_MOSI__ECSPI1_MOSI                                     = IOMUX_PAD(0x0460, 0x01F8, 0, 0x05A8, 0, 0),
 	IMX8MN_PAD_ECSPI1_MOSI__UART3_DCE_TX                                    = IOMUX_PAD(0x0460, 0x01F8, 1, 0x0000, 0, 0),
 	IMX8MN_PAD_ECSPI1_MOSI__UART3_DTE_RX                                    = IOMUX_PAD(0x0460, 0x01F8, 1, 0x0504, 1, 0),
-	IMX8MN_PAD_ECSPI1_MOSI__I2C1_SDA                                        = IOMUX_PAD(0x0460, 0x01F8, 2, 0x056C, 2, 0),
+	IMX8MN_PAD_ECSPI1_MOSI__I2C1_SDA                                        = IOMUX_PAD(0x0460, 0x01F8, 2 | IOMUX_CONFIG_SION, 0x056C, 2, 0),
 	IMX8MN_PAD_ECSPI1_MOSI__SAI5_RX_BCLK                                    = IOMUX_PAD(0x0460, 0x01F8, 3, 0x04D0, 3, 0),
 	IMX8MN_PAD_ECSPI1_MOSI__GPIO5_IO7                                       = IOMUX_PAD(0x0460, 0x01F8, 5, 0x0000, 0, 0),
 
 	IMX8MN_PAD_ECSPI1_MISO__ECSPI1_MISO                                     = IOMUX_PAD(0x0464, 0x01FC, 0, 0x05C4, 0, 0),
 	IMX8MN_PAD_ECSPI1_MISO__UART3_DCE_CTS_B                                 = IOMUX_PAD(0x0464, 0x01FC, 1, 0x0000, 0, 0),
 	IMX8MN_PAD_ECSPI1_MISO__UART3_DTE_RTS_B                                 = IOMUX_PAD(0x0464, 0x01FC, 1, 0x0500, 0, 0),
-	IMX8MN_PAD_ECSPI1_MISO__I2C2_SCL                                        = IOMUX_PAD(0x0464, 0x01FC, 2, 0x05D0, 2, 0),
+	IMX8MN_PAD_ECSPI1_MISO__I2C2_SCL                                        = IOMUX_PAD(0x0464, 0x01FC, 2 | IOMUX_CONFIG_SION, 0x05D0, 2, 0),
 	IMX8MN_PAD_ECSPI1_MISO__SAI5_RX_DATA0                                   = IOMUX_PAD(0x0464, 0x01FC, 3, 0x04D4, 3, 0),
 	IMX8MN_PAD_ECSPI1_MISO__GPIO5_IO8                                       = IOMUX_PAD(0x0464, 0x01FC, 5, 0x0000, 0, 0),
 
 	IMX8MN_PAD_ECSPI1_SS0__ECSPI1_SS0                                       = IOMUX_PAD(0x0468, 0x0200, 0, 0x0564, 0, 0),
 	IMX8MN_PAD_ECSPI1_SS0__UART3_DCE_RTS_B                                  = IOMUX_PAD(0x0468, 0x0200, 1, 0x0500, 1, 0),
 	IMX8MN_PAD_ECSPI1_SS0__UART3_DTE_CTS_B                                  = IOMUX_PAD(0x0468, 0x0200, 1, 0x0000, 0, 0),
-	IMX8MN_PAD_ECSPI1_SS0__I2C2_SDA                                         = IOMUX_PAD(0x0468, 0x0200, 2, 0x0560, 2, 0),
+	IMX8MN_PAD_ECSPI1_SS0__I2C2_SDA                                         = IOMUX_PAD(0x0468, 0x0200, 2 | IOMUX_CONFIG_SION, 0x0560, 2, 0),
 	IMX8MN_PAD_ECSPI1_SS0__SAI5_RX_DATA1                                    = IOMUX_PAD(0x0468, 0x0200, 3, 0x04D8, 2, 0),
 	IMX8MN_PAD_ECSPI1_SS0__SAI5_TX_SYNC                                     = IOMUX_PAD(0x0468, 0x0200, 4, 0x04EC, 3, 0),
 	IMX8MN_PAD_ECSPI1_SS0__GPIO5_IO9                                        = IOMUX_PAD(0x0468, 0x0200, 5, 0x0000, 0, 0),
@@ -640,7 +640,7 @@ enum {
 	IMX8MN_PAD_ECSPI2_SCLK__ECSPI2_SCLK                                     = IOMUX_PAD(0x046C, 0x0204, 0, 0x0580, 0, 0),
 	IMX8MN_PAD_ECSPI2_SCLK__UART4_DCE_RX                                    = IOMUX_PAD(0x046C, 0x0204, 1, 0x050C, 0, 0),
 	IMX8MN_PAD_ECSPI2_SCLK__UART4_DTE_TX                                    = IOMUX_PAD(0x046C, 0x0204, 1, 0x0000, 0, 0),
-	IMX8MN_PAD_ECSPI2_SCLK__I2C3_SCL                                        = IOMUX_PAD(0x046C, 0x0204, 2, 0x0588, 4, 0),
+	IMX8MN_PAD_ECSPI2_SCLK__I2C3_SCL                                        = IOMUX_PAD(0x046C, 0x0204, 2 | IOMUX_CONFIG_SION, 0x0588, 4, 0),
 	IMX8MN_PAD_ECSPI2_SCLK__SAI5_RX_DATA2                                   = IOMUX_PAD(0x046C, 0x0204, 3, 0x0000, 0, 0),
 	IMX8MN_PAD_ECSPI2_SCLK__SAI5_TX_BCLK                                    = IOMUX_PAD(0x046C, 0x0204, 4, 0x04E8, 3, 0),
 	IMX8MN_PAD_ECSPI2_SCLK__GPIO5_IO10                                      = IOMUX_PAD(0x046C, 0x0204, 5, 0x0000, 0, 0),
@@ -648,7 +648,7 @@ enum {
 	IMX8MN_PAD_ECSPI2_MOSI__ECSPI2_MOSI                                     = IOMUX_PAD(0x0470, 0x0208, 0, 0x0590, 0, 0),
 	IMX8MN_PAD_ECSPI2_MOSI__UART4_DCE_TX                                    = IOMUX_PAD(0x0470, 0x0208, 1, 0x0000, 0, 0),
 	IMX8MN_PAD_ECSPI2_MOSI__UART4_DTE_RX                                    = IOMUX_PAD(0x0470, 0x0208, 1, 0x050C, 1, 0),
-	IMX8MN_PAD_ECSPI2_MOSI__I2C3_SDA                                        = IOMUX_PAD(0x0470, 0x0208, 2, 0x05BC, 4, 0),
+	IMX8MN_PAD_ECSPI2_MOSI__I2C3_SDA                                        = IOMUX_PAD(0x0470, 0x0208, 2 | IOMUX_CONFIG_SION, 0x05BC, 4, 0),
 	IMX8MN_PAD_ECSPI2_MOSI__SAI5_RX_DATA3                                   = IOMUX_PAD(0x0470, 0x0208, 3, 0x04E0, 2, 0),
 	IMX8MN_PAD_ECSPI2_MOSI__SAI5_TX_DATA0                                   = IOMUX_PAD(0x0470, 0x0208, 4, 0x0000, 0, 0),
 	IMX8MN_PAD_ECSPI2_MOSI__GPIO5_IO11                                      = IOMUX_PAD(0x0470, 0x0208, 5, 0x0000, 0, 0),
@@ -656,14 +656,14 @@ enum {
 	IMX8MN_PAD_ECSPI2_MISO__ECSPI2_MISO                                     = IOMUX_PAD(0x0474, 0x020C, 0, 0x0578, 0, 0),
 	IMX8MN_PAD_ECSPI2_MISO__UART4_DCE_CTS_B                                 = IOMUX_PAD(0x0474, 0x020C, 1, 0x0000, 0, 0),
 	IMX8MN_PAD_ECSPI2_MISO__UART4_DTE_RTS_B                                 = IOMUX_PAD(0x0474, 0x020C, 1, 0x0508, 0, 0),
-	IMX8MN_PAD_ECSPI2_MISO__I2C4_SCL                                        = IOMUX_PAD(0x0474, 0x020C, 2, 0x05D4, 3, 0),
+	IMX8MN_PAD_ECSPI2_MISO__I2C4_SCL                                        = IOMUX_PAD(0x0474, 0x020C, 2 | IOMUX_CONFIG_SION, 0x05D4, 3, 0),
 	IMX8MN_PAD_ECSPI2_MISO__SAI5_MCLK                                       = IOMUX_PAD(0x0474, 0x020C, 3, 0x0594, 4, 0),
 	IMX8MN_PAD_ECSPI2_MISO__GPIO5_IO12                                      = IOMUX_PAD(0x0474, 0x020C, 5, 0x0000, 0, 0),
 
 	IMX8MN_PAD_ECSPI2_SS0__ECSPI2_SS0                                       = IOMUX_PAD(0x0478, 0x0210, 0, 0x0570, 0, 0),
 	IMX8MN_PAD_ECSPI2_SS0__UART4_DCE_RTS_B                                  = IOMUX_PAD(0x0478, 0x0210, 1, 0x0508, 1, 0),
 	IMX8MN_PAD_ECSPI2_SS0__UART4_DTE_CTS_B                                  = IOMUX_PAD(0x0478, 0x0210, 1, 0x0000, 0, 0),
-	IMX8MN_PAD_ECSPI2_SS0__I2C4_SDA                                         = IOMUX_PAD(0x0478, 0x0210, 2, 0x058C, 5, 0),
+	IMX8MN_PAD_ECSPI2_SS0__I2C4_SDA                                         = IOMUX_PAD(0x0478, 0x0210, 2 | IOMUX_CONFIG_SION, 0x058C, 5, 0),
 	IMX8MN_PAD_ECSPI2_SS0__GPIO5_IO13                                       = IOMUX_PAD(0x0478, 0x0210, 5, 0x0000, 0, 0),
 
 	IMX8MN_PAD_I2C1_SCL__I2C1_SCL                                           = IOMUX_PAD(0x047C, 0x0214, 0 | IOMUX_CONFIG_SION, 0x055C, 0, 0),
@@ -676,36 +676,36 @@ enum {
 	IMX8MN_PAD_I2C1_SDA__ECSPI1_MOSI                                        = IOMUX_PAD(0x0480, 0x0218, 3, 0x05A8, 1, 0),
 	IMX8MN_PAD_I2C1_SDA__GPIO5_IO15                                         = IOMUX_PAD(0x0480, 0x0218, 5, 0x0000, 0, 0),
 
-	IMX8MN_PAD_I2C2_SCL__I2C2_SCL                                           = IOMUX_PAD(0x0484, 0x021C, 0, 0x05D0, 0, 0),
+	IMX8MN_PAD_I2C2_SCL__I2C2_SCL                                           = IOMUX_PAD(0x0484, 0x021C, 0 | IOMUX_CONFIG_SION, 0x05D0, 0, 0),
 	IMX8MN_PAD_I2C2_SCL__ENET1_1588_EVENT1_IN                               = IOMUX_PAD(0x0484, 0x021C, 1, 0x0000, 0, 0),
 	IMX8MN_PAD_I2C2_SCL__USDHC3_CD_B                                        = IOMUX_PAD(0x0484, 0x021C, 2, 0x0598, 1, 0),
 	IMX8MN_PAD_I2C2_SCL__ECSPI1_MISO                                        = IOMUX_PAD(0x0484, 0x021C, 3, 0x05C4, 1, 0),
 	IMX8MN_PAD_I2C2_SCL__GPIO5_IO16                                         = IOMUX_PAD(0x0484, 0x021C, 5, 0x0000, 0, 0),
 
-	IMX8MN_PAD_I2C2_SDA__I2C2_SDA                                           = IOMUX_PAD(0x0488, 0x0220, 0, 0x0560, 0, 0),
+	IMX8MN_PAD_I2C2_SDA__I2C2_SDA                                           = IOMUX_PAD(0x0488, 0x0220, 0 | IOMUX_CONFIG_SION, 0x0560, 0, 0),
 	IMX8MN_PAD_I2C2_SDA__ENET1_1588_EVENT1_OUT                              = IOMUX_PAD(0x0488, 0x0220, 1, 0x0000, 0, 0),
 	IMX8MN_PAD_I2C2_SDA__USDHC3_WP                                          = IOMUX_PAD(0x0488, 0x0220, 2, 0x05B8, 1, 0),
 	IMX8MN_PAD_I2C2_SDA__ECSPI1_SS0                                         = IOMUX_PAD(0x0488, 0x0220, 3, 0x0564, 1, 0),
 	IMX8MN_PAD_I2C2_SDA__GPIO5_IO17                                         = IOMUX_PAD(0x0488, 0x0220, 5, 0x0000, 0, 0),
 
-	IMX8MN_PAD_I2C3_SCL__I2C3_SCL                                           = IOMUX_PAD(0x048C, 0x0224, 0, 0x0588, 0, 0),
+	IMX8MN_PAD_I2C3_SCL__I2C3_SCL                                           = IOMUX_PAD(0x048C, 0x0224, 0 | IOMUX_CONFIG_SION, 0x0588, 0, 0),
 	IMX8MN_PAD_I2C3_SCL__PWM4_OUT                                           = IOMUX_PAD(0x048C, 0x0224, 1, 0x0000, 0, 0),
 	IMX8MN_PAD_I2C3_SCL__GPT2_CLK                                           = IOMUX_PAD(0x048C, 0x0224, 2, 0x0000, 0, 0),
 	IMX8MN_PAD_I2C3_SCL__ECSPI2_SCLK                                        = IOMUX_PAD(0x048C, 0x0224, 3, 0x0580, 2, 0),
 	IMX8MN_PAD_I2C3_SCL__GPIO5_IO18                                         = IOMUX_PAD(0x048C, 0x0224, 5, 0x0000, 0, 0),
 
-	IMX8MN_PAD_I2C3_SDA__I2C3_SDA                                           = IOMUX_PAD(0x0490, 0x0228, 0, 0x05BC, 0, 0),
+	IMX8MN_PAD_I2C3_SDA__I2C3_SDA                                           = IOMUX_PAD(0x0490, 0x0228, 0 | IOMUX_CONFIG_SION, 0x05BC, 0, 0),
 	IMX8MN_PAD_I2C3_SDA__PWM3_OUT                                           = IOMUX_PAD(0x0490, 0x0228, 1, 0x0000, 0, 0),
 	IMX8MN_PAD_I2C3_SDA__GPT3_CLK                                           = IOMUX_PAD(0x0490, 0x0228, 2, 0x0000, 0, 0),
 	IMX8MN_PAD_I2C3_SDA__ECSPI2_MOSI                                        = IOMUX_PAD(0x0490, 0x0228, 3, 0x0590, 2, 0),
 	IMX8MN_PAD_I2C3_SDA__GPIO5_IO19                                         = IOMUX_PAD(0x0490, 0x0228, 5, 0x0000, 0, 0),
 
-	IMX8MN_PAD_I2C4_SCL__I2C4_SCL                                           = IOMUX_PAD(0x0494, 0x022C, 0, 0x05D4, 0, 0),
+	IMX8MN_PAD_I2C4_SCL__I2C4_SCL                                           = IOMUX_PAD(0x0494, 0x022C, 0 | IOMUX_CONFIG_SION, 0x05D4, 0, 0),
 	IMX8MN_PAD_I2C4_SCL__PWM2_OUT                                           = IOMUX_PAD(0x0494, 0x022C, 1, 0x0000, 0, 0),
 	IMX8MN_PAD_I2C4_SCL__ECSPI2_MISO                                        = IOMUX_PAD(0x0494, 0x022C, 3, 0x0578, 2, 0),
 	IMX8MN_PAD_I2C4_SCL__GPIO5_IO20                                         = IOMUX_PAD(0x0494, 0x022C, 5, 0x0000, 0, 0),
 
-	IMX8MN_PAD_I2C4_SDA__I2C4_SDA                                           = IOMUX_PAD(0x0498, 0x0230, 0, 0x058C, 0, 0),
+	IMX8MN_PAD_I2C4_SDA__I2C4_SDA                                           = IOMUX_PAD(0x0498, 0x0230, 0 | IOMUX_CONFIG_SION, 0x058C, 0, 0),
 	IMX8MN_PAD_I2C4_SDA__PWM1_OUT                                           = IOMUX_PAD(0x0498, 0x0230, 1, 0x0000, 0, 0),
 	IMX8MN_PAD_I2C4_SDA__ECSPI2_SS0                                         = IOMUX_PAD(0x0498, 0x0230, 3, 0x0570, 1, 0),
 	IMX8MN_PAD_I2C4_SDA__GPIO5_IO21                                         = IOMUX_PAD(0x0498, 0x0230, 5, 0x0000, 0, 0),
-- 
2.39.2




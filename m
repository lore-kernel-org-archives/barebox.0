Delivery-date: Thu, 27 Nov 2025 15:19:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOcql-005SAX-0F
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 15:19:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOcqk-0002rX-GR
	for lore@pengutronix.de; Thu, 27 Nov 2025 15:19:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7eWM4kJgRuvMJL8Lilf8mj66MY85hPY4twEWQQlsKHo=; b=cdHx6tSTScFeG0
	+G+QjeyN4ZibI161amBGlaLBcZFs5OdwFu7qLRN3g0FMooKRRS4vmTqfFbFhFH0LTLxAWG+pNjzhD
	fWdw26FKeU70Xb3i/EC7HfFHCad4lSEGBlOJ6V33/OhVgQ8Q9RVtRlfcG53QWqqeX0yFh/hTqiIE1
	jFCqBrynTuKNoHGk/phw7zoGvNLw5lCi5kOHpasgAPJLJmXpRPg/XNvuuRfM2oTIpLIF7VjoC8BEd
	jiclk/aXiDSZsRctRMBlM0lN6k8FuaANNIO/OBu7A8qtfnvp+avSCiJcRFCQwARsJfDjvBy7bC3cn
	8y3sNBm2G7Pxk1NnNOsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOcqN-0000000Gm2m-1S7Z;
	Thu, 27 Nov 2025 14:19:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOcqK-0000000Gm1m-19wg
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 14:19:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vOcqG-0002l7-TT; Thu, 27 Nov 2025 15:19:28 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vOcqG-002nwe-2K;
	Thu, 27 Nov 2025 15:19:28 +0100
Received: from localhost ([::1] helo=dude04.red.stw.pengutronix.de)
	by dude04.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vOcqG-00000005kBq-2mBm;
	Thu, 27 Nov 2025 15:19:28 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Thu, 27 Nov 2025 15:19:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251127-imx93-dt-v1-1-62e9fcc32770@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAO9dKGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDQyNz3czcCktj3ZQSXYtUA3MDc+MUYyODVCWg8oKi1LTMCrBR0bG1tQB
 mTmtzWgAAAA==
X-Change-ID: 20251127-imx93-dt-8e07073d320e
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2700;
 i=m.grzeschik@pengutronix.de; h=from:subject:message-id;
 bh=pe2cQUbxDGb5Aez6gsmJ6xZeMWOctS3pD2rfcDCUsEU=;
 b=owEBbQKS/ZANAwAKAb9pWET5cfSrAcsmYgBpKF3w7LJoTWCogxvJzD+2SXLsqFwZpQK0V4xUJ
 5Buiv1CHcCJAjMEAAEKAB0WIQQV2+2Fpbqd6fvv0Gi/aVhE+XH0qwUCaShd8AAKCRC/aVhE+XH0
 qzL+D/46ZIOwFcfT6cUw8V41liVHdrS781N24BPXNcDHuDXwCaiuCVBZ4ijwZTrhS+3eya17ZoM
 MvhDU/W6I9dia5RqeYo50dgB5U8PkEFVbT834xPcfUtT6Pea+As5gxTkTDGqctJrpmMplM7qz7r
 JXR6Km3IcdKJfDMlvigDkMzE8CGabSluWupIdeBDvkcCIY/hNFwJMAeK0Cttb+yQRLU67JPhbV4
 7u81uygVE5rBpCU/H5ulmygG6Xr72nhM+AP2pIjhG1taHWUxfEXePQ1tn/BT+9zd/NrR9oIAJD7
 ct4CGImMhm0UQqLeftrltUxnI6uJlg6ObWs1mWVEiSpmk9BDZbHz/ymOH9p0lOnzhbNnFQ44SlT
 NOJR2jy1UOhBaEXw4IPXg0zdiYIEAaA+W2/1rYSDLTdnaTZwv3eeJ+YJxhggQ8DrwA5GLYciNwF
 y6YhosrZutH7DR3QUzd1JOMx72iETK5S7NeUNbKEW0iZzYIW5Uzxb9HouYroW+rucz3qLkdBO7f
 rkZuxVwNFM4XrmZNjtvqkwtczl3mPH4g8TaMaGLni+R6TQ+vGeT7EmbBJyIZp3J/3DKSdRym2xf
 I/XhzpNn/Wcx6d/A8eXl3tU8k1M8+ztnyvBTbkYvSZQT5qGVHbqd4l4EoOq0XwEuoIZMaHtsik/
 1dkHGmVHx6ncoVA==
X-Developer-Key: i=m.grzeschik@pengutronix.de; a=openpgp;
 fpr=957BC452CE953D7EA60CF4FC0BE9E3157A1E2C64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_061932_321625_87BB3831 
X-CRM114-Status: UNSURE (   7.83  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] arm: dts: imx93: Add LCDIF & LDB nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

LCDIF port 1 is directly attached to the LVDS Display Bridge (LDB).
Both need the same clock source (VIDEO_PLL1).

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/dts/imx93.dtsi | 64 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/arch/arm/dts/imx93.dtsi b/arch/arm/dts/imx93.dtsi
index e1328de672438ffc8a3b785a3fb76168ced8dbdb..72059a39e4aefa21b18641b17a91c7a46ee05b4a 100644
--- a/arch/arm/dts/imx93.dtsi
+++ b/arch/arm/dts/imx93.dtsi
@@ -45,5 +45,69 @@ ddrc: memory-controller@4e300000 {
 			compatible = "fsl,imx93-ddrc";
 			reg = <0x4e300000 0x400000>;
 		};
+
+		system-controller@4ac10000 {
+			#address-cells = <1>;
+			#size-cells = <1>;
+			assigned-clocks = <&clk IMX93_CLK_MEDIA_AXI>,
+					  <&clk IMX93_CLK_MEDIA_APB>,
+					  <&clk IMX93_CLK_VIDEO_PLL>,
+					  <&clk IMX93_CLK_MEDIA_DISP_PIX>;
+			assigned-clock-parents = <&clk IMX93_CLK_SYS_PLL_PFD1>,
+						 <&clk IMX93_CLK_SYS_PLL_PFD1_DIV2>,
+						 <&clk IMX93_CLK_24M>,
+						 <&clk IMX93_CLK_VIDEO_PLL>;
+			assigned-clock-rates = <400000000>, <133333333>;
+
+			lvds_bridge: bridge@20 {
+				compatible = "fsl,imx93-ldb";
+				reg = <0x20 0x4>, <0x24 0x4>;
+				reg-names = "ldb", "lvds";
+				clocks = <&clk IMX93_CLK_LVDS_GATE>;
+				clock-names = "ldb";
+				assigned-clocks = <&clk IMX93_CLK_MEDIA_LDB>;
+				assigned-clock-parents = <&clk IMX93_CLK_VIDEO_PLL>;
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						ldb_from_lcdif: endpoint {
+							remote-endpoint = <&lcdif_to_ldb>;
+						};
+					};
+				};
+			};
+		};
+
+		lcdif: display-controller@4ae30000 {
+			compatible = "fsl,imx93-lcdif";
+			reg = <0x4ae30000 0x23c>;
+			interrupts = <GIC_SPI 176 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk IMX93_CLK_MEDIA_DISP_PIX>,
+				 <&clk IMX93_CLK_LCDIF_GATE>,
+				 <&clk IMX93_CLK_MEDIA_AXI>;
+			clock-names = "pix", "axi", "disp_axi";
+			assigned-clocks = <&clk IMX93_CLK_VIDEO_PLL>,
+					  <&clk IMX93_CLK_MEDIA_DISP_PIX>;
+			assigned-clock-parents = <&clk IMX93_CLK_24M>,
+						 <&clk IMX93_CLK_VIDEO_PLL>;
+			power-domains = <&media_blk_ctrl IMX93_MEDIABLK_PD_LCDIF>;
+			status = "disabled";
+
+			port {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				lcdif_to_ldb: endpoint@1 {
+					reg = <1>;
+					remote-endpoint = <&ldb_from_lcdif>;
+				};
+			};
+		};
 	};
 };

---
base-commit: 01508643e4a4bf685cb3e4b1d81e1501c99d7847
change-id: 20251127-imx93-dt-8e07073d320e

Best regards,
-- 
Michael Grzeschik <m.grzeschik@pengutronix.de>




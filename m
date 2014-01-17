Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4Axp-0003KJ-B5
 for barebox@lists.infradead.org; Fri, 17 Jan 2014 15:04:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 17 Jan 2014 16:03:28 +0100
Message-Id: <1389971012-22977-19-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
References: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 18/22] ARM: phycard-i.MX27: Add stdout-path property
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx27-phytec-phycard-s-som.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/imx27-phytec-phycard-s-som.dts b/arch/arm/dts/imx27-phytec-phycard-s-som.dts
index 92c7f6c..c0341da 100644
--- a/arch/arm/dts/imx27-phytec-phycard-s-som.dts
+++ b/arch/arm/dts/imx27-phytec-phycard-s-som.dts
@@ -17,6 +17,10 @@
 	model = "Phytec pca100";
 	compatible = "phytec,imx27-pca100", "fsl,imx27";
 
+	chosen {
+		linux,stdout-path = &uart1;
+	};
+
 	memory {
 		reg = <0xa0000000 0x08000000>; /* 128MB */
 	};
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOTAg-00055T-Lu
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 14:33:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 15:32:23 +0100
Message-Id: <1394807569-23620-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
References: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/29] ARM: dts: i.MX6: Add IPU aliases
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6q.dtsi   | 1 +
 arch/arm/dts/imx6qdl.dtsi | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/dts/imx6q.dtsi b/arch/arm/dts/imx6q.dtsi
index 52a9a2b..f9378fa 100644
--- a/arch/arm/dts/imx6q.dtsi
+++ b/arch/arm/dts/imx6q.dtsi
@@ -16,6 +16,7 @@
 / {
 	aliases {
 		spi4 = &ecspi5;
+		ipu1 = &ipu2;
 	};
 
 	cpus {
diff --git a/arch/arm/dts/imx6qdl.dtsi b/arch/arm/dts/imx6qdl.dtsi
index 70424d2..5160db4 100644
--- a/arch/arm/dts/imx6qdl.dtsi
+++ b/arch/arm/dts/imx6qdl.dtsi
@@ -45,6 +45,7 @@
 		spi3 = &ecspi4;
 		usbphy0 = &usbphy1;
 		usbphy1 = &usbphy2;
+		ipu0 = &ipu1;
 	};
 
 	intc: interrupt-controller@00a01000 {
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

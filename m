Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VBhub-0006R2-7D
 for barebox@lists.infradead.org; Tue, 20 Aug 2013 09:07:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Aug 2013 11:07:14 +0200
Message-Id: <1376989634-13909-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1376989634-13909-1-git-send-email-s.hauer@pengutronix.de>
References: <1376989634-13909-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: dts: imx53 qsb: remove wrong memory bank
To: barebox@lists.infradead.org

The i.MX53 qsb has 1GiB of memory, but it's divided into two non
contigous banks. Remove the wrong memory node since it's overwritten
with the correct values during wuntime anyway.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx53-qsb.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/dts/imx53-qsb.dts b/arch/arm/dts/imx53-qsb.dts
index 3be4ff2..f988ca9 100644
--- a/arch/arm/dts/imx53-qsb.dts
+++ b/arch/arm/dts/imx53-qsb.dts
@@ -26,10 +26,6 @@
 		};
 	};
 
-	memory {
-		reg = <0x70000000 0x40000000>;
-	};
-
 	display@di0 {
 		compatible = "fsl,imx-parallel-display";
 		crtcs = <&ipu 0>;
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

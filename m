Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ViMfY-0007iH-O4
 for barebox@lists.infradead.org; Mon, 18 Nov 2013 11:07:07 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Mon, 18 Nov 2013 12:06:34 +0100
Message-Id: <1384772798-3297-3-git-send-email-p.zabel@pengutronix.de>
In-Reply-To: <1384772798-3297-1-git-send-email-p.zabel@pengutronix.de>
References: <1384772798-3297-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: [PATCH 3/6] ARM i.MX6: sabrelite: use &uart2 instead of hard-coding
 path
To: barebox@lists.infradead.org
Cc: Philipp Zabel <p.zabel@pengutronix.de>

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 arch/arm/dts/imx6q-sabrelite.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/dts/imx6q-sabrelite.dts b/arch/arm/dts/imx6q-sabrelite.dts
index 9f82220..1368ef1 100644
--- a/arch/arm/dts/imx6q-sabrelite.dts
+++ b/arch/arm/dts/imx6q-sabrelite.dts
@@ -18,7 +18,7 @@
 	compatible = "fsl,imx6q-sabrelite", "fsl,imx6q";
 
 	chosen {
-		linux,stdout-path = "/soc/aips-bus@02100000/serial@021e8000";
+		linux,stdout-path = &uart2;
 	};
 
 	memory {
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

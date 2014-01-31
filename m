Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W9F0W-0001GM-Tg
 for barebox@lists.infradead.org; Fri, 31 Jan 2014 14:23:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Jan 2014 15:23:19 +0100
Message-Id: <1391178204-20889-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1391178204-20889-1-git-send-email-s.hauer@pengutronix.de>
References: <1391178204-20889-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/15] ARM: dts: Karo TX25: add missing nfc properties
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx25-karo-tx25.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/dts/imx25-karo-tx25.dts b/arch/arm/dts/imx25-karo-tx25.dts
index c82df09..b142445 100644
--- a/arch/arm/dts/imx25-karo-tx25.dts
+++ b/arch/arm/dts/imx25-karo-tx25.dts
@@ -86,5 +86,7 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_nfc>;
 	nand-on-flash-bbt;
+	nand-ecc-mode = "hw";
+	nand-bus-width = <8>;
 	status = "okay";
 };
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

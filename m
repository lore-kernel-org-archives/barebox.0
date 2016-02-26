Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aZO9o-0001Jk-Oj
 for barebox@lists.infradead.org; Fri, 26 Feb 2016 19:34:33 +0000
Received: from tellur.intern.lynxeye.de (p57B5F336.dip0.t-ipconnect.de
 [87.181.243.54]) by lynxeye.de (Postfix) with ESMTPA id 5FDA426C2001
 for <barebox@lists.infradead.org>; Fri, 26 Feb 2016 20:33:39 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 26 Feb 2016 20:33:34 +0100
Message-Id: <1456515215-32763-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 1/2] ARM: tegra: beaver: add missing serial alias
To: barebox@lists.infradead.org

Upstream has dropped those from the base dtsi, as long as we can't
fully switch to the upstream board DT add the correct alias to the
barebox copy.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/tegra30-beaver.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/dts/tegra30-beaver.dts b/arch/arm/dts/tegra30-beaver.dts
index 91e1354..3e7f879 100644
--- a/arch/arm/dts/tegra30-beaver.dts
+++ b/arch/arm/dts/tegra30-beaver.dts
@@ -10,6 +10,7 @@
 	aliases {
 		rtc0 = "/i2c@7000d000/tps65911@2d";
 		rtc1 = "/rtc@7000e000";
+		serial0 = &uarta;
 	};
 
 	chosen {
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

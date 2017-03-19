Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cpdvW-00023i-KU
 for barebox@lists.infradead.org; Sun, 19 Mar 2017 16:43:32 +0000
Received: from tellur.intern.lynxeye.de.fritz.box (a89-183-7-62.net-htp.de
 [89.183.7.62]) by lynxeye.de (Postfix) with ESMTPA id E91A6E743D1
 for <barebox@lists.infradead.org>; Sun, 19 Mar 2017 17:31:55 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 19 Mar 2017 17:31:51 +0100
Message-Id: <20170319163151.13403-3-dev@lynxeye.de>
In-Reply-To: <20170319163151.13403-1-dev@lynxeye.de>
References: <20170319163151.13403-1-dev@lynxeye.de>
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
Subject: [PATCH 3/3] ARM: tegra: jetson-tk1: use phandle for stdout path
To: barebox@lists.infradead.org

Now that the UARTs have phandles in the upstream DT, we can
make use of them in Barebox.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/tegra124-jetson-tk1.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/dts/tegra124-jetson-tk1.dts b/arch/arm/dts/tegra124-jetson-tk1.dts
index e1974db..00ae58f 100644
--- a/arch/arm/dts/tegra124-jetson-tk1.dts
+++ b/arch/arm/dts/tegra124-jetson-tk1.dts
@@ -3,7 +3,7 @@
 
 / {
 	chosen {
-		stdout-path = "/serial@0,70006300/";
+		stdout-path = &uartd;
 
 		environment@0 {
 			compatible = "barebox,environment";
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

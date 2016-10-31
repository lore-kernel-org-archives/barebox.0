Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c1K8H-0005af-I1
 for barebox@lists.infradead.org; Mon, 31 Oct 2016 21:28:42 +0000
Received: from tellur.fritz.box (a89-183-118-206.net-htp.de [89.183.118.206])
 by lynxeye.de (Postfix) with ESMTPA id 1575C26C2001
 for <barebox@lists.infradead.org>; Mon, 31 Oct 2016 22:20:23 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 31 Oct 2016 22:20:19 +0100
Message-Id: <1477948819-13931-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH] ARM: riotboard: fix barebox partition size
To: barebox@lists.infradead.org

This was missed when updating all the partition sizes. The
environment partition has been moved to the correct location,
but the barebox partition size remained unchanged.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/imx6s-riotboard.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/dts/imx6s-riotboard.dts b/arch/arm/dts/imx6s-riotboard.dts
index 7193f28..5758872 100644
--- a/arch/arm/dts/imx6s-riotboard.dts
+++ b/arch/arm/dts/imx6s-riotboard.dts
@@ -29,7 +29,7 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
 	environment_usdhc4: partition@e0000 {
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

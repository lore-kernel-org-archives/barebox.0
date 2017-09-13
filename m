Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ds8T9-0000zi-Dg
 for barebox@lists.infradead.org; Wed, 13 Sep 2017 14:16:54 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 13 Sep 2017 16:16:01 +0200
Message-Id: <20170913141606.14508-6-linux@rempel-privat.de>
In-Reply-To: <20170913141606.14508-1-linux@rempel-privat.de>
References: <20170913141606.14508-1-linux@rempel-privat.de>
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
Subject: [PATCH v2 05/10] MIPS: dts: tl_wdr4300: add alias for spiflash
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

to unify the naming with TP-Link TL-MR3020.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/dts/ar9344_tl_wdr4300.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/dts/ar9344_tl_wdr4300.dts b/arch/mips/dts/ar9344_tl_wdr4300.dts
index 5a4a6f379..c784e6cb4 100644
--- a/arch/mips/dts/ar9344_tl_wdr4300.dts
+++ b/arch/mips/dts/ar9344_tl_wdr4300.dts
@@ -11,6 +11,7 @@
 
 	aliases {
 		serial0 = &uart0;
+		spiflash = &spiflash;
 	};
 
 	memory@0 {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

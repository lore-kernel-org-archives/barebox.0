Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dlrb9-0002Z7-8Z
 for barebox@lists.infradead.org; Sun, 27 Aug 2017 07:03:12 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Sun, 27 Aug 2017 09:02:22 +0200
Message-Id: <20170827070230.13382-3-linux@rempel-privat.de>
In-Reply-To: <20170827070230.13382-1-linux@rempel-privat.de>
References: <20170827070230.13382-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 02/10] MIPS: dts: ar9331: update compatible for mac0 node
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

MACs on same chip are too different to have one common compatible

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/dts/ar9331.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/dts/ar9331.dtsi b/arch/mips/dts/ar9331.dtsi
index 109af8664..b4b8b766b 100644
--- a/arch/mips/dts/ar9331.dtsi
+++ b/arch/mips/dts/ar9331.dtsi
@@ -1,7 +1,7 @@
 / {
 	ahb {
 		mac0: mac@19000000 {
-			compatible = "qca,ar7100-gmac", "qca,ar9331-gmac";
+			compatible = "qca,ar9331-ge0";
 			reg = <0x18070000 0x00000100>,
 			      <0x19000000 0x01000000>;
 			reg-names = "gmac", "ge0";
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

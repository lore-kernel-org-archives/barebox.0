Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dejCI-0003rq-BD
 for barebox@lists.infradead.org; Mon, 07 Aug 2017 14:40:01 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Mon,  7 Aug 2017 16:39:25 +0200
Message-Id: <20170807143927.1641-11-linux@rempel-privat.de>
In-Reply-To: <20170807143927.1641-1-linux@rempel-privat.de>
References: <20170807143927.1641-1-linux@rempel-privat.de>
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
Subject: [PATCH v2 11/13] MIPS: ar9344.dtsi: add ag71xx Ethernet driver
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/dts/ar9344.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/mips/dts/ar9344.dtsi b/arch/mips/dts/ar9344.dtsi
index 0838e8d7f..431273c36 100644
--- a/arch/mips/dts/ar9344.dtsi
+++ b/arch/mips/dts/ar9344.dtsi
@@ -49,5 +49,14 @@
 
 			status = "disabled";
 		};
+
+		mac0: mac@19000000 {
+			compatible = "qca,ar7100-gmac", "qca,ar9344-gmac";
+			reg = <0x18070000 0x00000100>,
+				<0x19000000 0x01000000>;
+			reg-names = "gmac", "ge0";
+			phy-mode = "mii";
+			status = "disabled";
+		};
 	};
 };
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ds8T5-0000zP-TS
 for barebox@lists.infradead.org; Wed, 13 Sep 2017 14:16:49 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 13 Sep 2017 16:15:58 +0200
Message-Id: <20170913141606.14508-3-linux@rempel-privat.de>
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
Subject: [PATCH v2 02/10] add ar9331.dtsi and enable mac0
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/dts/ar9331.dtsi       | 12 ++++++++++++
 arch/mips/dts/tplink-mr3020.dts |  5 +++++
 2 files changed, 17 insertions(+)
 create mode 100644 arch/mips/dts/ar9331.dtsi

diff --git a/arch/mips/dts/ar9331.dtsi b/arch/mips/dts/ar9331.dtsi
new file mode 100644
index 000000000..b4b8b766b
--- /dev/null
+++ b/arch/mips/dts/ar9331.dtsi
@@ -0,0 +1,12 @@
+/ {
+	ahb {
+		mac0: mac@19000000 {
+			compatible = "qca,ar9331-ge0";
+			reg = <0x18070000 0x00000100>,
+			      <0x19000000 0x01000000>;
+			reg-names = "gmac", "ge0";
+			phy-mode = "mii";
+			status = "disabled";
+               };
+	};
+};
diff --git a/arch/mips/dts/tplink-mr3020.dts b/arch/mips/dts/tplink-mr3020.dts
index eaae11edd..6f1ad1350 100644
--- a/arch/mips/dts/tplink-mr3020.dts
+++ b/arch/mips/dts/tplink-mr3020.dts
@@ -1,4 +1,5 @@
 #include <mips/qca/ar9331_tl_mr3020.dts>
+#include "ar9331.dtsi"
 
 / {
 	aliases {
@@ -24,3 +25,7 @@
 		reg = <0x80000 0x10000>;
 	};
 };
+
+&mac0 {
+	status = "okay";
+};
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

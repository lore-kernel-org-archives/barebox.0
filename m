Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WiQLA-0008GG-If
 for barebox@lists.infradead.org; Thu, 08 May 2014 15:34:33 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Thu,  8 May 2014 17:33:59 +0200
Message-Id: <1399563239-3960-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH] ARM: dts: i.MX53: tqma53: Readd barebox specifics
To: barebox@lists.infradead.org

Some of the barebox specific changes that were added in commit
e0316b4dd7d6169f1f6e15d97d7f605e05dc265e got lost during the switch to use
upstream dtsi files in commit bb7cf71cff6369beb0b3010028541d5e7a69e4d2.

Especially the memory size is important since we have two different memory
sizes which have to be handled.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 arch/arm/dts/imx53-tqma53.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/dts/imx53-tqma53.dtsi b/arch/arm/dts/imx53-tqma53.dtsi
index 1deb0ce..6880f2c 100644
--- a/arch/arm/dts/imx53-tqma53.dtsi
+++ b/arch/arm/dts/imx53-tqma53.dtsi
@@ -21,6 +21,14 @@
 			status = "disabled";
 		};
 	};
+
+	memory {
+		reg = <0x70000000 0x0>; /* Up to 1GiB */
+	};
+};
+
+&esdhc3 { /* EMMC */
+	dsr = <0x100>;
 };
 
 &iim {
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZeW95-0007M9-Io
 for barebox@lists.infradead.org; Tue, 22 Sep 2015 22:34:44 +0000
Received: by lacao8 with SMTP id ao8so7433366lac.3
 for <barebox@lists.infradead.org>; Tue, 22 Sep 2015 15:34:21 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 23 Sep 2015 01:34:10 +0300
Message-Id: <1442961253-24762-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1442961253-24762-1-git-send-email-antonynpavlov@gmail.com>
References: <1442961253-24762-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/6] MIPS: dts: ar9331.dtsi: add gpio
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/ar9331.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/mips/dts/ar9331.dtsi b/arch/mips/dts/ar9331.dtsi
index 8e7afcd..99ede9e 100644
--- a/arch/mips/dts/ar9331.dtsi
+++ b/arch/mips/dts/ar9331.dtsi
@@ -17,6 +17,16 @@
 			status = "disabled";
 		};
 
+		gpio: gpio@18040000 {
+			compatible = "qca,ar7100-gpio";
+			gpio-controller;
+			reg = <0x18040000 0x100>;
+			#gpio-cells = <2>;
+
+			ngpios = <30>;
+			status = "disabled";
+		};
+
 		ar9331_clk: clock {
 			compatible = "qca,ar933x-clk";
 			reg = <0x18050000 0x48>;
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

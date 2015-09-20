Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zdny9-0006E1-PN
 for barebox@lists.infradead.org; Sun, 20 Sep 2015 23:24:30 +0000
Received: by lbbvu2 with SMTP id vu2so43526710lbb.0
 for <barebox@lists.infradead.org>; Sun, 20 Sep 2015 16:24:08 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-254-180.pppoe.spdop.ru.
 [79.139.254.180])
 by smtp.gmail.com with ESMTPSA id x1sm3091424lbb.32.2015.09.20.16.24.07
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 20 Sep 2015 16:24:07 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 21 Sep 2015 02:23:52 +0300
Message-Id: <1442791433-10892-10-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1442791433-10892-1-git-send-email-antonynpavlov@gmail.com>
References: <1442791433-10892-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC v2 09/10] MIPS: dts: ar9331.dtsi: add gpio
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

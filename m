Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bCa95-0001xv-CH
 for barebox@lists.infradead.org; Mon, 13 Jun 2016 22:15:48 +0000
Received: by mail-lf0-x241.google.com with SMTP id j191so3031090lfb.3
 for <barebox@lists.infradead.org>; Mon, 13 Jun 2016 15:15:26 -0700 (PDT)
Received: from localhost.localdomain (ppp109-252-109-196.pppoe.spdop.ru.
 [109.252.109.196])
 by smtp.gmail.com with ESMTPSA id k6sm1295064lbd.49.2016.06.13.15.15.24
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 13 Jun 2016 15:15:24 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 14 Jun 2016 01:15:04 +0300
Message-Id: <1465856107-24133-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1465856107-24133-1-git-send-email-antonynpavlov@gmail.com>
References: <1465856107-24133-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/6] MIPS: ath79: dts: sync uart stuff with linux v4.7-rc2
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/ar9331.dtsi       | 2 +-
 arch/mips/dts/black-swift.dts   | 2 +-
 arch/mips/dts/tplink-mr3020.dts | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/mips/dts/ar9331.dtsi b/arch/mips/dts/ar9331.dtsi
index 4d43087..05ef93f 100644
--- a/arch/mips/dts/ar9331.dtsi
+++ b/arch/mips/dts/ar9331.dtsi
@@ -15,7 +15,7 @@
 		device_type = "soc";
 		ranges;
 
-		serial0: serial@18020000 {
+		uart: uart@18020000 {
 			compatible = "qca,ar9330-uart";
 			reg = <0x18020000 0x14>;
 			clocks = <&ref>;
diff --git a/arch/mips/dts/black-swift.dts b/arch/mips/dts/black-swift.dts
index aa0aeae..6be228d 100644
--- a/arch/mips/dts/black-swift.dts
+++ b/arch/mips/dts/black-swift.dts
@@ -41,7 +41,7 @@
 	clock-frequency = <25000000>;
 };
 
-&serial0 {
+&uart {
 	status = "okay";
 };
 
diff --git a/arch/mips/dts/tplink-mr3020.dts b/arch/mips/dts/tplink-mr3020.dts
index a315713..f6799f1 100644
--- a/arch/mips/dts/tplink-mr3020.dts
+++ b/arch/mips/dts/tplink-mr3020.dts
@@ -48,7 +48,7 @@
 	clock-frequency = <25000000>;
 };
 
-&serial0 {
+&uart {
 	status = "okay";
 };
 
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

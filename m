Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLvd-0006AZ-ML
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 18:48:08 +0000
Received: by mail-pf1-x435.google.com with SMTP id i13so10746798pfe.3
 for <barebox@lists.infradead.org>; Tue, 31 Mar 2020 11:48:01 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 Mar 2020 11:47:21 -0700
Message-Id: <20200331184722.22707-23-andrew.smirnov@gmail.com>
In-Reply-To: <20200331184722.22707-1-andrew.smirnov@gmail.com>
References: <20200331184722.22707-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 22/23] ARM: zii-imx7d-rmu2: Add SPI NOR partition info
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add SPI NOR partition info necessary for SPI BBU target to work.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx7d-zii-rmu2.dts | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/dts/imx7d-zii-rmu2.dts b/arch/arm/dts/imx7d-zii-rmu2.dts
index de330c413..7bb0ab264 100644
--- a/arch/arm/dts/imx7d-zii-rmu2.dts
+++ b/arch/arm/dts/imx7d-zii-rmu2.dts
@@ -6,3 +6,20 @@
 
 #include <arm/imx7d-zii-rmu2.dts>
 #include "imx7d-ddrc.dtsi"
+
+&ecspi1 {
+	nor_flash: flash@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0xc0000>;
+		};
+
+		partition@c0000 {
+			label = "barebox-environment";
+			reg = <0xc0000 0x40000>;
+		};
+	};
+};
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x244.google.com ([2607:f8b0:400e:c01::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fs07s-0000A9-Ea
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 06:26:56 +0000
Received: by mail-pl0-x244.google.com with SMTP id j8-v6so8277029pll.12
 for <barebox@lists.infradead.org>; Mon, 20 Aug 2018 23:26:40 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: [PATCH 15/22] ARM: i.MX: zii-vf610-dev-rev-b/c: Add support for BBU
 on SPI-NOR
Date: Mon, 20 Aug 2018 23:25:56 -0700
Message-Id: <20180821062603.17393-16-andrew.smirnov@gmail.com>
In-Reply-To: <20180821062603.17393-1-andrew.smirnov@gmail.com>
References: <20180821062603.17393-1-andrew.smirnov@gmail.com>
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
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-vf610-dev/board.c | 19 +++++++++++++++++++
 arch/arm/dts/vf610-zii-dev-rev-b.dts  | 11 +++++++++++
 2 files changed, 30 insertions(+)

diff --git a/arch/arm/boards/zii-vf610-dev/board.c b/arch/arm/boards/zii-vf610-dev/board.c
index d88b26164..818044ce6 100644
--- a/arch/arm/boards/zii-vf610-dev/board.c
+++ b/arch/arm/boards/zii-vf610-dev/board.c
@@ -149,6 +149,25 @@ static int zii_vf610_dev_set_hostname(void)
 }
 late_initcall(zii_vf610_dev_set_hostname);
 
+static int zii_vf610_dev_register_bbu(void)
+{
+	int ret;
+	if (!of_machine_is_compatible("zii,vf610dev-c") &&
+	    !of_machine_is_compatible("zii,vf610dev-b"))
+		return 0;
+
+	ret = vf610_bbu_internal_spi_i2c_register_handler("SPI",
+							  "/dev/m25p0.bootloader",
+							  0);
+	if (ret) {
+		pr_err("Failed to register SPI BBU handler");
+		return ret;
+	}
+
+	return 0;
+}
+late_initcall(zii_vf610_dev_register_bbu);
+
 static int zii_vf610_spu3_register_bbu(void)
 {
 	int ret;
diff --git a/arch/arm/dts/vf610-zii-dev-rev-b.dts b/arch/arm/dts/vf610-zii-dev-rev-b.dts
index 1eb01f44a..ac0807c49 100644
--- a/arch/arm/dts/vf610-zii-dev-rev-b.dts
+++ b/arch/arm/dts/vf610-zii-dev-rev-b.dts
@@ -45,3 +45,14 @@
 #include <arm/vf610-zii-dev-rev-b.dts>
 
 #include "vf610-zii-dev.dtsi"
+
+/ {
+	spi0 {
+		m25p128@0 {
+			partition@0 {
+				label = "bootloader";
+				reg = <0x0 0x100000>;
+			};
+		};
+	};
+};
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

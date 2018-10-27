Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGDSn-0000uM-S0
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 01:33:11 +0000
Received: by mail-pf1-x444.google.com with SMTP id j23-v6so1350867pfi.4
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 18:32:19 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 26 Oct 2018 18:31:56 -0700
Message-Id: <20181027013157.23135-11-andrew.smirnov@gmail.com>
In-Reply-To: <20181027013157.23135-1-andrew.smirnov@gmail.com>
References: <20181027013157.23135-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 10/11] VF610: zii-vf610-dev: Replace board code with gpio-hog
 nodes
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-vf610-dev/board.c | 56 ---------------------------
 arch/arm/dts/vf610-zii-cfu1.dts       | 25 ++++++++++++
 arch/arm/dts/vf610-zii-ssmb-spu3.dts  |  9 +++++
 3 files changed, 34 insertions(+), 56 deletions(-)

diff --git a/arch/arm/boards/zii-vf610-dev/board.c b/arch/arm/boards/zii-vf610-dev/board.c
index a8fa1ef61..cb4216272 100644
--- a/arch/arm/boards/zii-vf610-dev/board.c
+++ b/arch/arm/boards/zii-vf610-dev/board.c
@@ -22,62 +22,6 @@
 #include <envfs.h>
 #include <mach/bbu.h>
 
-
-static int expose_signals(const struct gpio *signals,
-			  size_t signal_num)
-{
-	int ret, i;
-
-	ret = gpio_request_array(signals, signal_num);
-	if (ret)
-		return ret;
-
-	for (i = 0; i < signal_num; i++)
-		export_env_ull(signals[i].label, signals[i].gpio);
-
-	return 0;
-}
-
-static int zii_vf610_cfu1_expose_signals(void)
-{
-	static const struct gpio signals[] = {
-		{
-			.gpio  = 132,
-			.flags = GPIOF_IN,
-			.label = "fim_sd",
-		},
-		{
-			.gpio  = 118,
-			.flags = GPIOF_OUT_INIT_LOW,
-			.label = "fim_tdis",
-		},
-	};
-
-	if (!of_machine_is_compatible("zii,vf610cfu1"))
-		return 0;
-
-	return expose_signals(signals, ARRAY_SIZE(signals));
-}
-late_initcall(zii_vf610_cfu1_expose_signals);
-
-static int zii_vf610_cfu1_spu3_expose_signals(void)
-{
-	static const struct gpio signals[] = {
-		{
-			.gpio  = 98,
-			.flags = GPIOF_IN,
-			.label = "e6352_intn",
-		},
-	};
-
-	if (!of_machine_is_compatible("zii,vf610spu3") &&
-	    !of_machine_is_compatible("zii,vf610cfu1"))
-		return 0;
-
-	return expose_signals(signals, ARRAY_SIZE(signals));
-}
-late_initcall(zii_vf610_cfu1_spu3_expose_signals);
-
 static int zii_vf610_dev_print_clocks(void)
 {
 	int i;
diff --git a/arch/arm/dts/vf610-zii-cfu1.dts b/arch/arm/dts/vf610-zii-cfu1.dts
index 149333596..74ec9fd1d 100644
--- a/arch/arm/dts/vf610-zii-cfu1.dts
+++ b/arch/arm/dts/vf610-zii-cfu1.dts
@@ -19,3 +19,28 @@
 	};
 };
 
+
+&gpio3 {
+	fim-tdis {
+		gpio-hog;
+		gpios = <22 GPIO_ACTIVE_HIGH>;
+		output-low;
+		line-name = "fim_tdis";
+	};
+
+	e6352-intn {
+		gpio-hog;
+		gpios = <2 GPIO_ACTIVE_HIGH>;
+		input;
+		line-name = "e6352_intn";
+	};
+};
+
+&gpio4 {
+	fim-sd {
+		gpio-hog;
+		gpios = <4 GPIO_ACTIVE_HIGH>;
+		input;
+		line-name = "fim_sd";
+	};
+};
\ No newline at end of file
diff --git a/arch/arm/dts/vf610-zii-ssmb-spu3.dts b/arch/arm/dts/vf610-zii-ssmb-spu3.dts
index 5b2460caf..6ffa1d958 100644
--- a/arch/arm/dts/vf610-zii-ssmb-spu3.dts
+++ b/arch/arm/dts/vf610-zii-ssmb-spu3.dts
@@ -14,3 +14,12 @@
 		switch-eeprom = &switch0;
 	};
 };
+
+&gpio3 {
+	e6352-intn {
+		gpio-hog;
+		gpios = <2 GPIO_ACTIVE_HIGH>;
+		input;
+		line-name = "e6352_intn";
+	};
+};
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

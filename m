Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjs8Y-0008F7-Bg
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:55:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:54:34 +0100
Message-Id: <1385132083-7484-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385132083-7484-1-git-send-email-s.hauer@pengutronix.de>
References: <1385132083-7484-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/16] dt-bindings: Add omap/am33xx pinctrl header file
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/dt-bindings/pinctrl/am33xx.h | 42 ++++++++++++++++++++++++++++
 include/dt-bindings/pinctrl/omap.h   | 53 ++++++++++++++++++++++++++++++++++++
 2 files changed, 95 insertions(+)
 create mode 100644 include/dt-bindings/pinctrl/am33xx.h
 create mode 100644 include/dt-bindings/pinctrl/omap.h

diff --git a/include/dt-bindings/pinctrl/am33xx.h b/include/dt-bindings/pinctrl/am33xx.h
new file mode 100644
index 0000000..2fbc804
--- /dev/null
+++ b/include/dt-bindings/pinctrl/am33xx.h
@@ -0,0 +1,42 @@
+/*
+ * This header provides constants specific to AM33XX pinctrl bindings.
+ */
+
+#ifndef _DT_BINDINGS_PINCTRL_AM33XX_H
+#define _DT_BINDINGS_PINCTRL_AM33XX_H
+
+#include <dt-bindings/pinctrl/omap.h>
+
+/* am33xx specific mux bit defines */
+#undef PULL_ENA
+#undef INPUT_EN
+
+#define PULL_DISABLE		(1 << 3)
+#define INPUT_EN		(1 << 5)
+#define SLEWCTRL_FAST		(1 << 6)
+
+/* update macro depending on INPUT_EN and PULL_ENA */
+#undef PIN_OUTPUT
+#undef PIN_OUTPUT_PULLUP
+#undef PIN_OUTPUT_PULLDOWN
+#undef PIN_INPUT
+#undef PIN_INPUT_PULLUP
+#undef PIN_INPUT_PULLDOWN
+
+#define PIN_OUTPUT		(PULL_DISABLE)
+#define PIN_OUTPUT_PULLUP	(PULL_UP)
+#define PIN_OUTPUT_PULLDOWN	0
+#define PIN_INPUT		(INPUT_EN | PULL_DISABLE)
+#define PIN_INPUT_PULLUP	(INPUT_EN | PULL_UP)
+#define PIN_INPUT_PULLDOWN	(INPUT_EN)
+
+/* undef non-existing modes */
+#undef PIN_OFF_NONE
+#undef PIN_OFF_OUTPUT_HIGH
+#undef PIN_OFF_OUTPUT_LOW
+#undef PIN_OFF_INPUT_PULLUP
+#undef PIN_OFF_INPUT_PULLDOWN
+#undef PIN_OFF_WAKEUPENABLE
+
+#endif
+
diff --git a/include/dt-bindings/pinctrl/omap.h b/include/dt-bindings/pinctrl/omap.h
new file mode 100644
index 0000000..bed35e3
--- /dev/null
+++ b/include/dt-bindings/pinctrl/omap.h
@@ -0,0 +1,53 @@
+/*
+ * This header provides constants for OMAP pinctrl bindings.
+ *
+ * Copyright (C) 2009 Nokia
+ * Copyright (C) 2009-2010 Texas Instruments
+ */
+
+#ifndef _DT_BINDINGS_PINCTRL_OMAP_H
+#define _DT_BINDINGS_PINCTRL_OMAP_H
+
+/* 34xx mux mode options for each pin. See TRM for options */
+#define MUX_MODE0	0
+#define MUX_MODE1	1
+#define MUX_MODE2	2
+#define MUX_MODE3	3
+#define MUX_MODE4	4
+#define MUX_MODE5	5
+#define MUX_MODE6	6
+#define MUX_MODE7	7
+
+/* 24xx/34xx mux bit defines */
+#define PULL_ENA		(1 << 3)
+#define PULL_UP			(1 << 4)
+#define ALTELECTRICALSEL	(1 << 5)
+
+/* omap3/4/5 specific mux bit defines */
+#define INPUT_EN		(1 << 8)
+#define OFF_EN			(1 << 9)
+#define OFFOUT_EN		(1 << 10)
+#define OFFOUT_VAL		(1 << 11)
+#define OFF_PULL_EN		(1 << 12)
+#define OFF_PULL_UP		(1 << 13)
+#define WAKEUP_EN		(1 << 14)
+#define WAKEUP_EVENT		(1 << 15)
+
+/* Active pin states */
+#define PIN_OUTPUT		0
+#define PIN_OUTPUT_PULLUP	(PIN_OUTPUT | PULL_ENA | PULL_UP)
+#define PIN_OUTPUT_PULLDOWN	(PIN_OUTPUT | PULL_ENA)
+#define PIN_INPUT		INPUT_EN
+#define PIN_INPUT_PULLUP	(PULL_ENA | INPUT_EN | PULL_UP)
+#define PIN_INPUT_PULLDOWN	(PULL_ENA | INPUT_EN)
+
+/* Off mode states */
+#define PIN_OFF_NONE		0
+#define PIN_OFF_OUTPUT_HIGH	(OFF_EN | OFFOUT_EN | OFFOUT_VAL)
+#define PIN_OFF_OUTPUT_LOW	(OFF_EN | OFFOUT_EN)
+#define PIN_OFF_INPUT_PULLUP	(OFF_EN | OFF_PULL_EN | OFF_PULL_UP)
+#define PIN_OFF_INPUT_PULLDOWN	(OFF_EN | OFF_PULL_EN)
+#define PIN_OFF_WAKEUPENABLE	WAKEUP_EN
+
+#endif
+
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

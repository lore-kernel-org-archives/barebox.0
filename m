Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUQi0-0002KI-RZ
 for barebox@lists.infradead.org; Tue, 12 Nov 2019 07:35:31 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Tue, 12 Nov 2019 08:35:23 +0100
Message-Id: <1573544123-338486-2-git-send-email-s.riedmueller@phytec.de>
In-Reply-To: <1573544123-338486-1-git-send-email-s.riedmueller@phytec.de>
References: <1573544123-338486-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH 2/2] ARM: dts: imx6: phycore: Update License,
 copyright and model description
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>

Make use of SPDX license identifiers and update copyright notices and model
descriptions of the phyCORE-i.MX 6 SOM's.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts | 10 ++--------
 arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts | 13 ++++---------
 arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts  | 13 ++++---------
 arch/arm/dts/imx6q-phytec-phycore-som-nand.dts  | 13 ++++---------
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi    | 11 +++--------
 arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts | 12 +++---------
 6 files changed, 20 insertions(+), 52 deletions(-)

diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
index 8ce0066c691d..b2e86eae175a 100644
--- a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
@@ -1,13 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later)
 /*
  * Copyright (C) 2015 PHYTEC Messtechnik GmbH,
  * Author: Stefan Christ <s.christ@phytec.de>
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
  */
 
 /dts-v1/;
@@ -19,7 +13,7 @@
 #include "imx6qdl-phytec-state.dtsi"
 
 / {
-	model = "Phytec phyCORE-i.MX6 DualLite/SOLO with eMMC";
+	model = "PHYTEC phyCORE-i.MX6 DualLite/SOLO with eMMC";
 	compatible = "phytec,imx6dl-pcm058-emmc", "fsl,imx6dl";
 };
 
diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
index 18d14d6b945c..d747c837a535 100644
--- a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
@@ -1,12 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later)
 /*
- * Copyright 2015 Christian Hemp, Phytec Messtechnik GmbH
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
+ * Copyright (C) 2015 PHYTEC Messtechnik GmbH
+ * Author: Christian Hemp <c.hemp@phytec.de>
  */
 
 /dts-v1/;
@@ -18,7 +13,7 @@
 #include "imx6qdl-phytec-state.dtsi"
 
 / {
-	model = "Phytec phyCORE-i.MX6 Duallite/SOLO with NAND";
+	model = "PHYTEC phyCORE-i.MX6 Duallite/SOLO with NAND";
 	compatible = "phytec,imx6dl-pcm058-nand", "fsl,imx6dl";
 };
 
diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
index 2ff4ae7a488a..0acc6493cc51 100644
--- a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
+++ b/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
@@ -1,12 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later)
 /*
- * Copyright 2015 Christian Hemp, Phytec Messtechnik GmbH
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
+ * Copyright (C) 2015 PHYTEC Messtechnik GmbH
+ * Author: Christian Hemp <c.hemp@phytec.de>
  */
 
 /dts-v1/;
@@ -18,7 +13,7 @@
 #include "imx6qdl-phytec-state.dtsi"
 
 / {
-	model = "Phytec phyCORE-i.MX6 Quad with eMMC";
+	model = "PHYTEC phyCORE-i.MX6 Quad with eMMC";
 	compatible = "phytec,imx6q-pcm058-emmc", "fsl,imx6q";
 };
 
diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
index cc5ef7d11d30..12f2b21f3b11 100644
--- a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
@@ -1,12 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later)
 /*
- * Copyright 2015 Christian Hemp, Phytec Messtechnik GmbH
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
+ * Copyright (C) 2015 PHYTEC Messtechnik GmbH
+ * Author: Christian Hemp <c.hemp@phytec.de>
  */
 
 /dts-v1/;
@@ -18,7 +13,7 @@
 #include "imx6qdl-phytec-state.dtsi"
 
 / {
-	model = "Phytec phyCORE-i.MX6 Quad with NAND";
+	model = "PHYTEC phyCORE-i.MX6 Quad with NAND";
 	compatible = "phytec,imx6q-pcm058-nand", "fsl,imx6q";
 
 };
diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
index 3bb21ce8f761..69f252b42382 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -1,12 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later)
 /*
- * Copyright 2015 Christian Hemp, Phytec Messtechnik GmbH
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
+ * Copyright (C) 2015 PHYTEC Messtechnik GmbH
+ * Author: Christian Hemp <c.hemp@phytec.de>
  */
 
 #include <arm/imx6qdl-phytec-phycore-som.dtsi>
diff --git a/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
index 410071192eee..13dbd2cb3b0d 100644
--- a/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
@@ -1,13 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later)
 /*
- * Copyright (C) 2016 Phytec Messtechnik GmbH
+ * Copyright (C) 2016 PHYTEC Messtechnik GmbH
  * Author: Christian Hemp <c.hemp@phytec.de>
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
  */
 
 /dts-v1/;
@@ -16,7 +10,7 @@
 #include "imx6qdl-phytec-mira.dtsi"
 
 / {
-	model = "Phytec phyCORE-i.MX6 Quad with NAND";
+	model = "PHYTEC phyCORE-i.MX6 QuadPlus with NAND";
 	compatible = "phytec,imx6qp-pcm058-nand", "fsl,imx6qp";
 };
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

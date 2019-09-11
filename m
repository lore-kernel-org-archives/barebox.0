Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i842y-0001gz-BI
 for barebox@lists.infradead.org; Wed, 11 Sep 2019 14:56:42 +0000
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 11 Sep 2019 16:56:36 +0200
Message-Id: <20190911145636.4637-2-m.felsch@pengutronix.de>
In-Reply-To: <20190911145636.4637-1-m.felsch@pengutronix.de>
References: <20190911145636.4637-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: dts: imx6: phycore: use spdx license identifier
To: barebox@lists.infradead.org
Cc: d.schultz@phytec.de, s.christ@phytec.de, j.remmet@phytec.de, s.riedmueller@phytec.de

Use Identifier to reduce lines and make it parsable for license clearing
tools.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts | 8 +-------
 arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts | 8 +-------
 arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts  | 8 +-------
 arch/arm/dts/imx6q-phytec-phycore-som-nand.dts  | 8 +-------
 arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts | 8 +-------
 5 files changed, 5 insertions(+), 35 deletions(-)

diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
index d9a40599c7..fd4fc35dac 100644
--- a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
@@ -1,13 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
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
diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
index db4d930b29..5e9e491c54 100644
--- a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
@@ -1,12 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2015 Christian Hemp, Phytec Messtechnik GmbH
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
  */
 
 #include <arm/imx6dl-phytec-mira-rdk-nand.dts>
diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
index 55dc1f91f7..4af8e2543f 100644
--- a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
+++ b/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
@@ -1,12 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2015 Christian Hemp, Phytec Messtechnik GmbH
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
  */
 
 #include <arm/imx6q-phytec-mira-rdk-emmc.dts>
diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
index 56812c2473..f42613a52e 100644
--- a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
@@ -1,12 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2015 Christian Hemp, Phytec Messtechnik GmbH
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
  */
 
 #include <arm/imx6q-phytec-mira-rdk-nand.dts>
diff --git a/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
index 06def935b0..5626d6109b 100644
--- a/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
@@ -1,13 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (C) 2016 Phytec Messtechnik GmbH
  * Author: Christian Hemp <c.hemp@phytec.de>
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
  */
 
 #include <arm/imx6qp-phytec-mira-rdk-nand.dts>
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

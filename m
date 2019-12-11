Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieziG-0004Cf-8M
 for barebox@lists.infradead.org; Wed, 11 Dec 2019 10:59:26 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Wed, 11 Dec 2019 11:59:16 +0100
Message-Id: <1576061961-153938-2-git-send-email-s.riedmueller@phytec.de>
In-Reply-To: <1576061961-153938-1-git-send-email-s.riedmueller@phytec.de>
References: <1576061961-153938-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH v3 2/7] ARM: dts: imx6: pcaaxl3: Update license and model
 description
To: barebox@lists.infradead.org

Make use of SPDX license identifiers and update copyright notices and
model descriptions of the phyCARD-i.MX 6 SOM.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
Changes in v3:
 - Rebased on latest master
---
 arch/arm/dts/imx6q-phytec-pbaa03.dts   | 13 ++++---------
 arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi | 13 ++++---------
 2 files changed, 8 insertions(+), 18 deletions(-)

diff --git a/arch/arm/dts/imx6q-phytec-pbaa03.dts b/arch/arm/dts/imx6q-phytec-pbaa03.dts
index 5216a2dfe316..8034f90804ec 100644
--- a/arch/arm/dts/imx6q-phytec-pbaa03.dts
+++ b/arch/arm/dts/imx6q-phytec-pbaa03.dts
@@ -1,12 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later)
 /*
- * Copyright 2014 Christian Hemp, Phytec Messtechnik GmbH
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
+ * Copyright (C) 2014 PHYTEC Messtechnik GmbH
+ * Author: Christian Hemp <c.hemp@phytec.de>
  */
 
 /dts-v1/;
@@ -16,7 +11,7 @@
 #include "imx6q-phytec-pcaaxl3.dtsi"
 
 / {
-	model = "Phytec phyCARD-i.MX6 Quad Carrier-Board";
+	model = "PHYTEC phyCARD-i.MX6 Quad";
 	compatible = "phytec,imx6q-pbaa03", "phytec,imx6q-pcaaxl3", "fsl,imx6q";
 
 	chosen {
diff --git a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi b/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
index db986f87ef26..0dbd5419ba10 100644
--- a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
+++ b/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
@@ -1,19 +1,14 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later)
 /*
- * Copyright 2014444 Christian Hemp, Phytec Messtechnik GmbH
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
+ * Copyright (C) 2014 PHYTEC Messtechnik GmbH
+ * Author: Christian Hemp <c.hemp@phytec.de>
  */
 
 #include <arm/imx6q.dtsi>
 #include "imx6q.dtsi"
 
 / {
-	model = "Phytec phyCARD-i.MX6 Quad";
+	model = "PHYTEC phyCARD-i.MX6 Quad";
 	compatible = "phytec,imx6q-pcaaxl3", "fsl,imx6q";
 
 	chosen {
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieEvX-0001H3-Ni
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 09:02:03 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Mon, 9 Dec 2019 10:01:43 +0100
Message-Id: <1575882108-108853-2-git-send-email-s.riedmueller@phytec.de>
In-Reply-To: <1575882108-108853-1-git-send-email-s.riedmueller@phytec.de>
References: <1575882108-108853-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH 2/7] ARM: dts: imx6: pcaaxl3: Update license and model
 description
To: barebox@lists.infradead.org

Make use of SPDX license identifiers and update copyright notices and
model descriptions of the phyCARD-i.MX 6 SOM.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/dts/imx6q-phytec-pbaa03.dts   | 13 ++++---------
 arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi | 14 +++-----------
 2 files changed, 7 insertions(+), 20 deletions(-)

diff --git a/arch/arm/dts/imx6q-phytec-pbaa03.dts b/arch/arm/dts/imx6q-phytec-pbaa03.dts
index 4724a02ad7d8..b11b8b3f93fe 100644
--- a/arch/arm/dts/imx6q-phytec-pbaa03.dts
+++ b/arch/arm/dts/imx6q-phytec-pbaa03.dts
@@ -1,19 +1,14 @@
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
 #include "imx6q-phytec-pcaaxl3.dtsi"
 
 / {
-	model = "Phytec phyCARD-i.MX6 Quad Carrier-Board";
+	model = "PHYTEC phyCARD-i.MX6 Quad";
 	compatible = "phytec,imx6q-pbaa03", "phytec,imx6q-pcaaxl3", "fsl,imx6q";
 
 	chosen {
diff --git a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi b/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
index db986f87ef26..5e0495996d52 100644
--- a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
+++ b/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
@@ -1,21 +1,13 @@
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
-	compatible = "phytec,imx6q-pcaaxl3", "fsl,imx6q";
-
 	chosen {
 		environment-nand {
 			compatible = "barebox,environment";
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

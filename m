Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1b9T-0001Xk-17
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 20:29:29 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1l1b9R-0007nC-Pu
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 21:29:25 +0100
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1l1b9R-0000wo-FJ
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 21:29:25 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 18 Jan 2021 21:29:20 +0100
Message-Id: <20210118202922.3581-4-m.felsch@pengutronix.de>
In-Reply-To: <20210118202922.3581-1-m.felsch@pengutronix.de>
References: <20210118202922.3581-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 4/6] ARM: dts: imx6qdl-samx6i: switch to SPDX license
 identifier
To: barebox@lists.infradead.org

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/dts/imx6dl-samx6i.dts         |  8 +-----
 arch/arm/dts/imx6q-samx6i.dts          |  8 +-----
 arch/arm/dts/imx6qdl-smarc-samx6i.dtsi | 40 +-------------------------
 3 files changed, 3 insertions(+), 53 deletions(-)

diff --git a/arch/arm/dts/imx6dl-samx6i.dts b/arch/arm/dts/imx6dl-samx6i.dts
index d688b9c6ca..c94573d0a8 100644
--- a/arch/arm/dts/imx6dl-samx6i.dts
+++ b/arch/arm/dts/imx6dl-samx6i.dts
@@ -1,12 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2018 (C) Pengutronix, Michael Grzeschik <mgr@pengutronix.de>
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
  */
 
 /dts-v1/;
diff --git a/arch/arm/dts/imx6q-samx6i.dts b/arch/arm/dts/imx6q-samx6i.dts
index 83f19bcaf8..0f269aa287 100644
--- a/arch/arm/dts/imx6q-samx6i.dts
+++ b/arch/arm/dts/imx6q-samx6i.dts
@@ -1,12 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2018 (C) Pengutronix, Michael Grzeschik <mgr@pengutronix.de>
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
  */
 
 /dts-v1/;
diff --git a/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi b/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi
index 1381a551d0..759cd694e8 100644
--- a/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi
+++ b/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi
@@ -1,47 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0 OR X11
 /*
  * Copyright 2017 (C) Priit Laes <plaes@plaes.org>
  * Copyright 2018 (C) Pengutronix, Michael Grzeschik <mgr@pengutronix.de>
  *
  * Based on initial work by Nikita Yushchenko <nyushchenko at dev.rtsoft.ru>
- *
- * This file is dual-licensed: you can use it either under the terms
- * of the GPL or the X11 license, at your option. Note that this dual
- * licensing only applies to this file, and not this project as a
- * whole.
- *
- *  a) This file is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of
- *     the License, or (at your option) any later version.
- *
- *     This file is distributed in the hope that it will be useful,
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- * Or, alternatively,
- *
- *  b) Permission is hereby granted, free of charge, to any person
- *     obtaining a copy of this software and associated documentation
- *     files (the "Software"), to deal in the Software without
- *     restriction, including without limitation the rights to use,
- *     copy, modify, merge, publish, distribute, sublicense, and/or
- *     sell copies of the Software, and to permit persons to whom the
- *     Software is furnished to do so, subject to the following
- *     conditions:
- *
- *     The above copyright notice and this permission notice shall be
- *     included in all copies or substantial portions of the Software.
- *
- *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
- *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
- *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
- *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
- *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
- *     OTHER DEALINGS IN THE SOFTWARE.
- *
  */
 
 #include <dt-bindings/gpio/gpio.h>
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

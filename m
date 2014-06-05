Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp42.i.mail.ru ([94.100.177.102])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WsbXA-0001DS-CF
 for barebox@lists.infradead.org; Thu, 05 Jun 2014 17:33:01 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu,  5 Jun 2014 21:32:35 +0400
Message-Id: <1401989555-25532-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] ARM: dts: Remove orphaned i.MX27 DT template
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/dts/imx27.dtsi | 11 -----------
 1 file changed, 11 deletions(-)
 delete mode 100644 arch/arm/dts/imx27.dtsi

diff --git a/arch/arm/dts/imx27.dtsi b/arch/arm/dts/imx27.dtsi
deleted file mode 100644
index 49a0ddf..0000000
--- a/arch/arm/dts/imx27.dtsi
+++ /dev/null
@@ -1,11 +0,0 @@
-/*
- * Copyright 2012 Sascha Hauer, Pengutronix
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
- */
-#include <arm/imx27.dtsi>
-- 
1.8.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kiLUu-00044V-5S
 for barebox@lists.infradead.org; Thu, 26 Nov 2020 17:56:01 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 26 Nov 2020 18:55:50 +0100
Message-Id: <20201126175553.16934-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 1/4] ARM: at91: sama5d2: giantboard: fix typo in
 SPDX-License-Identifier
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, ukl@pengutronix.de, rhi@pengutronix.de

s/Identifer/Identifier/

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2: no change
---
 arch/arm/dts/at91-sama5d27_giantboard.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/dts/at91-sama5d27_giantboard.dts b/arch/arm/dts/at91-sama5d27_giantboard.dts
index 2ba3ff217101..99fc5a8d4dd3 100644
--- a/arch/arm/dts/at91-sama5d27_giantboard.dts
+++ b/arch/arm/dts/at91-sama5d27_giantboard.dts
@@ -1,4 +1,4 @@
-// SPDX-License-Identifer: GPL-2.0-or-later OR X11
+// SPDX-License-Identifier: GPL-2.0-or-later OR X11
 /*
  * at91-sama5d27_giantboard.dts - Device Tree file for SAMA5D27 Giant Board
  *
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

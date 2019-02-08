Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grz6m-00052S-0K
 for barebox@lists.infradead.org; Fri, 08 Feb 2019 05:53:53 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri,  8 Feb 2019 06:53:48 +0100
Message-Id: <20190208055348.28848-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1] MIPS: ath79: art: fix SPDX-License-Identifier
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/mips/mach-ath79/art.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/mach-ath79/art.c b/arch/mips/mach-ath79/art.c
index 984d087363..efc02d611d 100644
--- a/arch/mips/mach-ath79/art.c
+++ b/arch/mips/mach-ath79/art.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (c) 2018 Oleksij Rempel <linux@rempel-privat.de>
  */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJznp-0008N3-CZ
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 12:50:22 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2019 14:50:18 +0200
Message-Id: <20191014125018.27424-1-a.fatoum@pengutronix.de>
In-Reply-To: <20191014124247.dy3ig6ypga4q7iob@pengutronix.de>
References: <20191014124247.dy3ig6ypga4q7iob@pengutronix.de>
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
Subject: [PATCH] fixup! ARM: at91: import lowlevel clock initialization from
 at91bootstrap
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Add lost notice in license as suggested by Roland.

---
 arch/arm/mach-at91/at91_pmc_ll.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-at91/at91_pmc_ll.c b/arch/arm/mach-at91/at91_pmc_ll.c
index 6ebe86499f6a..4d39f579091e 100644
--- a/arch/arm/mach-at91/at91_pmc_ll.c
+++ b/arch/arm/mach-at91/at91_pmc_ll.c
@@ -1,6 +1,9 @@
 // SPDX-License-Identifier: BSD-1-Clause
 /*
  * Copyright (c) 2006, Atmel Corporation
+ *
+ * Atmel's name may not be used to endorse or promote products
+ * derived from this software without specific prior written permission.
  */
 
 #include <common.h>
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

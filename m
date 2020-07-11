Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ju7Po-0004wJ-Tx
 for barebox@lists.infradead.org; Sat, 11 Jul 2020 04:47:09 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Sat, 11 Jul 2020 06:46:59 +0200
Message-Id: <20200711044702.18949-2-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20200711044702.18949-1-u.kleine-koenig@pengutronix.de>
References: <20200711044702.18949-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH v2 1/4] fixup! arm/boards: Replace license boilerplate by SPDX
 identfiers
To: barebox@lists.infradead.org
Cc: Marc Zyngier <maz@kernel.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>

---
 arch/arm/boards/phytec-phycore-pxa270/config.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/phytec-phycore-pxa270/config.h b/arch/arm/boards/phytec-phycore-pxa270/config.h
index c630befcb8b3..6aba53edea22 100644
--- a/arch/arm/boards/phytec-phycore-pxa270/config.h
+++ b/arch/arm/boards/phytec-phycore-pxa270/config.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 
 /*
  * Copyright (C) 2005 Phytec Messtechnik GmbH
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

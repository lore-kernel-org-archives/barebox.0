Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp48.i.mail.ru ([94.100.177.108])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glAS9-0002Vw-VJ
 for barebox@lists.infradead.org; Sun, 20 Jan 2019 10:35:49 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 20 Jan 2019 13:35:32 +0300
Message-Id: <20190120103533.7146-9-shc_work@mail.ru>
In-Reply-To: <20190120103533.7146-1-shc_work@mail.ru>
References: <20190120103533.7146-1-shc_work@mail.ru>
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
Subject: [PATCH 09/10] ARM: at91: delete unused mach/sama5d3_matrix.h
To: barebox@lists.infradead.org

This removes the stale mach/sama5d3_matrix.h include as there is no user of it.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-at91/include/mach/sama5d3_matrix.h | 15 ---------------
 1 file changed, 15 deletions(-)
 delete mode 100644 arch/arm/mach-at91/include/mach/sama5d3_matrix.h

diff --git a/arch/arm/mach-at91/include/mach/sama5d3_matrix.h b/arch/arm/mach-at91/include/mach/sama5d3_matrix.h
deleted file mode 100644
index 8176b38..0000000
--- a/arch/arm/mach-at91/include/mach/sama5d3_matrix.h
+++ /dev/null
@@ -1,15 +0,0 @@
-/*
- * Matrix-centric header file for the SAMA5D3 family
- *
- *  Copyright (C) 2009-2012 Atmel Corporation.
- *
- * Only EBI related registers.
- * Write Protect register definitions may be useful.
- *
- * Licensed under GPLv2 or later.
- */
-
-#ifndef SAMA5D3_MATRIX_H
-#define SAMA5D3_MATRIX_H
-
-#endif
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

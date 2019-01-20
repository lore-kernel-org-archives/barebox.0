Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp48.i.mail.ru ([94.100.177.108])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glAS7-0002U1-GI
 for barebox@lists.infradead.org; Sun, 20 Jan 2019 10:35:47 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 20 Jan 2019 13:35:24 +0300
Message-Id: <20190120103533.7146-1-shc_work@mail.ru>
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
Subject: [PATCH 01/10] ARM: mvebu: delete unused mach/kirkwood.h
To: barebox@lists.infradead.org

This removes the stale mach/kirkwood.h include as there is no user of it.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-mvebu/include/mach/kirkwood.h | 22 ----------------------
 1 file changed, 22 deletions(-)
 delete mode 100644 arch/arm/mach-mvebu/include/mach/kirkwood.h

diff --git a/arch/arm/mach-mvebu/include/mach/kirkwood.h b/arch/arm/mach-mvebu/include/mach/kirkwood.h
deleted file mode 100644
index 7fe002d..0000000
--- a/arch/arm/mach-mvebu/include/mach/kirkwood.h
+++ /dev/null
@@ -1,22 +0,0 @@
-/*
- * Copyright (C) 2013 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#ifndef __MACH_KIRKWOOD_H
-#define __MACH_KIRKWOOD_H
-
-int kirkwood_add_uart0(void);
-void __naked __noreturn kirkwood_barebox_entry(void);
-
-#endif /* __MACH_KIRKWOOD_H */
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

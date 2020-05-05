Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVwo8-0003Yv-6Z
 for barebox@lists.infradead.org; Tue, 05 May 2020 12:36:21 +0000
Received: by mail-lf1-x142.google.com with SMTP id b26so1218280lfa.5
 for <barebox@lists.infradead.org>; Tue, 05 May 2020 05:36:18 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  5 May 2020 15:36:10 +0300
Message-Id: <20200505123610.11307-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] MIPS: dlink-dir-320: remove useless board file
To: barebox@lists.infradead.org

The board file calls only barebox_set_hostname().
Since we can extract host name from devicetree,
we can drop board file.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/dlink-dir-320/Makefile |  1 -
 arch/mips/boards/dlink-dir-320/board.c  | 15 ---------------
 2 files changed, 16 deletions(-)

diff --git a/arch/mips/boards/dlink-dir-320/Makefile b/arch/mips/boards/dlink-dir-320/Makefile
index 01c7a259e9..b08c4a93ca 100644
--- a/arch/mips/boards/dlink-dir-320/Makefile
+++ b/arch/mips/boards/dlink-dir-320/Makefile
@@ -1,2 +1 @@
-obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/mips/boards/dlink-dir-320/board.c b/arch/mips/boards/dlink-dir-320/board.c
deleted file mode 100644
index b75812cefe..0000000000
--- a/arch/mips/boards/dlink-dir-320/board.c
+++ /dev/null
@@ -1,15 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright (C) 2011, 2014 Antony Pavlov <antonynpavlov@gmail.com>
- */
-
-#include <common.h>
-#include <init.h>
-
-static int dir320_console_init(void)
-{
-	barebox_set_hostname("dir320");
-
-	return 0;
-}
-console_initcall(dir320_console_init);
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

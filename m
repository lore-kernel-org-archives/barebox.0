Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRXw2-0002U1-OU
 for barebox@lists.infradead.org; Tue, 27 Nov 2018 07:37:39 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 27 Nov 2018 08:37:14 +0100
Message-Id: <20181127073714.16472-11-o.rempel@pengutronix.de>
In-Reply-To: <20181127073714.16472-1-o.rempel@pengutronix.de>
References: <20181127073714.16472-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 10/10] MIPS: remove useless board files
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

From: Oleksij Rempel <linux@rempel-privat.de>

In most cases we was executing only barebox_set_hostname().
Since we can extract host name from devicetree, we can drop all of this
board files.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/boards/black-swift/Makefile    |  1 -
 arch/mips/boards/black-swift/board.c     | 27 ----------------------
 arch/mips/boards/img-ci20/Makefile       |  1 -
 arch/mips/boards/img-ci20/board.c        | 27 ----------------------
 arch/mips/boards/loongson-ls1b/Makefile  |  1 -
 arch/mips/boards/loongson-ls1b/serial.c  | 10 --------
 arch/mips/boards/qemu-malta/Makefile     |  1 -
 arch/mips/boards/qemu-malta/init.c       | 29 ------------------------
 arch/mips/boards/ritmix-rzx50/Makefile   |  1 -
 arch/mips/boards/ritmix-rzx50/serial.c   | 27 ----------------------
 arch/mips/boards/tplink-mr3020/Makefile  |  1 -
 arch/mips/boards/tplink-mr3020/board.c   | 27 ----------------------
 arch/mips/boards/tplink-wdr4300/Makefile |  1 -
 arch/mips/boards/tplink-wdr4300/board.c  | 28 -----------------------
 14 files changed, 182 deletions(-)
 delete mode 100644 arch/mips/boards/black-swift/board.c
 delete mode 100644 arch/mips/boards/img-ci20/board.c
 delete mode 100644 arch/mips/boards/loongson-ls1b/serial.c
 delete mode 100644 arch/mips/boards/qemu-malta/init.c
 delete mode 100644 arch/mips/boards/ritmix-rzx50/serial.c
 delete mode 100644 arch/mips/boards/tplink-mr3020/board.c
 delete mode 100644 arch/mips/boards/tplink-wdr4300/board.c

diff --git a/arch/mips/boards/black-swift/Makefile b/arch/mips/boards/black-swift/Makefile
index 092c31d6b2..b08c4a93ca 100644
--- a/arch/mips/boards/black-swift/Makefile
+++ b/arch/mips/boards/black-swift/Makefile
@@ -1,2 +1 @@
 lwl-y += lowlevel.o
-obj-y += board.o
diff --git a/arch/mips/boards/black-swift/board.c b/arch/mips/boards/black-swift/board.c
deleted file mode 100644
index 2e2ed2075b..0000000000
--- a/arch/mips/boards/black-swift/board.c
+++ /dev/null
@@ -1,27 +0,0 @@
-/*
- * Copyright (C) 2015 Antony Pavlov <antonynpavlov@gmail.com>
- *
- * This file is part of barebox.
- * See file CREDITS for list of people who contributed to this project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <common.h>
-#include <init.h>
-
-static int model_hostname_init(void)
-{
-	barebox_set_hostname("black-swift");
-
-	return 0;
-}
-postcore_initcall(model_hostname_init);
diff --git a/arch/mips/boards/img-ci20/Makefile b/arch/mips/boards/img-ci20/Makefile
index 092c31d6b2..b08c4a93ca 100644
--- a/arch/mips/boards/img-ci20/Makefile
+++ b/arch/mips/boards/img-ci20/Makefile
@@ -1,2 +1 @@
 lwl-y += lowlevel.o
-obj-y += board.o
diff --git a/arch/mips/boards/img-ci20/board.c b/arch/mips/boards/img-ci20/board.c
deleted file mode 100644
index 515ebaece6..0000000000
--- a/arch/mips/boards/img-ci20/board.c
+++ /dev/null
@@ -1,27 +0,0 @@
-/*
- * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
- *
- * This file is part of barebox.
- * See file CREDITS for list of people who contributed to this project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <common.h>
-#include <init.h>
-
-static int ci20_hostname_init(void)
-{
-	barebox_set_hostname("ci20");
-
-	return 0;
-}
-console_initcall(ci20_hostname_init);
diff --git a/arch/mips/boards/loongson-ls1b/Makefile b/arch/mips/boards/loongson-ls1b/Makefile
index ded9867a8e..b08c4a93ca 100644
--- a/arch/mips/boards/loongson-ls1b/Makefile
+++ b/arch/mips/boards/loongson-ls1b/Makefile
@@ -1,2 +1 @@
 lwl-y += lowlevel.o
-obj-y += serial.o
diff --git a/arch/mips/boards/loongson-ls1b/serial.c b/arch/mips/boards/loongson-ls1b/serial.c
deleted file mode 100644
index a9453ede28..0000000000
--- a/arch/mips/boards/loongson-ls1b/serial.c
+++ /dev/null
@@ -1,10 +0,0 @@
-#include <common.h>
-#include <init.h>
-
-static int console_init(void)
-{
-	barebox_set_hostname("ls1b");
-
-	return 0;
-}
-console_initcall(console_init);
diff --git a/arch/mips/boards/qemu-malta/Makefile b/arch/mips/boards/qemu-malta/Makefile
index 237a6a5079..b08c4a93ca 100644
--- a/arch/mips/boards/qemu-malta/Makefile
+++ b/arch/mips/boards/qemu-malta/Makefile
@@ -1,2 +1 @@
 lwl-y += lowlevel.o
-obj-y += init.o
diff --git a/arch/mips/boards/qemu-malta/init.c b/arch/mips/boards/qemu-malta/init.c
deleted file mode 100644
index 24bfdc03ee..0000000000
--- a/arch/mips/boards/qemu-malta/init.c
+++ /dev/null
@@ -1,29 +0,0 @@
-/*
- * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
- * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
- *
- * This file is part of barebox.
- * See file CREDITS for list of people who contributed to this project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <common.h>
-#include <init.h>
-#include <linux/sizes.h>
-
-static int malta_core_init(void)
-{
-	barebox_set_hostname("malta");
-
-	return 0;
-}
-core_initcall(malta_core_init);
diff --git a/arch/mips/boards/ritmix-rzx50/Makefile b/arch/mips/boards/ritmix-rzx50/Makefile
index ded9867a8e..b08c4a93ca 100644
--- a/arch/mips/boards/ritmix-rzx50/Makefile
+++ b/arch/mips/boards/ritmix-rzx50/Makefile
@@ -1,2 +1 @@
 lwl-y += lowlevel.o
-obj-y += serial.o
diff --git a/arch/mips/boards/ritmix-rzx50/serial.c b/arch/mips/boards/ritmix-rzx50/serial.c
deleted file mode 100644
index f1e8da0072..0000000000
--- a/arch/mips/boards/ritmix-rzx50/serial.c
+++ /dev/null
@@ -1,27 +0,0 @@
-/*
- * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
- *
- * This file is part of barebox.
- * See file CREDITS for list of people who contributed to this project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <common.h>
-#include <init.h>
-
-static int rzx50_hostname_init(void)
-{
-	barebox_set_hostname("rzx50");
-
-	return 0;
-}
-console_initcall(rzx50_hostname_init);
diff --git a/arch/mips/boards/tplink-mr3020/Makefile b/arch/mips/boards/tplink-mr3020/Makefile
index 092c31d6b2..b08c4a93ca 100644
--- a/arch/mips/boards/tplink-mr3020/Makefile
+++ b/arch/mips/boards/tplink-mr3020/Makefile
@@ -1,2 +1 @@
 lwl-y += lowlevel.o
-obj-y += board.o
diff --git a/arch/mips/boards/tplink-mr3020/board.c b/arch/mips/boards/tplink-mr3020/board.c
deleted file mode 100644
index 318998cc49..0000000000
--- a/arch/mips/boards/tplink-mr3020/board.c
+++ /dev/null
@@ -1,27 +0,0 @@
-/*
- * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
- *
- * This file is part of barebox.
- * See file CREDITS for list of people who contributed to this project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <common.h>
-#include <init.h>
-
-static int model_hostname_init(void)
-{
-	barebox_set_hostname("mr3020");
-
-	return 0;
-}
-postcore_initcall(model_hostname_init);
diff --git a/arch/mips/boards/tplink-wdr4300/Makefile b/arch/mips/boards/tplink-wdr4300/Makefile
index 092c31d6b2..b08c4a93ca 100644
--- a/arch/mips/boards/tplink-wdr4300/Makefile
+++ b/arch/mips/boards/tplink-wdr4300/Makefile
@@ -1,2 +1 @@
 lwl-y += lowlevel.o
-obj-y += board.o
diff --git a/arch/mips/boards/tplink-wdr4300/board.c b/arch/mips/boards/tplink-wdr4300/board.c
deleted file mode 100644
index d6126fcb6d..0000000000
--- a/arch/mips/boards/tplink-wdr4300/board.c
+++ /dev/null
@@ -1,28 +0,0 @@
-/*
- * Copyright (C) 2017 Oleksij Rempel <o.rempel@pengutronix.de>
- * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
- *
- * This file is part of barebox.
- * See file CREDITS for list of people who contributed to this project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <common.h>
-#include <init.h>
-
-static int model_hostname_init(void)
-{
-	barebox_set_hostname("wdr4300");
-
-	return 0;
-}
-postcore_initcall(model_hostname_init);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

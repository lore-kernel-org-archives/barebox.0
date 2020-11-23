Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khEHd-0002WE-LX
 for barebox@lists.infradead.org; Mon, 23 Nov 2020 16:01:42 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 23 Nov 2020 17:01:27 +0100
Message-Id: <20201123160128.15947-2-a.fatoum@pengutronix.de>
In-Reply-To: <20201123160128.15947-1-a.fatoum@pengutronix.de>
References: <20201123160128.15947-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/3] LICENSES: exceptions: factor out eCos-exception-2.0 for
 GPL
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

We have code imported from eCos that's licensed with this exception.
Replace instances of the exceptions with a SPDX-License-Identifier
referencing the exception in our LICENSES directory.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 LICENSES/exceptions/eCos-exception-2.0 | 13 +++++++++++++
 common/dummy_malloc.c                  | 21 +--------------------
 drivers/mtd/nand/nand_ecc.c            | 22 +---------------------
 drivers/serial/arm_dcc.c               | 21 +--------------------
 4 files changed, 16 insertions(+), 61 deletions(-)
 create mode 100644 LICENSES/exceptions/eCos-exception-2.0

diff --git a/LICENSES/exceptions/eCos-exception-2.0 b/LICENSES/exceptions/eCos-exception-2.0
new file mode 100644
index 000000000000..291103666f10
--- /dev/null
+++ b/LICENSES/exceptions/eCos-exception-2.0
@@ -0,0 +1,13 @@
+SPDX-Exception-Identifier: eCos-exception-2.0
+SPDX-URL: https://spdx.org/licenses/eCos-exception-2.0.html
+SPDX-Licenses: GPL-2.0-only, GPL-2.0-or-later, GPL-2.0, GPL-2.0+
+License-Text:
+  As a special exception, if other files instantiate templates or use macros or
+  inline functions from this file, or you compile this file and link it with
+  other works to produce a work based on this file, this file does not by itself
+  cause the resulting work to be covered by the GNU General Public License.
+  However the source code for this file must still be made available in
+  accordance with section (3) of the GNU General Public License.
+
+  This exception does not invalidate any other reasons why a work based on this
+  file might be covered by the GNU General Public License.
diff --git a/common/dummy_malloc.c b/common/dummy_malloc.c
index 0120d9be2e85..ed74bd2f2302 100644
--- a/common/dummy_malloc.c
+++ b/common/dummy_malloc.c
@@ -1,25 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0-only WITH eCos-exception-2.0 */
 /*
  * Copyright (C) 2013 Sascha Hauer <s.hauer@pengutronix.de>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- *
- * As a special exception, if other files instantiate templates or use macros
- * or inline functions from this file, or you compile this file and link it
- * with other works to produce a work based on this file, this file does not
- * by itself cause the resulting work to be covered by the GNU General Public
- * License. However the source code for this file must still be made available
- * in accordance with section (3) of the GNU General Public License.
-
- * This exception does not invalidate any other reasons why a work based on
- * this file might be covered by the GNU General Public License.
  */
 #include <common.h>
 #include <malloc.h>
diff --git a/drivers/mtd/nand/nand_ecc.c b/drivers/mtd/nand/nand_ecc.c
index fd6ad7edc8e5..741282093df9 100644
--- a/drivers/mtd/nand/nand_ecc.c
+++ b/drivers/mtd/nand/nand_ecc.c
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later WITH eCos-exception-2.0 */
 /*
  * This file contains an ECC algorithm from Toshiba that detects and
  * corrects 1 bit errors in a 256 byte block of data.
@@ -10,27 +11,6 @@
  * Copyright (C) 2006 Thomas Gleixner <tglx@linutronix.de>
  *
  * $Id: nand_ecc.c,v 1.15 2005/11/07 11:14:30 gleixner Exp $
- *
- * This file is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; either version 2 or (at your option) any
- * later version.
- *
- * This file is distributed in the hope that it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
- * for more details.
- *
- * As a special exception, if other files instantiate templates or use
- * macros or inline functions from these files, or you compile these
- * files and link them with other works to produce a work based on these
- * files, these files do not by themselves cause the resulting work to be
- * covered by the GNU General Public License. However the source code for
- * these files must still be made available in accordance with section (3)
- * of the GNU General Public License.
- *
- * This exception does not invalidate any other reasons why a work based on
- * this file might be covered by the GNU General Public License.
  */
 
 #include <linux/types.h>
diff --git a/drivers/serial/arm_dcc.c b/drivers/serial/arm_dcc.c
index e5f2bbe5e2ae..db0ee7fe0908 100644
--- a/drivers/serial/arm_dcc.c
+++ b/drivers/serial/arm_dcc.c
@@ -1,26 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only WITH eCos-exception-2.0 */
 /*
  * Copyright (C) 2004-2007 ARM Limited.
  * Copyright (C) 2008 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- *
- * As a special exception, if other files instantiate templates or use macros
- * or inline functions from this file, or you compile this file and link it
- * with other works to produce a work based on this file, this file does not
- * by itself cause the resulting work to be covered by the GNU General Public
- * License. However the source code for this file must still be made available
- * in accordance with section (3) of the GNU General Public License.
-
- * This exception does not invalidate any other reasons why a work based on
- * this file might be covered by the GNU General Public License.
  */
 
 #include <common.h>
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

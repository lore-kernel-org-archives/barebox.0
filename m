Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gUcUz-0000PK-Ft
 for barebox@lists.infradead.org; Wed, 05 Dec 2018 19:06:19 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed,  5 Dec 2018 20:05:57 +0100
Message-Id: <20181205190557.21680-1-linux@rempel-privat.de>
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
Subject: [PATCH v1] drivers: net: usb: convert drivers to spdx
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 drivers/net/usb/smsc95xx.c | 17 ++---------------
 drivers/net/usb/smsc95xx.h | 17 ++---------------
 2 files changed, 4 insertions(+), 30 deletions(-)

diff --git a/drivers/net/usb/smsc95xx.c b/drivers/net/usb/smsc95xx.c
index 6360e480f..3c5bd1e4e 100644
--- a/drivers/net/usb/smsc95xx.c
+++ b/drivers/net/usb/smsc95xx.c
@@ -1,18 +1,5 @@
-/***************************************************************************
- *
- * Copyright (C) 2007-2008 SMSC
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * as published by the Free Software Foundation; either version 2
- * of the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- *****************************************************************************/
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* Copyright (C) 2007-2008 SMSC */
 
 #include <common.h>
 #include <command.h>
diff --git a/drivers/net/usb/smsc95xx.h b/drivers/net/usb/smsc95xx.h
index 265df682b..5223013d4 100644
--- a/drivers/net/usb/smsc95xx.h
+++ b/drivers/net/usb/smsc95xx.h
@@ -1,18 +1,5 @@
- /***************************************************************************
- *
- * Copyright (C) 2007-2008 SMSC
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * as published by the Free Software Foundation; either version 2
- * of the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- *****************************************************************************/
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/* Copyright (C) 2007-2008 SMSC */
 
 #ifndef _SMSC95XX_H
 #define _SMSC95XX_H
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

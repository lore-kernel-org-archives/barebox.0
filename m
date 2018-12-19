Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp38.i.mail.ru ([94.100.177.98])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZWq8-000505-0r
 for barebox@lists.infradead.org; Wed, 19 Dec 2018 08:04:30 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed, 19 Dec 2018 11:03:59 +0300
Message-Id: <20181219080403.13737-6-shc_work@mail.ru>
In-Reply-To: <20181219080403.13737-1-shc_work@mail.ru>
References: <20181219080403.13737-1-shc_work@mail.ru>
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
Subject: [PATCH 06/10] gpio: clps711x: Switch to SPDX identifier
To: barebox@lists.infradead.org

Adopt the SPDX license identifier headers to ease license compliance
management.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/gpio/gpio-clps711x.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/gpio/gpio-clps711x.c b/drivers/gpio/gpio-clps711x.c
index eef2a29e8..d3d669713 100644
--- a/drivers/gpio/gpio-clps711x.c
+++ b/drivers/gpio/gpio-clps711x.c
@@ -1,11 +1,5 @@
-/*
- * Copyright (C) 2013-2014 Alexander Shiyan <shc_work@mail.ru>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- */
+// SPDX-License-Identifier: GPL-2.0+
+/* Author: Alexander Shiyan <shc_work@mail.ru> */
 
 #include <init.h>
 #include <common.h>
-- 
2.13.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

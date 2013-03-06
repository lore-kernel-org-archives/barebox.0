Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UD9Xt-0004eX-RN
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 08:17:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Mar 2013 09:17:49 +0100
Message-Id: <1362557869-15030-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] dummy malloc: Add licence header
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/dummy_malloc.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/common/dummy_malloc.c b/common/dummy_malloc.c
index ccee521..dd36a5b 100644
--- a/common/dummy_malloc.c
+++ b/common/dummy_malloc.c
@@ -1,3 +1,26 @@
+/*
+ * Copyright (C) 2013 Sascha Hauer <s.hauer@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
 #include <common.h>
 #include <malloc.h>
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

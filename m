Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x230.google.com ([2a00:1450:400c:c05::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzAZy-00012p-Ck
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 20:11:07 +0000
Received: by mail-wi0-f176.google.com with SMTP id n3so4768070wiv.9
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 13:10:39 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 23 Jun 2014 22:10:31 +0200
Message-Id: <1403554235-12674-4-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1403554235-12674-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1403554235-12674-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 3/7] ARM: mvebu: delete unused mach/mvebu.h
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This removes the stale mach/mvebu.h include as there is no user of it.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 arch/arm/mach-mvebu/include/mach/mvebu.h | 22 ----------------------
 1 file changed, 22 deletions(-)
 delete mode 100644 arch/arm/mach-mvebu/include/mach/mvebu.h

diff --git a/arch/arm/mach-mvebu/include/mach/mvebu.h b/arch/arm/mach-mvebu/include/mach/mvebu.h
deleted file mode 100644
index e13a446fca0e..000000000000
--- a/arch/arm/mach-mvebu/include/mach/mvebu.h
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
-#ifndef __MACH_MVEBU_H
-#define __MACH_MVEBU_H
-
-int mvebu_add_uart0(void);
-void __naked __noreturn mvebu_barebox_entry(void);
-
-#endif /* __MACH_MVEBU_H */
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

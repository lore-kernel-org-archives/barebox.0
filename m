Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y977N-0005Ef-9N
 for barebox@lists.infradead.org; Thu, 08 Jan 2015 07:02:54 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile11) with ESMTP id
 t0872TC8014485
 for <barebox@lists.infradead.org>; Thu, 8 Jan 2015 16:02:29 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili16) with ESMTP id t0872TM21977
 for <barebox@lists.infradead.org>; Thu, 8 Jan 2015 16:02:29 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Thu,  8 Jan 2015 16:02:21 +0900
Message-Id: <1420700541-4150-2-git-send-email-yamada.m@jp.panasonic.com>
In-Reply-To: <1420700541-4150-1-git-send-email-yamada.m@jp.panasonic.com>
References: <1420700541-4150-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 2/2] sizes.h: sync with Linux 3.19-rc3
To: barebox@lists.infradead.org

Looks like I am also highly addicted to Linux...

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 include/linux/sizes.h | 23 +++++++----------------
 1 file changed, 7 insertions(+), 16 deletions(-)

diff --git a/include/linux/sizes.h b/include/linux/sizes.h
index 6f91e9b..ce3e815 100644
--- a/include/linux/sizes.h
+++ b/include/linux/sizes.h
@@ -1,22 +1,13 @@
 /*
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
+ * include/linux/sizes.h
  *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- */
-/*  Size defintions
- *  Copyright (C) ARM Limited 1998. All rights reserved.
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
  */
+#ifndef __LINUX_SIZES_H__
+#define __LINUX_SIZES_H__
 
-#ifndef __sizes_h
-#define __sizes_h			1
-
-/* handy sizes */
 #define SZ_1				0x00000001
 #define SZ_2				0x00000002
 #define SZ_4				0x00000004
@@ -53,4 +44,4 @@
 #define SZ_1G				0x40000000
 #define SZ_2G				0x80000000
 
-#endif	/* __sizes_h */
+#endif /* __LINUX_SIZES_H__ */
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from blu004-omc4s24.hotmail.com ([65.55.111.163])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aqNHJ-0007Z1-6H
 for barebox@lists.infradead.org; Wed, 13 Apr 2016 16:04:30 +0000
From: DU HUANPENG <no_rep1y@hotmail.com>
Date: Wed, 13 Apr 2016 16:04:01 +0000
Message-ID: <HK2PR04MB16188596FE161189D917398EBE960@HK2PR04MB1618.apcprd04.prod.outlook.com>
Content-Language: en-US
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
Subject: [PATCH] NULL: keep NULL definition in stddef.h only
To: "t-kernel@googlegroups.com" <t-kernel@googlegroups.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: "norep1y@21cn.com" <norep1y@21cn.com>, Du Huanpeng <u74147@gmail.com>

From: Du Huanpeng <u74147@gmail.com>

remove other local definition of NULL, use
  #include <linux/stddef.h>
instead.
I use this command to search NULL definition,
  grep -R "define\s*\<NULL\>"
hope there are no more definition of NULL.

from ISO/IEC 9899:TC3:
The macros are
	NULL
which expands to an implementation-defined null pointer constant;

Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 include/command.h   |  5 +----
 lib/bzlib_private.h | 11 +----------
 2 files changed, 2 insertions(+), 14 deletions(-)

diff --git a/include/command.h b/include/command.h
index 3aca1a9..b938431 100644
--- a/include/command.h
+++ b/include/command.h
@@ -25,10 +25,7 @@
 
 #include <linux/list.h>
 #include <linux/stringify.h>
-
-#ifndef NULL
-#define NULL	0
-#endif
+#include <linux/stddef.h>
 
 #ifndef	__ASSEMBLY__
 
diff --git a/lib/bzlib_private.h b/lib/bzlib_private.h
index 87d8f94..de10dd4 100644
--- a/lib/bzlib_private.h
+++ b/lib/bzlib_private.h
@@ -67,6 +67,7 @@
 #define _BZLIB_PRIVATE_H
 
 #include <malloc.h>
+#include <linux/stddef.h>
 
 #include "bzlib.h"
 
@@ -515,16 +516,6 @@ BZ2_hbCreateDecodeTables ( Int32*, Int32*, Int32*, UChar*,
 
 #endif
 
-
-/*-- BZ_NO_STDIO seems to make NULL disappear on some platforms. --*/
-
-#ifdef BZ_NO_STDIO
-#ifndef NULL
-#define NULL 0
-#endif
-#endif
-
-
 /*-------------------------------------------------------------*/
 /*--- end                                   bzlib_private.h ---*/
 /*-------------------------------------------------------------*/
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

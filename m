Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f182.google.com ([209.85.215.182])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TuRZH-0002NA-A7
 for barebox@lists.infradead.org; Sun, 13 Jan 2013 17:42:00 +0000
Received: by mail-ea0-f182.google.com with SMTP id d1so1363715eaa.27
 for <barebox@lists.infradead.org>; Sun, 13 Jan 2013 09:41:56 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Sun, 13 Jan 2013 18:42:15 +0100
Message-Id: <1358098943-18928-2-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1358098943-18928-1-git-send-email-alex.aring@gmail.com>
References: <1358098943-18928-1-git-send-email-alex.aring@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/9] meminfo: fix missing include
To: barebox@lists.infradead.org
Cc: marc@cpdesign.com

Fix include for linkerscript variables like _etext.
Otherwise build with #define DEBUG will fail.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 common/meminfo.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/meminfo.c b/common/meminfo.c
index 06fce5a..a7c515f 100644
--- a/common/meminfo.c
+++ b/common/meminfo.c
@@ -2,6 +2,7 @@
 #include <init.h>
 #include <memory.h>
 #include <asm-generic/memory_layout.h>
+#include <asm-generic/sections.h>
 
 static int display_meminfo(void)
 {
-- 
1.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

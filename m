Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x236.google.com ([2a00:1450:4013:c01::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ul3hr-0008Av-3X
 for barebox@lists.infradead.org; Fri, 07 Jun 2013 20:56:20 +0000
Received: by mail-ea0-f182.google.com with SMTP id d10so35470eaj.41
 for <barebox@lists.infradead.org>; Fri, 07 Jun 2013 13:55:54 -0700 (PDT)
From: Alexander Aring <alex.aring@gmail.com>
Date: Fri,  7 Jun 2013 22:58:45 +0200
Message-Id: <1370638725-4045-1-git-send-email-alex.aring@gmail.com>
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
Subject: [For-next PATCH] memtest: add missing includes
To: barebox@lists.infradead.org

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 commands/memtest.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/commands/memtest.c b/commands/memtest.c
index a67d868..d2a1487 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -27,6 +27,9 @@
 #include <getopt.h>
 #include <asm/mmu.h>
 #include <memory.h>
+#include <malloc.h>
+#include <common.h>
+#include <errno.h>
 
 #include <memtest.h>
 
-- 
1.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

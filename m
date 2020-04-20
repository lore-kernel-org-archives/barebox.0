Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWnH-0004UZ-HV
 for barebox@lists.infradead.org; Mon, 20 Apr 2020 13:49:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 Apr 2020 15:49:01 +0200
Message-Id: <20200420134901.28710-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] Add magicvar description for autoboot variables
To: Barebox List <barebox@lists.infradead.org>

global.autoboot_abort_key and global.autoboot_timeout lack a magicvar
description. Add one.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/startup.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/common/startup.c b/common/startup.c
index c417a4d078..e251142fca 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -39,6 +39,7 @@
 #include <errno.h>
 #include <linux/stat.h>
 #include <envfs.h>
+#include <magicvar.h>
 #include <asm/sections.h>
 #include <uncompress.h>
 #include <globalvar.h>
@@ -391,3 +392,10 @@ void shutdown_barebox(void)
 		(*exitcall)();
 	}
 }
+
+BAREBOX_MAGICVAR_NAMED(global_autoboot_abort_key,
+                       global.autoboot_abort_key,
+                       "Which key allows to interrupt autoboot. Possible values: any, ctrl-c");
+BAREBOX_MAGICVAR_NAMED(global_autoboot_timeout,
+                       global.autoboot_timeout,
+                       "Timeout before autoboot starts in seconds");
-- 
2.26.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

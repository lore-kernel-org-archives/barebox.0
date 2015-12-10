Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a77P3-0006PY-60
 for barebox@lists.infradead.org; Thu, 10 Dec 2015 20:01:26 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Thu, 10 Dec 2015 20:00:50 +0000
Message-ID: <1449777657.26955.70.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <F849D2663B6DD94C87DDAF99B99149B3@kymetacorp.com>
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
Subject: [PATCH] bootstrap: Boot barebox with kernel calling convention
To: barebox <barebox@lists.infradead.org>

In commit 8e3ddc13eb8239177ed20f119e3a3d02518b941d the bootm code was
changed to boot barebox using the same calling convention as the
kernel.  Which on ARM is to pass three arguments which are zero, an
architecture code, and a params pointer.

A 2nd stage barebox can be booted using lib/bootstrap, which is
different code from bootm.  This code just leaves garbage in the first
three parameters and so doesn't follow the convention.

Change it to be compatible with the ARM kernel booting convention.
This just sends a zero for the architecture, since the code for
architectures depends on boot[zmu] and something using bootstrap
wouldn't have those too.  And it just passes NULL for the params since
we don't have a way to pass a device tree from the preloader.

All users of bootstrap are ARM based, but the code is in lib so a
non-ARM board might someday make use of it.  If the current code would
work for them, then the change here will be ok too.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 include/bootstrap.h    | 3 ++-
 lib/bootstrap/common.c | 4 ++--
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/include/bootstrap.h b/include/bootstrap.h
index 28852c0..9863ff4 100644
--- a/include/bootstrap.h
+++ b/include/bootstrap.h
@@ -11,7 +11,8 @@
 
 #define bootstrap_err(fmt, arg...) printf(fmt, ##arg)
 
-void bootstrap_boot(int (*func)(void), bool barebox);
+typedef void (*kernel_entry_func)(int zero, int arch, void *params);
+void bootstrap_boot(kernel_entry_func func, bool barebox);
 
 #ifdef CONFIG_BOOTSTRAP_DEVFS
 void* bootstrap_read_devfs(char *devname, bool use_bb, int offset,
diff --git a/lib/bootstrap/common.c b/lib/bootstrap/common.c
index 38ec272..4a61992 100644
--- a/lib/bootstrap/common.c
+++ b/lib/bootstrap/common.c
@@ -9,7 +9,7 @@
 #include <bootstrap.h>
 #include <filetype.h>
 
-void bootstrap_boot(int (*func)(void), bool barebox)
+void bootstrap_boot(kernel_entry_func func, bool barebox)
 {
 	if (!func)
 		return;
@@ -18,7 +18,7 @@ void bootstrap_boot(int (*func)(void), bool barebox)
 		return;
 
 	shutdown_barebox();
-	func();
+	func(0, 0, NULL);
 
 	while (1);
 }
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

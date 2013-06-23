Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UqqDu-0000V7-EI
 for barebox@lists.infradead.org; Sun, 23 Jun 2013 19:45:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 23 Jun 2013 21:44:51 +0200
Message-Id: <1372016693-30160-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372016693-30160-1-git-send-email-s.hauer@pengutronix.de>
References: <1372016693-30160-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] remove unused debug Kconfig options
To: barebox@lists.infradead.org

ENABLE_DEVICE_NOISE is used only in two network drivers and is
otherwise unused. ENABLE_FLASH_NOISE is completely unused.
ENABLE_PARTITION_NOISE enables DEBUG in the partition command,
but this code has no debug messages at all.

Remove all this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/partition.c   |  4 ----
 common/Kconfig         | 18 ------------------
 drivers/net/smc91111.c |  4 ----
 drivers/net/smc911x.c  |  4 ----
 4 files changed, 30 deletions(-)

diff --git a/commands/partition.c b/commands/partition.c
index fdd6041..6f8d634 100644
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -23,10 +23,6 @@
  * @brief partition handling and addpart and delpart command
  */
 
-#ifdef CONFIG_ENABLE_PARTITION_NOISE
-# define DEBUG
-#endif
-
 #include <common.h>
 #include <command.h>
 #include <complete.h>
diff --git a/common/Kconfig b/common/Kconfig
index 4cfbe4e..d7e2ebd 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -609,24 +609,6 @@ config DEBUG_INFO
 	help
 	  Enable build of barebox with -g.
 
-config ENABLE_FLASH_NOISE
-	bool
-	prompt "verbose flash handling"
-	help
-	  Enable this to get noisy flash handling routines
-
-config ENABLE_PARTITION_NOISE
-	bool
-	prompt "verbose partition handling"
-	help
-	  Enable this to get noisy partition handling routines
-
-config ENABLE_DEVICE_NOISE
-	bool
-	prompt "verbose device handling"
-	help
-	  Enable this to get noisy device handling routines
-
 config DEBUG_LL
 	bool
 	depends on HAS_DEBUG_LL
diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index 48183dd..b868cbf 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -55,10 +55,6 @@
  .	03/16/01  Daris A Nevil	   Modified smc9194.c for use with LAN91C111
  ----------------------------------------------------------------------------*/
 
-#ifdef CONFIG_ENABLE_DEVICE_NOISE
-# define DEBUG
-#endif
-
 #include <common.h>
 
 #include <command.h>
diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 3b94779..e0d78d0 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -18,10 +18,6 @@
  *
  */
 
-#ifdef CONFIG_ENABLE_DEVICE_NOISE
-# define DEBUG
-#endif
-
 #include <common.h>
 
 #include <command.h>
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

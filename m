Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ8y2-00061P-4e
 for barebox@lists.infradead.org; Fri, 07 Jun 2019 07:07:15 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Fri,  7 Jun 2019 09:06:57 +0200
Message-Id: <20190607070658.10919-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH v3 1/3] remove CONFIG_DEBUG_INFO
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>, Oleksij Rempel <linux@rempel-privat.de>

From: Oleksij Rempel <linux@rempel-privat.de>

The ELF file should have debug symbols, the binary should have no symbols any way.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 Makefile       | 4 +---
 common/Kconfig | 6 ------
 2 files changed, 1 insertion(+), 9 deletions(-)

diff --git a/Makefile b/Makefile
index 29347b6780..900117e727 100644
--- a/Makefile
+++ b/Makefile
@@ -457,9 +457,7 @@ endif # $(dot-config)
 
 include $(srctree)/arch/$(ARCH)/Makefile
 
-ifdef CONFIG_DEBUG_INFO
-CFLAGS		+= -g
-endif
+CFLAGS		+= -ggdb3
 
 # Force gcc to behave correct even for buggy distributions
 CFLAGS          += $(call cc-option, -fno-stack-protector)
diff --git a/common/Kconfig b/common/Kconfig
index 7832df5c55..ffb7537592 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -999,12 +999,6 @@ config DEFAULT_LOGLEVEL
 	  7    debug-level messages (debug)
 	  8    verbose debug messages (vdebug)
 
-config DEBUG_INFO
-	bool
-	prompt "enable debug symbols"
-	help
-	  Enable build of barebox with -g.
-
 config DEBUG_LL
 	bool
 	depends on HAS_DEBUG_LL
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

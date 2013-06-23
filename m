Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UqqDu-0000V8-EK
 for barebox@lists.infradead.org; Sun, 23 Jun 2013 19:45:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 23 Jun 2013 21:44:53 +0200
Message-Id: <1372016693-30160-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] startup: Add initcall tracing debug option
To: barebox@lists.infradead.org

Being able to trace initcall is very useful when trying to
find out where startup hangs. This adds a kconfig option for
it to make it easier to access.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig   | 4 ++++
 common/startup.c | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index 6a72267..1d9def9 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -710,6 +710,10 @@ config DEBUG_IMX_UART_PORT
 	  Choose UART port on which kernel low-level debug messages
 	  should be output.
 
+config DEBUG_INITCALLS
+	bool "Trace initcalls"
+	help
+	  If enabled this will print initcall traces.
 endmenu
 
 config HAS_DEBUG_LL
diff --git a/common/startup.c b/common/startup.c
index ff00ca7..9b33a92 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -21,6 +21,10 @@
  *
  */
 
+#ifdef CONFIG_DEBUG_INITCALLS
+#define DEBUG
+#endif
+
 /**
  * @file
  * @brief Main entry into the C part of barebox
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

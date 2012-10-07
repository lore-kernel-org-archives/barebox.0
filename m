Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKpD8-0006fw-GT
 for barebox@lists.infradead.org; Sun, 07 Oct 2012 11:39:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Oct 2012 13:39:50 +0200
Message-Id: <1349609991-26567-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349609991-26567-1-git-send-email-s.hauer@pengutronix.de>
References: <1349609991-26567-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] console: cleanup Kconfig
To: barebox@lists.infradead.org

Use a choice for the CONSOLE_ACTIVATE_* variables, which is the natural
way of specifying mutually exclusive variabled in Kconfig. Also update
the help texts a bit.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig |   35 ++++++++++++++++++++++++++---------
 1 file changed, 26 insertions(+), 9 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 9210739..107774c 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -468,17 +468,19 @@ config CONSOLE_FULL
 	prompt "Enable full console support"
 	help
 	  This option enables full console support capable of
-	  handling multiple consoles.
+	  handling multiple consoles. Also the full console support
+	  is able to store the output which comes before a console
+	  is registered in a circular buffer which will be printed
+	  once the first console is registered. Recommended for most
+	  usecases.
 
-config CONSOLE_SIMPLE
-	bool
-	default y
-	depends on !CONSOLE_FULL
+choice
+	prompt "Console activation strategy"
+	depends on CONSOLE_FULL
+	default CONSOLE_ACTIVATE_FIRST
 
 config CONSOLE_ACTIVATE_FIRST
-	depends on CONSOLE_FULL
 	bool
-	default y
 	prompt "activate first console on startup"
 	help
 	  Normally on startup all consoles are disabled, so you won't
@@ -486,13 +488,28 @@ config CONSOLE_ACTIVATE_FIRST
 	  enables the first console.
 
 config CONSOLE_ACTIVATE_ALL
-	depends on CONSOLE_FULL
-	depends on !CONSOLE_ACTIVATE_FIRST
 	bool
 	prompt "activate all consoles on startup"
 	help
 	  Enabling this options activates all consoles on startup, so
 	  you will get output and a prompt on all consoles simultaneously.
+	  Only the first registered console will have the full startup
+	  log though.
+
+config CONSOLE_ACTIVATE_NONE
+	prompt "leave all consoles disabled"
+	bool
+	help
+	  Leave all consoles disabled on startup. Board code or environment
+	  is responsible for enabling a console. Otherwise you'll get a working
+	  barebox, you just won't see anything.
+
+endchoice
+
+config CONSOLE_SIMPLE
+	bool
+	default y
+	depends on !CONSOLE_FULL
 
 config PARTITION
 	bool
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

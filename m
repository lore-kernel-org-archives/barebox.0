Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8D6k-000194-K0
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 14:56:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Apr 2011 16:56:14 +0200
Message-Id: <1302274579-11158-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302274579-11158-1-git-send-email-s.hauer@pengutronix.de>
References: <1302274579-11158-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/8] add noshell support
To: barebox@lists.infradead.org

Some scenarios like initial bootloaders do not need interactive shell
support, so make this optional. Without a shell a board must provide
its own run_shell function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig |   13 ++++++++++++-
 1 files changed, 12 insertions(+), 1 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 83975ee..c3449a9 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -37,6 +37,9 @@ config BLOCK
 config BLOCK_WRITE
 	bool
 
+config HAVE_NOSHELL
+	bool
+
 menu "General Settings              "
 
 config LOCALVERSION_AUTO
@@ -234,6 +237,14 @@ choice
 		select COMMAND_SUPPORT
 		help
 		  simple shell. No if/then, no return values from commands, no loops
+
+	config SHELL_NONE
+		depends on HAVE_NOSHELL
+		bool "no shell (noninteractive build)"
+		help
+		  No shell at all. This means no shell is started and your board has
+		  to provide a run_shell() function which is started at the end of
+		  the barebox startup process.
 endchoice
 
 config GLOB
@@ -402,7 +413,7 @@ config DEFAULT_ENVIRONMENT
 config DEFAULT_ENVIRONMENT_GENERIC
 	bool
 	depends on DEFAULT_ENVIRONMENT
-	select SHELL_HUSH
+	depends on SHELL_HUSH
 	select HUSH_GETOPT
 	select CMD_CRC
 	select CMD_CRC_CMP
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCpij-0007XW-Ic
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 08:26:26 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Mon,  1 Nov 2010 09:26:18 +0100
Message-Id: <1288599979-3905-5-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1288599979-3905-1-git-send-email-r.schwebel@pengutronix.de>
References: <1288599979-3905-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 4/5] allno: make simple shell the default
To: barebox@lists.infradead.org

Reorder the shells in Kconfig, in order to make the simple shell the
default over hush. For the sandbox_defconfig this makes the image
smaller:

before:
-rwxr-xr-x 1 rsc ptx 60747 Oct 29 09:19 barebox

after:
-rwxr-xr-x 1 rsc ptx 53275 Oct 29 09:18 barebox

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 common/Kconfig |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index ad70cde..54a40e9 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -214,16 +214,16 @@ config MAXARGS
 choice
 	prompt "Select your shell"
 
+	config SHELL_SIMPLE
+		bool "Simple parser"
+		help
+		  simple shell. No if/then, no return values from commands, no loops
+
 	config SHELL_HUSH
 		bool "hush parser"
 		help
 		  Enable hush support. This is the most advanced shell available
 		  for barebox.
-
-	config SHELL_SIMPLE
-		bool "Simple parser"
-		help
-		  simple shell. No if/then, no return values from commands, no loops
 endchoice
 
 config GLOB
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

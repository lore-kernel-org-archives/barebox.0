Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XDZ8G-0001KM-QG
 for barebox@lists.infradead.org; Sat, 02 Aug 2014 13:13:57 +0000
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Date: Sat,  2 Aug 2014 10:12:26 -0300
Message-Id: <1406985146-11245-1-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: [PATCH] trivial: Correct word spelling, s/miscelleanous/miscellaneous
To: barebox@lists.infradead.org

Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 Documentation/commands.rst | 2 +-
 commands/Kconfig           | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/commands.rst b/Documentation/commands.rst
index 0dc9e1b..261af2a 100644
--- a/Documentation/commands.rst
+++ b/Documentation/commands.rst
@@ -73,7 +73,7 @@ Hardware Manipulation
 
    commands/hwmanip/*
 
-Miscelleanous
+Miscellaneous
 -------------
 .. toctree::
    :titlesonly:
diff --git a/commands/Kconfig b/commands/Kconfig
index 0765de8..3a49baf 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1881,7 +1881,7 @@ endmenu
 
 
 
-menu "Miscelleanous"
+menu "Miscellaneous"
 
 config CMD_2048
 	tristate
@@ -1998,7 +1998,7 @@ config CMD_TIME
 	  Note: This command depends on COMMAND being interruptible,
 	  otherwise the timer may overrun resulting in incorrect results
 
-# end Miscelleanous commands
+# end Miscellaneous commands
 endmenu
 
 
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

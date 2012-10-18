Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOlwS-0000QA-JY
 for barebox@lists.infradead.org; Thu, 18 Oct 2012 08:59:01 +0000
Received: by mail-lb0-f177.google.com with SMTP id gi11so5547343lbb.36
 for <barebox@lists.infradead.org>; Thu, 18 Oct 2012 01:58:58 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 18 Oct 2012 12:58:55 +0400
Message-Id: <1350550735-25666-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] commands/Kconfig: move 'ln' to the 'file commands' section
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/Kconfig |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index d89cda9..546e58e 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -57,10 +57,6 @@ config CMD_READLINE
 	tristate
 	prompt "readline"
 
-config CMD_LN
-	tristate
-	prompt "ln"
-
 config CMD_TRUE
 	tristate
 	default y
@@ -216,6 +212,10 @@ config CMD_DIRNAME
 	  Strip last component of file name and store the result in a
 	  environment variable
 
+config CMD_LN
+	tristate
+	prompt "ln"
+
 config CMD_READLINK
 	tristate
 	prompt "readlink"
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

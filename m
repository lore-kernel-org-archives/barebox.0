Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xu1mk-0002Am-SW
 for barebox@lists.infradead.org; Thu, 27 Nov 2014 16:19:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Nov 2014 17:15:26 +0100
Message-Id: <1417104932-13960-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1417104932-13960-1-git-send-email-s.hauer@pengutronix.de>
References: <1417104932-13960-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/11] command: load[sbxy]: Depend on CONSOLE_FULL
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 494a019..a3d8eaf 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -454,7 +454,7 @@ config CMD_GO
 	  in which case the file is memmapped and executed
 
 config CMD_LOADB
-	depends on !CONSOLE_NONE
+	depends on CONSOLE_FULL
 	select CRC16
 	tristate
 	prompt "loadb"
@@ -470,7 +470,7 @@ config CMD_LOADB
 		  -c	create file if not present
 
 config CMD_LOADS
-	depends on !CONSOLE_NONE
+	depends on CONSOLE_FULL
 	tristate
 	prompt "loads"
 	help
@@ -482,7 +482,7 @@ config CMD_LOADS
 
 config CMD_LOADY
 	select XYMODEM
-	depends on !CONSOLE_NONE
+	depends on CONSOLE_FULL
 	tristate
 	prompt "loady"
 	help
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

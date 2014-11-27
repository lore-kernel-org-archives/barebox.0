Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XtzCw-00076T-I9
 for barebox@lists.infradead.org; Thu, 27 Nov 2014 13:34:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Nov 2014 14:33:27 +0100
Message-Id: <1417095207-24272-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1417095207-24272-1-git-send-email-s.hauer@pengutronix.de>
References: <1417095207-24272-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] command: dmesg: depend on !CONSOLE_NONE
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/commands/Kconfig b/commands/Kconfig
index 8dfd826..52ba8b3 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -88,6 +88,7 @@ config CMD_DMESG
 	tristate
 	prompt "dmesg"
 	select LOGBUF
+	depends on !CONSOLE_NONE
 	help
 	  Print or control the log message buffer.
 
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

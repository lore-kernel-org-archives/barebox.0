Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XoSZg-0001pC-Qb
 for barebox@lists.infradead.org; Wed, 12 Nov 2014 07:42:45 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 591C1A00301
 for <barebox@lists.infradead.org>; Wed, 12 Nov 2014 08:42:33 +0100 (CET)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Wed, 12 Nov 2014 08:41:53 +0100
Message-Id: <1415778114-41864-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH 1/2] xymodem: select CRC16 from lib
To: barebox@lists.infradead.org

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 commands/Kconfig | 1 -
 lib/Kconfig      | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index bef5847..494a019 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -481,7 +481,6 @@ config CMD_LOADS
 	  Load S-Record file over serial line with offset OFFS.
 
 config CMD_LOADY
-	select CRC16
 	select XYMODEM
 	depends on !CONSOLE_NONE
 	tristate
diff --git a/lib/Kconfig b/lib/Kconfig
index d4095fd..62695f1 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -41,6 +41,7 @@ config QSORT
 
 config XYMODEM
 	bool
+	select CRC16
 
 config LIBSCAN
 	bool
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

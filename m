Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1URm8L-0007Tz-C0
 for barebox@lists.infradead.org; Mon, 15 Apr 2013 16:19:57 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Mon, 15 Apr 2013 18:19:45 +0200
Message-Id: <1366042785-31147-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH] commands: the crc command is actually called crc32
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 commands/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index c1454c7..777b52c 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -308,12 +308,12 @@ config CMD_MEMORY
 config CMD_CRC
 	tristate
 	select CRC32
-	prompt "crc"
+	prompt "crc32"
 
 config CMD_CRC_CMP
 	tristate
 	depends on CMD_CRC
-	prompt "compare 2 files crc"
+	prompt "compare 2 files using crc32"
 
 config CMD_DIGEST
 	tristate
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

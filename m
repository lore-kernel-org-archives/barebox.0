Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QLLB1-0003V8-A1
	for barebox@lists.infradead.org; Sat, 14 May 2011 20:11:04 +0000
Received: by wwb39 with SMTP id 39so2851169wwb.18
	for <barebox@lists.infradead.org>; Sat, 14 May 2011 13:11:01 -0700 (PDT)
From: Peter Korsgaard <jacmet@sunsite.dk>
Date: Sat, 14 May 2011 22:10:54 +0200
Message-Id: <1305403854-19528-1-git-send-email-jacmet@sunsite.dk>
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
Subject: [PATCH] commands/crc.c: fix typo in help text
To: barebox@lists.infradead.org

Signed-off-by: Peter Korsgaard <jacmet@sunsite.dk>
---
 commands/crc.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/commands/crc.c b/commands/crc.c
index 993074c..01fedd7 100644
--- a/commands/crc.c
+++ b/commands/crc.c
@@ -150,7 +150,7 @@ BAREBOX_CMD_HELP_OPT  ("-f <file>", "Use file instead of memory.\n")
 #ifdef CONFIG_CMD_CRC_CMP
 BAREBOX_CMD_HELP_OPT  ("-F <file>", "Use file to compare.\n")
 #endif
-BAREBOX_CMD_HELP_OPT  ("-v <crc>",  "Verfify\n")
+BAREBOX_CMD_HELP_OPT  ("-v <crc>",  "Verify\n")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(crc32)
-- 
1.7.4.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

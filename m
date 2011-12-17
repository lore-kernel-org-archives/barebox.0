Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rbwe0-00052i-Ds
 for barebox@lists.infradead.org; Sat, 17 Dec 2011 15:57:53 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Sat, 17 Dec 2011 16:57:40 +0100
Message-Id: <1324137460-5585-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH] commands: really print BAREBOX_CMD_HELP_TEXT
To: barebox@lists.infradead.org

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---

Or am I missing something?

 include/command.h |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/include/command.h b/include/command.h
index e221546..9a90e0b 100644
--- a/include/command.h
+++ b/include/command.h
@@ -95,7 +95,7 @@ static const __maybe_unused char cmd_##_name##_help[] =
 #define BAREBOX_CMD_HELP_USAGE(_name) "Usage: " _name
 #define BAREBOX_CMD_HELP_SHORT(_text) _text
 #define BAREBOX_CMD_HELP_OPT(_opt, _desc) _opt "\t" _desc
-#define BAREBOX_CMD_HELP_TEXT(_text)
+#define BAREBOX_CMD_HELP_TEXT(_text) _text
 #define BAREBOX_CMD_HELP_END ;
 
 #ifdef CONFIG_LONGHELP
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

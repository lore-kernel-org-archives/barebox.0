Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moutng.kundenserver.de ([212.227.126.187])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Srp5o-0008Ra-Lv
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 11:40:30 +0000
From: Christian Kapeller <christian.kapeller@cmotion.eu>
Date: Thu, 19 Jul 2012 13:40:19 +0200
Message-Id: <1342698019-21374-1-git-send-email-christian.kapeller@cmotion.eu>
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
Subject: [PATCH] Fix compile error loady command, without loadb.
To: barebox@lists.infradead.org

The global variable ofd is needed by both loady and loadb.
---
 commands/loadb.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/loadb.c b/commands/loadb.c
index 9a697dd..50f323e 100644
--- a/commands/loadb.c
+++ b/commands/loadb.c
@@ -61,10 +61,10 @@
 #define untochar(x)	((int) (((x) - SPACE) & 0xff))
 #define DEF_FILE	"image.bin"
 
-#ifdef CONFIG_CMD_LOADB
-
 static int ofd;			/* output file descriptor */
 
+#ifdef CONFIG_CMD_LOADB
+
 /* Size of my buffer to write to o/p file */
 #define MAX_WRITE_BUFFER 4096	/* Write size to o/p file */
 static char *write_buffer;	/* buffer for finalized data to write */
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

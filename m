Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Smrra-0002DV-Ro
 for barebox@lists.infradead.org; Thu, 05 Jul 2012 19:37:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jul 2012 21:36:39 +0200
Message-Id: <1341517020-5581-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1341517020-5581-1-git-send-email-s.hauer@pengutronix.de>
References: <1341517020-5581-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/30] loadb: fix compilation
To: barebox@lists.infradead.org

'ofd' is always needed, even if LOADB is not selected.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/loadb.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

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
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

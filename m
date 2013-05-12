Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22d.google.com ([2a00:1450:4013:c01::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbW1y-0002tQ-Sc
 for barebox@lists.infradead.org; Sun, 12 May 2013 13:09:48 +0000
Received: by mail-ea0-f173.google.com with SMTP id n15so145480ead.4
 for <barebox@lists.infradead.org>; Sun, 12 May 2013 06:09:17 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sun, 12 May 2013 15:09:03 +0200
Message-Id: <1368364146-6024-3-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 2/5] scripts: kwboot: add support for Marvell Dove
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Marvell Dove SoC also has an UART bootmode to upload payload after
powerup. In contrast to Kirkwood and Armada 370/XP, Dove does not
respond to a special sequence sent on UART0 but requires to be
booted into UART bootmode by bootstraps. This is usually done by
pressing a push button that will set bootstraps accordingly.

This patch adds a new option, documentation and corresponding prompts
to support the above requirements. Also a left-over option ('-p')
is removed.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 scripts/kwboot.c |   31 ++++++++++++++++++++++---------
 1 file changed, 22 insertions(+), 9 deletions(-)

diff --git a/scripts/kwboot.c b/scripts/kwboot.c
index afc8493..33c94b3 100644
--- a/scripts/kwboot.c
+++ b/scripts/kwboot.c
@@ -1,5 +1,6 @@
 /*
- * Boot a Marvell Kirkwood SoC, with Xmodem over UART0.
+ * Boot a Marvell SoC, with Xmodem over UART0.
+ *  supports Kirkwood, Dove, Armada 370, Armada XP
  *
  * (c) 2012 Daniel Stodden <daniel.stodden@gmail.com>
  *
@@ -180,6 +181,9 @@ kwboot_tty_send(int fd, const void *buf, size_t len)
 	int rc;
 	ssize_t n;
 
+	if (!buf)
+		return 0;
+
 	rc = -1;
 
 	do {
@@ -264,7 +268,10 @@ kwboot_bootmsg(int tty, void *msg)
 	int rc;
 	char c;
 
-	kwboot_printv("Sending boot message. Please reboot the target...");
+	if (msg == NULL)
+		kwboot_printv("Please reboot the target into UART boot mode...");
+	else
+		kwboot_printv("Sending boot message. Please reboot the target...");
 
 	do {
 		rc = tcflush(tty, TCIOFLUSH);
@@ -580,10 +587,13 @@ static void
 kwboot_usage(FILE *stream, char *progname)
 {
 	fprintf(stream,
-		"Usage: %s [-d | -b <image>] [ -p ] [ -t ] "
-		"[-B <baud> ] <TTY>\n", progname);
+		"Usage: %s [-d | -b <image> | -D <image> ] [ -t ] [-B <baud> ] <TTY>\n",
+		progname);
 	fprintf(stream, "\n");
-	fprintf(stream, "  -b <image>: boot <image>\n");
+	fprintf(stream,
+		"  -b <image>: boot <image> with preamble (Kirkwood, Armada 370/XP)\n");
+	fprintf(stream,
+		"  -D <image>: boot <image> without preamble (Dove)\n");
 	fprintf(stream, "  -d: enter debug mode\n");
 	fprintf(stream, "\n");
 	fprintf(stream, "  -t: mini terminal\n");
@@ -616,7 +626,7 @@ main(int argc, char **argv)
 	kwboot_verbose = isatty(STDOUT_FILENO);
 
 	do {
-		int c = getopt(argc, argv, "hb:dptB:");
+		int c = getopt(argc, argv, "hb:dtB:D:");
 		if (c < 0)
 			break;
 
@@ -626,6 +636,11 @@ main(int argc, char **argv)
 			imgpath = optarg;
 			break;
 
+		case 'D':
+			bootmsg = NULL;
+			imgpath = optarg;
+			break;
+
 		case 'd':
 			debugmsg = kwboot_msg_debug;
 			break;
@@ -675,9 +690,7 @@ main(int argc, char **argv)
 			perror("debugmsg");
 			goto out;
 		}
-	}
-
-	if (bootmsg) {
+	} else {
 		rc = kwboot_bootmsg(tty, bootmsg);
 		if (rc) {
 			perror("bootmsg");
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

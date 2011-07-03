Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f43.google.com ([209.85.161.43])
	by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QdTgd-0000ds-Nx
	for barebox@lists.infradead.org; Sun, 03 Jul 2011 20:54:41 +0000
Received: by fxg17 with SMTP id 17so4167191fxg.16
	for <barebox@lists.infradead.org>; Sun, 03 Jul 2011 13:53:29 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  4 Jul 2011 00:53:01 +0400
Message-Id: <1309726383-17932-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] commands/bootm.c: fix unused-but-set-variable gcc warning
To: barebox@lists.infradead.org

---
 commands/bootm.c |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 34164bc..e5ffacb 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -282,7 +282,6 @@ static int handler_parse_options(struct image_data *data, int opt, char *optarg)
 
 static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 {
-	ulong	iflag;
 	int	opt;
 	image_header_t *os_header;
 	struct image_handle *os_handle, *initrd_handle = NULL;
@@ -344,7 +343,7 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 	 * recover from any failures any more...
 	 */
 
-	iflag = disable_interrupts();
+	disable_interrupts();
 
 	puts ("OK\n");
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

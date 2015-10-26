Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22c.google.com ([2a00:1450:400c:c05::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZqmEb-0004oN-AC
 for barebox@lists.infradead.org; Mon, 26 Oct 2015 18:11:06 +0000
Received: by wicll6 with SMTP id ll6so126504210wic.0
 for <barebox@lists.infradead.org>; Mon, 26 Oct 2015 11:10:42 -0700 (PDT)
From: Alexander Aring <alex.aring@gmail.com>
Date: Mon, 26 Oct 2015 19:10:27 +0100
Message-Id: <1445883029-23173-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 1/3] loadb: add missing brackets in help
To: barebox@lists.infradead.org

This patch adds missing brackets in the help text of loadb command.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 commands/loadb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/loadb.c b/commands/loadb.c
index be5830d..aabb00a 100644
--- a/commands/loadb.c
+++ b/commands/loadb.c
@@ -681,9 +681,9 @@ static int do_load_serial_bin(int argc, char *argv[])
 BAREBOX_CMD_HELP_START(loadb)
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT("-f FILE", "download to FILE (default image.bin")
+BAREBOX_CMD_HELP_OPT("-f FILE", "download to FILE (default image.bin)")
 BAREBOX_CMD_HELP_OPT("-o OFFS", "destination file OFFSet (default 0)")
-BAREBOX_CMD_HELP_OPT("-b BAUD", "baudrate for download (default: console baudrate")
+BAREBOX_CMD_HELP_OPT("-b BAUD", "baudrate for download (default: console baudrate)")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(loadb)
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

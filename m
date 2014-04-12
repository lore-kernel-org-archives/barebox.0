Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp36.i.mail.ru ([94.100.177.96])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WYt2Z-00071w-C4
 for barebox@lists.infradead.org; Sat, 12 Apr 2014 08:11:57 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 12 Apr 2014 12:11:00 +0400
Message-Id: <1397290265-21273-7-git-send-email-shc_work@mail.ru>
In-Reply-To: <1397290265-21273-1-git-send-email-shc_work@mail.ru>
References: <1397290265-21273-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 07/12] commands/umount: Return real error code if "umount" fail
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 commands/umount.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/commands/umount.c b/commands/umount.c
index e6de1bc..8dcf7f0 100644
--- a/commands/umount.c
+++ b/commands/umount.c
@@ -28,11 +28,10 @@ static int do_umount(int argc, char *argv[])
 	if (argc != 2)
 		return COMMAND_ERROR_USAGE;
 
-	if ((ret = umount(argv[1]))) {
+	if ((ret = umount(argv[1])))
 		perror("umount");
-		return 1;
-	}
-	return 0;
+
+	return ret;
 }
 
 static const __maybe_unused char cmd_umount_help[] =
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

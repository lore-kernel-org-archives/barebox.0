Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TQCKe-0002Pe-0c
 for barebox@lists.infradead.org; Mon, 22 Oct 2012 07:21:52 +0000
Received: by mail-bk0-f49.google.com with SMTP id j4so641041bkw.36
 for <barebox@lists.infradead.org>; Mon, 22 Oct 2012 00:21:51 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Mon, 22 Oct 2012 09:23:28 +0200
Message-Id: <1350890612-10588-5-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1350890612-10588-1-git-send-email-alex.aring@gmail.com>
References: <1350890612-10588-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 4/8] nandtest: change flash length variable type
To: barebox@lists.infradead.org

Change flash 'length' variable type to off_t instead of int.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 commands/nandtest.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/commands/nandtest.c b/commands/nandtest.c
index 656fb65..e25f062 100644
--- a/commands/nandtest.c
+++ b/commands/nandtest.c
@@ -195,9 +195,8 @@ static void print_stats(int nr_passes, int length)
 /* Main program. */
 static int do_nandtest(int argc, char *argv[])
 {
-	int opt, length = -1, do_nandtest_dev = -1;
-	off_t flash_offset = 0;
-	off_t test_ofs;
+	int opt, do_nandtest_dev = -1;
+	off_t flash_offset = 0, test_ofs, length = 0;
 	unsigned int nr_iterations = 1, iter;
 	int i;
 	int ret = -1;
@@ -272,7 +271,7 @@ static int do_nandtest(int argc, char *argv[])
 		goto err;
 	}
 
-	if (length == -1) {
+	if (!length) {
 		length = meminfo.size;
 		length -= flash_offset;
 	}
@@ -292,13 +291,13 @@ static int do_nandtest(int argc, char *argv[])
 	}
 	if (length % meminfo.erasesize) {
 		printf("Length 0x%08x not multiple of erase size 0x%08x\n",
-			length, meminfo.erasesize);
+			(unsigned)length, meminfo.erasesize);
 		goto err;
 	}
 	if (length + flash_offset > meminfo.size) {
 		printf("Length 0x%08x + offset 0x%08x exceeds "
-				"device size 0x%08x\n",
-			length, (unsigned)flash_offset, meminfo.size);
+				"device size 0x%08x\n", (unsigned)length,
+				(unsigned)flash_offset, meminfo.size);
 		goto err;
 	}
 
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

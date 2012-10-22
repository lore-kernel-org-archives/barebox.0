Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TQCKi-0002Q3-MR
 for barebox@lists.infradead.org; Mon, 22 Oct 2012 07:21:57 +0000
Received: by mail-bk0-f49.google.com with SMTP id j4so641045bkw.36
 for <barebox@lists.infradead.org>; Mon, 22 Oct 2012 00:21:56 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Mon, 22 Oct 2012 09:23:32 +0200
Message-Id: <1350890612-10588-9-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 8/8] nandtest: add another constraints check
To: barebox@lists.infradead.org

Add check if writesize is a multiple of erasesize.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 commands/nandtest.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/commands/nandtest.c b/commands/nandtest.c
index f9c9318..f08f8eb 100644
--- a/commands/nandtest.c
+++ b/commands/nandtest.c
@@ -282,6 +282,13 @@ static int do_nandtest(int argc, char *argv[])
 	printf("Erasesize: 0x%08x\n", meminfo.erasesize);
 	printf("Starting nandtest...\n");
 
+	if (!IS_ALIGNED(meminfo.erasesize, meminfo.writesize)) {
+		printf("Erasesize 0x%08x is not a multiple "
+				"of writesize 0x%08x.\n"
+				"Please check driver implementation\n",
+				meminfo.erasesize, meminfo.writesize);
+		goto err;
+	}
 	if (!IS_ALIGNED(flash_offset, meminfo.erasesize)) {
 		printf("Offset 0x%08llx not multiple of erase size 0x%08x\n",
 			flash_offset, meminfo.erasesize);
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

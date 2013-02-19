Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f54.google.com ([209.85.214.54])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U7uE5-0006PU-Ca
 for barebox@lists.infradead.org; Tue, 19 Feb 2013 20:55:45 +0000
Received: by mail-bk0-f54.google.com with SMTP id w5so3264148bku.41
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2013 12:55:43 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Tue, 19 Feb 2013 21:56:34 +0100
Message-Id: <1361307394-24649-2-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1361307394-24649-1-git-send-email-alex.aring@gmail.com>
References: <1361307394-24649-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 2/2] nandtest: fix length calculation
To: barebox@lists.infradead.org

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 commands/nandtest.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/commands/nandtest.c b/commands/nandtest.c
index 4e6024b..ba15ecf 100644
--- a/commands/nandtest.c
+++ b/commands/nandtest.c
@@ -112,7 +112,7 @@ static int erase_and_write(loff_t ofs, unsigned char *data,
 					newstats.corrected - oldstats.corrected,
 					ofs + memregion.offset + i);
 			init_progression_bar(length);
-			show_progress(ofs);
+			show_progress(ofs + i);
 			if ((newstats.corrected-oldstats.corrected) >=
 					MAX_ECC_BITS) {
 				/* Increment ECC stats that
@@ -130,7 +130,7 @@ static int erase_and_write(loff_t ofs, unsigned char *data,
 			printf("\nECC failed at page 0x%08llx\n",
 					ofs + memregion.offset + i);
 			init_progression_bar(length);
-			show_progress(ofs);
+			show_progress(ofs + i);
 			oldstats.failed = newstats.failed;
 			ecc_failed_cnt++;
 		}
@@ -292,8 +292,8 @@ static int do_nandtest(int argc, char *argv[])
 
 	for (iter = 0; iter < nr_iterations; iter++) {
 		init_progression_bar(length);
-		for (test_ofs = flash_offset;
-				test_ofs < flash_offset + length;
+		for (test_ofs = 0;
+				test_ofs < length;
 				test_ofs += meminfo.erasesize) {
 			show_progress(test_ofs);
 			srand(seed);
-- 
1.8.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

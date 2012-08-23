Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T4cy3-0003Nz-9h
 for barebox@lists.infradead.org; Thu, 23 Aug 2012 19:21:24 +0000
Received: by lagu2 with SMTP id u2so633318lag.36
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2012 12:21:20 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 23 Aug 2012 23:21:11 +0400
Message-Id: <1345749671-9045-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] commands/digest: don't print checksum for non-existing files
To: barebox@lists.infradead.org

This fixes the case:

  barebox:/ md5sum non-existing-file
  non-existing-file: No such file or directory
  00000000000000000000000000000000  non-existing-file     0x00000000 ... 0xffffffffffffffff
  barebox:/

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/digest.c |   10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/commands/digest.c b/commands/digest.c
index 07cbec9..e334a40 100644
--- a/commands/digest.c
+++ b/commands/digest.c
@@ -62,11 +62,13 @@ static int do_digest(char *algorithm, int argc, char *argv[])
 
 		if (digest_file_window(d, filename, hash, start, size) < 0)
 			ret = 1;
+		else {
+			for (i = 0; i < d->length; i++)
+				printf("%02x", hash[i]);
 
-		for (i = 0; i < d->length; i++)
-			printf("%02x", hash[i]);
-
-		printf("  %s\t0x%08llx ... 0x%08llx\n", filename, start, start + size);
+			printf("  %s\t0x%08llx ... 0x%08llx\n",
+				filename, start, start + size);
+		}
 
 		argv++;
 	}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

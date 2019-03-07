Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nmq-0005Fg-Jm
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 07:49:59 +0000
Received: by mail-pg1-x541.google.com with SMTP id j3so10605406pgm.11
 for <barebox@lists.infradead.org>; Wed, 06 Mar 2019 23:49:52 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Mar 2019 23:49:25 -0800
Message-Id: <20190307074926.20539-17-andrew.smirnov@gmail.com>
In-Reply-To: <20190307074926.20539-1-andrew.smirnov@gmail.com>
References: <20190307074926.20539-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 16/17] commands: loadxy: Make use of open_and_lseek()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Save a bit of extra code by replacing explict calls to open() and
lseek() with a single call to open_and_lseek().

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/loadxy.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/commands/loadxy.c b/commands/loadxy.c
index 2bfe482fc..85efad67c 100644
--- a/commands/loadxy.c
+++ b/commands/loadxy.c
@@ -37,6 +37,7 @@
 #include <fcntl.h>
 #include <fs.h>
 #include <malloc.h>
+#include <libfile.h>
 
 #define DEF_FILE	"image.bin"
 
@@ -176,21 +177,11 @@ static int do_loadx(int argc, char *argv[])
 		output_file = DEF_FILE;
 
 	/* File should exist */
-	ofd = open(output_file, O_WRONLY | O_CREAT);
+	ofd = open_and_lseek(output_file, O_WRONLY | O_CREAT, offset);
 	if (ofd < 0) {
 		perror(argv[0]);
 		return 3;
 	}
-	/* Seek to the right offset */
-	if (offset) {
-		int seek = lseek(ofd, offset, SEEK_SET);
-		if (seek != offset) {
-			close(ofd);
-			ofd = 0;
-			perror(argv[0]);
-			return 4;
-		}
-	}
 
 	current_baudrate = console_get_baudrate(cdev);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

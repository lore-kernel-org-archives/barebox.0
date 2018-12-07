Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVAaQ-0007aU-Ci
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 07:30:11 +0000
Received: by mail-pl1-x644.google.com with SMTP id u18so1431924plq.7
 for <barebox@lists.infradead.org>; Thu, 06 Dec 2018 23:29:59 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  6 Dec 2018 23:29:51 -0800
Message-Id: <20181207072951.557-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] commands: boot: Remove useless code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

All of those variables are already initialized in-place in the
variable declaration section above to exactly the same values

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/boot.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/commands/boot.c b/commands/boot.c
index 5d81d79ce..0257b3dd4 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -29,10 +29,6 @@ static int do_boot(int argc, char *argv[])
 	struct bootentries *entries;
 	struct bootentry *entry;
 
-	verbose = 0;
-	dryrun = 0;
-	timeout = -1;
-
 	while ((opt = getopt(argc, argv, "vldmt:w:")) > 0) {
 		switch (opt) {
 		case 'v':
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

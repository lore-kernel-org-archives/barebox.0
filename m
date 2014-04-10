Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22f.google.com ([2a00:1450:4013:c00::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WYHgk-0005S8-K4
 for barebox@lists.infradead.org; Thu, 10 Apr 2014 16:18:55 +0000
Received: by mail-ee0-f47.google.com with SMTP id b15so3229018eek.34
 for <barebox@lists.infradead.org>; Thu, 10 Apr 2014 09:18:30 -0700 (PDT)
From: Alexander Aring <alex.aring@gmail.com>
Date: Thu, 10 Apr 2014 14:04:04 +0200
Message-Id: <1397131446-4816-2-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1397131446-4816-1-git-send-email-alex.aring@gmail.com>
References: <1397131446-4816-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 1/3] memtest: cleanup error handling
To: barebox@lists.infradead.org

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 commands/memtest.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/commands/memtest.c b/commands/memtest.c
index a71576e..dc05e9e 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -232,12 +232,12 @@ out:
 		if (ret == -EINTR)
 			printf("\n");
 
-		printf("Memtest failed.\n");
+		printf("Memtest failed. Error: %d\n", ret);
 		return 1;
-	} else {
-		printf("Memtest successful.\n");
-		return 0;
 	}
+
+	printf("Memtest successful.\n");
+	return 0;
 }
 
 static const __maybe_unused char cmd_memtest_help[] =
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

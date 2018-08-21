Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fs07z-0000II-R6
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 06:27:01 +0000
Received: by mail-pg1-x541.google.com with SMTP id a11-v6so7973298pgw.6
 for <barebox@lists.infradead.org>; Mon, 20 Aug 2018 23:26:45 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: [PATCH 21/22] bbu: Report update failures explicitly
Date: Mon, 20 Aug 2018 23:26:02 -0700
Message-Id: <20180821062603.17393-22-andrew.smirnov@gmail.com>
In-Reply-To: <20180821062603.17393-1-andrew.smirnov@gmail.com>
References: <20180821062603.17393-1-andrew.smirnov@gmail.com>
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
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Change the code of barebox_update() to explicitly log that update
failed instead of failing silently (unless update was interrupted) and
relying on user checking the return code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/bbu.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/common/bbu.c b/common/bbu.c
index 69ccac68a..690f2a566 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -260,13 +260,13 @@ int barebox_update(struct bbu_data *data)
 		return ret;
 
 	ret = handler->handler(handler, data);
-	if (ret == -EINTR)
-		printf("update aborted\n");
-
-	if (!ret)
-		printf("update succeeded\n");
+	if (ret) {
+		printf("update %s\n", (ret == -EINTR) ? "aborted" : "failed");
+		return ret;
+	}
 
-	return ret;
+	printf("update succeeded\n");
+	return 0;
 }
 
 /*
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

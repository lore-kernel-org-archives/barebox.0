Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gyj04-0001PZ-F1
 for barebox@lists.infradead.org; Tue, 26 Feb 2019 20:06:49 +0000
Received: by mail-pf1-x443.google.com with SMTP id s22so6765318pfh.4
 for <barebox@lists.infradead.org>; Tue, 26 Feb 2019 12:06:48 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 26 Feb 2019 12:06:36 -0800
Message-Id: <20190226200636.2364-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] commands: uimage: Drop needless variable in uimage_flush()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/uimage.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/commands/uimage.c b/commands/uimage.c
index 7c2dca41e..982da7101 100644
--- a/commands/uimage.c
+++ b/commands/uimage.c
@@ -13,11 +13,7 @@ static int uimage_fd;
 
 static int uimage_flush(void *buf, unsigned int len)
 {
-	int ret;
-
-	ret = write_full(uimage_fd, buf, len);
-
-	return ret;
+	return write_full(uimage_fd, buf, len);
 }
 
 static int do_uimage(int argc, char *argv[])
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

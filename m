Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward7l.mail.yandex.net ([84.201.143.140])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z9Xyd-0006y5-R9
 for barebox@lists.infradead.org; Mon, 29 Jun 2015 12:15:57 +0000
From: Alexander Smirnov <alllecs@yandex.ru>
Date: Mon, 29 Jun 2015 15:17:10 +0300
Message-Id: <1435580230-22785-1-git-send-email-alllecs@yandex.ru>
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
Subject: [PATCH] read_file_2(): drop unnecessary 'else'
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Alexander Smirnov <alllecs@yandex.ru>

Signed-off-by: Alexander Smirnov <alllecs@yandex.ru>
---
 lib/libfile.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/libfile.c b/lib/libfile.c
index 8acff04..ba03700 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -184,8 +184,8 @@ again:
 
 	if (read_size < s.st_size)
 		return -EFBIG;
-	else
-		return 0;
+
+	return 0;
 
 err_out1:
 	close(fd);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

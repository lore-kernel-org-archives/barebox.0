Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x229.google.com ([2607:f8b0:400e:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZvaDN-0002Ge-5t
 for barebox@lists.infradead.org; Mon, 09 Nov 2015 00:21:41 +0000
Received: by pasz6 with SMTP id z6so184642323pas.2
 for <barebox@lists.infradead.org>; Sun, 08 Nov 2015 16:21:20 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  8 Nov 2015 16:21:13 -0800
Message-Id: <1447028473-20462-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH] fs: smhfs: Fix return value of truncate()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Returning -ENOSYS as a result of truncate() breaks ability to write to
semihosting host's filesystem, so change the return value to 0. This
shouldn't cause any problems since all of the funcionlaity of
truncate() should is already handled by 'open' (via O_TRUNC) and
'write' (will automatically grow the file size when writing)
automatically

Unfortunately this was missed in original commit that introduced
semihosting

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 fs/smhfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/smhfs.c b/fs/smhfs.c
index a0df06c..f1b6d6b 100644
--- a/fs/smhfs.c
+++ b/fs/smhfs.c
@@ -58,7 +58,7 @@ static int smhfs_truncate(struct device_d __always_unused *dev,
 			  FILE __always_unused *f,
 			  ulong __always_unused size)
 {
-	return -ENOSYS;
+	return 0;
 }

 static int smhfs_open(struct device_d __always_unused *dev,
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

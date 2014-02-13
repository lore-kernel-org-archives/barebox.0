Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDsMA-0007cD-8a
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 09:13:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 10:12:53 +0100
Message-Id: <1392282773-7314-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] read_file: Use read_full
To: barebox@lists.infradead.org

At least NFS does not fulfill read requests > 1024 bytes at once.
Use read_full in read_file as read doesn't guarantee that the
whole request can be read at once.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/fs.c b/fs/fs.c
index 7a57bc0..eed0fce 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -60,7 +60,8 @@ again:
 	if (fd < 0)
 		goto err_out;
 
-	if (read(fd, buf, s.st_size) < s.st_size)
+	ret = read_full(fd, buf, s.st_size);
+	if (ret < 0)
 		goto err_out1;
 
 	close(fd);
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

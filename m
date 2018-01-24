Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eeFkr-0005TU-TC
 for barebox@lists.infradead.org; Wed, 24 Jan 2018 07:46:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 24 Jan 2018 08:45:34 +0100
Message-Id: <20180124074534.7966-8-s.hauer@pengutronix.de>
In-Reply-To: <20180124074534.7966-1-s.hauer@pengutronix.de>
References: <20180124074534.7966-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/7] fs: remove now unused function can_lseek_backward()
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/fs.h | 20 --------------------
 1 file changed, 20 deletions(-)

diff --git a/include/fs.h b/include/fs.h
index 5a50d9b9e4..2d08add01a 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -101,26 +101,6 @@ struct fs_device_d {
 	char *linux_rootarg;
 };
 
-/*
- * Some filesystems i.e. tftpfs only support lseek into one direction.
- * To detect this limited functionality we add this extra function.
- * Additionaly we also return 0 if we even can not seek forward.
- */
-static inline int can_lseek_backward(int fd)
-{
-	int ret;
-
-	ret = lseek(fd, 1, SEEK_SET);
-	if (ret < 0)
-		return 0;
-
-	ret = lseek(fd, 0, SEEK_SET);
-	if (ret < 0)
-		return 0;
-
-	return 1;
-}
-
 bool __is_tftp_fs(const char *path);
 
 static inline bool is_tftp_fs(const char *path)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

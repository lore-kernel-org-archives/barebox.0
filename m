Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQDsT-0002MA-W4
 for barebox@lists.infradead.org; Sun, 29 Sep 2013 10:05:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 29 Sep 2013 12:04:56 +0200
Message-Id: <1380449100-6295-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380449100-6295-1-git-send-email-s.hauer@pengutronix.de>
References: <1380449100-6295-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/9] fs: remove unused field 'name' from struct fs_driver_d
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/fs.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/fs.h b/include/fs.h
index c6c0f0e..b82c246 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -39,7 +39,6 @@ typedef struct filep {
 #define FS_DRIVER_NO_DEV	1
 
 struct fs_driver_d {
-	char *name;
 	int (*probe) (struct device_d *dev);
 	int (*mkdir)(struct device_d *dev, const char *pathname);
 	int (*rmdir)(struct device_d *dev, const char *pathname);
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

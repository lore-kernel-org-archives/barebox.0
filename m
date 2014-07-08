Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X4R6m-0006Va-Uq
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 08:50:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Jul 2014 10:49:59 +0200
Message-Id: <1404809417-21477-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
References: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/21] fat: Use correct format specifier
To: barebox@lists.infradead.org

Use %zd to print size_t arguments.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fat/fat.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index e65ef58..f8094d0 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -167,7 +167,7 @@ static int fat_write(struct device_d *_dev, FILE *f, const void *buf, size_t ins
 
 	ret = f_write(f_file, buf, insize, &outsize);
 
-	debug("%s: %d %d %d %p\n", __func__, ret, insize, outsize, f_file);
+	debug("%s: %d %zd %d %p\n", __func__, ret, insize, outsize, f_file);
 
 	if (ret)
 		return ret;
@@ -260,7 +260,7 @@ static int fat_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
 
 	ret = f_read(f_file, buf, insize, &outsize);
 
-	debug("%s: %d %d %d %p\n", __func__, ret, insize, outsize, f_file);
+	debug("%s: %d %zd %d %p\n", __func__, ret, insize, outsize, f_file);
 
 	if (ret)
 		return ret;
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

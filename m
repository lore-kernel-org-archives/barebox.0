Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z81ZF-0005qP-5a
 for barebox@lists.infradead.org; Thu, 25 Jun 2015 07:27:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 25 Jun 2015 09:27:01 +0200
Message-Id: <1435217221-8086-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] image_renderer: Use read_file_2
To: Barebox List <barebox@lists.infradead.org>

This returns a proper error code and allows us to print a proper
error message which might not always be -ENOMEM.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/gui/image_renderer.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/lib/gui/image_renderer.c b/lib/gui/image_renderer.c
index dd29389..9bef99a 100644
--- a/lib/gui/image_renderer.c
+++ b/lib/gui/image_renderer.c
@@ -37,10 +37,10 @@ struct image *image_renderer_open(const char* file)
 	struct image *img;
 	int ret;
 
-	data = read_file(file, &size);
-	if (!data) {
-		printf("unable to read %s\n", file);
-		return ERR_PTR(-ENOMEM);
+	ret = read_file_2(file, &size, &data, FILESIZE_MAX);
+	if (ret) {
+		printf("unable to read %s: %s\n", file, strerror(-ret));
+		return ERR_PTR(ret);
 	}
 
 	ir = get_renderer(data, size);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

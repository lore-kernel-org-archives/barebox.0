Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e9xgY-0001D2-PX
 for barebox@lists.infradead.org; Wed, 01 Nov 2017 18:24:20 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <mgr@pengutronix.de>) id 1e9xgA-0007u0-Ht
 for barebox@lists.infradead.org; Wed, 01 Nov 2017 19:23:54 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mgr@pengutronix.de>) id 1e9xgA-0000Oq-B6
 for barebox@lists.infradead.org; Wed, 01 Nov 2017 19:23:54 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed,  1 Nov 2017 19:23:45 +0100
Message-Id: <20171101182345.1495-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] uimage: fix: broken uimage_open on tftp since forward lseek
 works
To: barebox@lists.infradead.org

Since commit ce0cc7fe we support forward seek on tftpfs. This feature
breaks the condition to check rather we open an uimage over tftp. Since
random seeking is the problem here, we check in both directions.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 common/uimage.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/uimage.c b/common/uimage.c
index 28a25bba2d..b07c6ff279 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -113,7 +113,8 @@ again:
 	 * this cannot be implemented in tftp fs, so we detect this
 	 * by doing a test lseek and copy the file to ram if it fails
 	 */
-	if (IS_BUILTIN(CONFIG_FS_TFTP) && lseek(fd, 0, SEEK_SET)) {
+	if (IS_BUILTIN(CONFIG_FS_TFTP) &&
+			(lseek(fd, 4, SEEK_SET) && lseek(fd, 0, SEEK_SET))) {
 		close(fd);
 		ret = copy_file(filename, uimage_tmp, 0);
 		if (ret)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

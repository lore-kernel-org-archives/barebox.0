Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1beOcv-0002Dy-Fc
 for barebox@lists.infradead.org; Mon, 29 Aug 2016 15:37:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 29 Aug 2016 17:37:15 +0200
Message-Id: <1472485035-21602-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] blspec: Handle nfs:// pathes from boot
To: Barebox List <barebox@lists.infradead.org>

Fixes: cb47dde boot: Call blspec_scan_directory() only on strings containing an absolute path

This commit introduced a check if the path contains a '/' at the
beginning. For booting a bootloader spec entry from NFS we have to
test the path for starting with "nfs://" aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/boot.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/boot.c b/common/boot.c
index e66bacb..df9cba5 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -250,6 +250,7 @@ static int bootscript_scan_path(struct bootentries *bootentries, const char *pat
  * - a cdev name
  * - a full path of a directory containing bootloader spec entries
  * - a full path of a directory containing bootscripts
+ * - a nfs:// path
  *
  * Returns the number of entries found or a negative error code.
  */
@@ -263,7 +264,7 @@ int bootentry_create_from_name(struct bootentries *bootentries,
 		if (ret > 0)
 			found += ret;
 
-		if (*name == '/') {
+		if (*name == '/' || !strncmp(name, "nfs://", 6)) {
 			ret = blspec_scan_directory(bootentries, name);
 			if (ret > 0)
 				found += ret;
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

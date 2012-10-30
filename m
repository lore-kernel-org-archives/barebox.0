Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTCMl-0005DB-3I
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 14:00:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Oct 2012 15:00:21 +0100
Message-Id: <1351605621-19717-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] uimage: Fix deleting of temporary file
To: barebox@lists.infradead.org

the uImage support may generate a temporary file which ought to be deleted
after usage. Due to the wrong filename this never happened. Fix this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/uimage.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/uimage.c b/common/uimage.c
index c72db41..3a97534 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -225,8 +225,8 @@ void uimage_close(struct uimage_handle *handle)
 	free(handle->name);
 	free(handle);
 
-	if (IS_BUILTIN(CONFIG_FS_TFTP) && !stat("/.uimage_tmp", &s))
-		unlink("/.uimage_tmp");
+	if (IS_BUILTIN(CONFIG_FS_TFTP) && !stat(uimage_tmp, &s))
+		unlink(uimage_tmp);
 }
 EXPORT_SYMBOL(uimage_close);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

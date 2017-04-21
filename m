Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp117.ord1c.emailsrvr.com ([108.166.43.117])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d1VGM-00070i-4I
 for barebox@lists.infradead.org; Fri, 21 Apr 2017 09:54:04 +0000
From: Ian Abbott <abbotti@mev.co.uk>
Date: Fri, 21 Apr 2017 10:53:25 +0100
Message-Id: <20170421095325.7142-1-abbotti@mev.co.uk>
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
Subject: [PATCH] state: Fix "pack" returning freed data for DTB backend
To: barebox@lists.infradead.org
Cc: Ian Abbott <abbotti@mev.co.uk>, Norbert Wiedmann <info@n-wiedmann.de>

`state_backend_format_dtb_pack()` passes a buffer containing state
packed in flattened DTB format back to its caller via its `buf`
parameter.  It then frees the buffer before returning.  This means the
caller (`state_save()`) will be working on freed buffer contents before
freeing the buffer a second time itself.  Fix it by removing the
spurious call to `free()`.

This should fix a bug reported by Norbert Wiedmann in
<http://lists.infradead.org/pipermail/barebox/2017-April/029980.html>.

Cc: Norbert Wiedmann <info@n-wiedmann.de>
Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
As reported by Norbert, there is an identical bug in the "dt-utils"
package.
---
 common/state/backend_format_dtb.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/common/state/backend_format_dtb.c b/common/state/backend_format_dtb.c
index 55fa1fc59..e88cda499 100644
--- a/common/state/backend_format_dtb.c
+++ b/common/state/backend_format_dtb.c
@@ -120,8 +120,6 @@ static int state_backend_format_dtb_pack(struct state_backend_format *format,
 		of_delete_node(fdtb->root);
 	fdtb->root = root;
 
-	free(fdt);
-
 	return 0;
 }
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

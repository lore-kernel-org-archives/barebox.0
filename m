Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g7LHe-0005z9-So
 for barebox@lists.infradead.org; Tue, 02 Oct 2018 14:04:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Oct 2018 16:03:53 +0200
Message-Id: <20181002140403.3735-5-s.hauer@pengutronix.de>
In-Reply-To: <20181002140403.3735-1-s.hauer@pengutronix.de>
References: <20181002140403.3735-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 04/14] fs: let dir_emit_dots return int
To: Barebox List <barebox@lists.infradead.org>

Change to the same prototype as the kernel to make code porting
easier.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/fs.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/linux/fs.h b/include/linux/fs.h
index 4550e8feeb..0c91434039 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -426,7 +426,7 @@ static inline bool dir_emit_dotdot(struct file *file, struct dir_context *ctx)
 			parent_ino(file->f_path.dentry), DT_DIR) == 0;
 }
 
-static inline void dir_emit_dots(struct file *file, struct dir_context *ctx)
+static inline int dir_emit_dots(struct file *file, struct dir_context *ctx)
 {
 	if (ctx->pos == 0) {
 		dir_emit_dot(file, ctx);
@@ -436,6 +436,7 @@ static inline void dir_emit_dots(struct file *file, struct dir_context *ctx)
 		dir_emit_dotdot(file, ctx);
 		ctx->pos = 2;
 	}
+	return true;
 }
 
 struct file_operations {
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

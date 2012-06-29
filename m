Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp15.mail.ru ([94.100.176.133])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SkeqD-0005nm-GU
 for barebox@lists.infradead.org; Fri, 29 Jun 2012 17:18:47 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 29 Jun 2012 21:19:20 +0400
Message-Id: <1340990360-5716-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] Unused files removed
To: barebox@lists.infradead.org

Files "modules.builtin" probably have been copied from kernel tree.
This files not used by barebox and can be removed safely.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 lib/lzo/modules.builtin          |    2 --
 lib/zlib_inflate/modules.builtin |    1 -
 2 files changed, 0 insertions(+), 3 deletions(-)
 delete mode 100644 lib/lzo/modules.builtin
 delete mode 100644 lib/zlib_inflate/modules.builtin

diff --git a/lib/lzo/modules.builtin b/lib/lzo/modules.builtin
deleted file mode 100644
index d860562..0000000
--- a/lib/lzo/modules.builtin
+++ /dev/null
@@ -1,2 +0,0 @@
-kernel/lib/lzo/lzo_compress.ko
-kernel/lib/lzo/lzo_decompress.ko
diff --git a/lib/zlib_inflate/modules.builtin b/lib/zlib_inflate/modules.builtin
deleted file mode 100644
index 7206225..0000000
--- a/lib/zlib_inflate/modules.builtin
+++ /dev/null
@@ -1 +0,0 @@
-kernel/lib/zlib_inflate/zlib_inflate.ko
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

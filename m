Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x229.google.com ([2a00:1450:4010:c03::229])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U2USc-0004gp-7k
 for barebox@lists.infradead.org; Mon, 04 Feb 2013 22:24:23 +0000
Received: by mail-la0-f41.google.com with SMTP id fo12so5167630lab.0
 for <barebox@lists.infradead.org>; Mon, 04 Feb 2013 14:24:19 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  5 Feb 2013 02:36:36 +0400
Message-Id: <1360017396-13321-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1360017396-13321-1-git-send-email-antonynpavlov@gmail.com>
References: <1360017396-13321-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/2] pbl: factorise linux/decompress/mm.h inclusion
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 lib/decompress_inflate.c |    1 -
 lib/decompress_unlzo.c   |    1 -
 pbl/decomp.c             |    2 ++
 3 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/decompress_inflate.c b/lib/decompress_inflate.c
index 5c1ebb6..526d6a1 100644
--- a/lib/decompress_inflate.c
+++ b/lib/decompress_inflate.c
@@ -4,7 +4,6 @@
 /* prevent inclusion of _LINUX_KERNEL_H in pre-boot environment: lots
  * errors about console_printk etc... on ARM */
 #define _LINUX_KERNEL_H
-#include <linux/decompress/mm.h>
 
 #include "zlib_inflate/inftrees.c"
 #include "zlib_inflate/inffast.c"
diff --git a/lib/decompress_unlzo.c b/lib/decompress_unlzo.c
index 1b2dc9d..2b0fbed 100644
--- a/lib/decompress_unlzo.c
+++ b/lib/decompress_unlzo.c
@@ -32,7 +32,6 @@
 #include <xfuncs.h>
 
 #ifdef STATIC
-#include <linux/decompress/mm.h>
 #include "lzo/lzo1x_decompress.c"
 #else
 #include <malloc.h>
diff --git a/pbl/decomp.c b/pbl/decomp.c
index aa6a31e..17fc01e 100644
--- a/pbl/decomp.c
+++ b/pbl/decomp.c
@@ -10,6 +10,8 @@
 
 #define STATIC static
 
+#include <linux/decompress/mm.h>
+
 #ifdef CONFIG_IMAGE_COMPRESSION_LZO
 #include "../../../lib/decompress_unlzo.c"
 #endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

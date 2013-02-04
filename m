Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f179.google.com ([209.85.217.179])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U2USa-0004go-NZ
 for barebox@lists.infradead.org; Mon, 04 Feb 2013 22:24:21 +0000
Received: by mail-lb0-f179.google.com with SMTP id j14so6925977lbo.24
 for <barebox@lists.infradead.org>; Mon, 04 Feb 2013 14:24:18 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  5 Feb 2013 02:36:35 +0400
Message-Id: <1360017396-13321-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/2] pbl: fix IMAGE_COMPRESSION_LZO-enabled build on MIPS
To: barebox@lists.infradead.org

Here's the error message:

  LD      arch/mips/pbl/zbarebox
pbl/built-in-pbl.o: In function `decompress_unlzo':
/home/antony/barebox.git.rebased.isp/pbl/decomp.c:35: undefined reference to `free'
pbl/built-in-pbl.o: In function `pbl_barebox_uncompress':
(.text.pbl_barebox_uncompress+0x6d0): relocation truncated to fit: R_MIPS_26 against `free'
pbl/built-in-pbl.o: In function `pbl_barebox_uncompress':
(.text.pbl_barebox_uncompress+0x6e0): undefined reference to `free'
pbl/built-in-pbl.o: In function `pbl_barebox_uncompress':
(.text.pbl_barebox_uncompress+0x6e0): relocation truncated to fit: R_MIPS_26 against `free'
make[1]: *** [arch/mips/pbl/zbarebox] Error 1
make: *** [zbarebox.bin] Error 2

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 lib/decompress_unlzo.c |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/lib/decompress_unlzo.c b/lib/decompress_unlzo.c
index 776719c..1b2dc9d 100644
--- a/lib/decompress_unlzo.c
+++ b/lib/decompress_unlzo.c
@@ -26,14 +26,16 @@
  */
 
 #include <common.h>
-#include <malloc.h>
 #include <linux/types.h>
 #include <errno.h>
 #include <fs.h>
 #include <xfuncs.h>
 
 #ifdef STATIC
+#include <linux/decompress/mm.h>
 #include "lzo/lzo1x_decompress.c"
+#else
+#include <malloc.h>
 #endif
 
 #include <lzo.h>
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

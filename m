Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XLGwF-0007aj-Fs
 for barebox@lists.infradead.org; Sat, 23 Aug 2014 19:25:24 +0000
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Date: Sat, 23 Aug 2014 16:23:48 -0300
Message-Id: <1408821828-4079-1-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: [PATCH] ubiformat: Include missing header
To: barebox@lists.infradead.org

Currently this warning is found when compiling ubiformat.c

  CC      commands/ubiformat.o
commands/ubiformat.c: In function 'flash_image':
commands/ubiformat.c:368:3: warning: implicit declaration of function 'read_full' [-Wimplicit-function-declaration]
   err = read_full(fd, buf, mtd->eb_size);
   ^
because ubiformat.c needs libfile.h for the read_full() function.
This commit adds the missing header.

Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 commands/ubiformat.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/commands/ubiformat.c b/commands/ubiformat.c
index 443d645..df0b801 100644
--- a/commands/ubiformat.c
+++ b/commands/ubiformat.c
@@ -40,6 +40,7 @@
 #include <malloc.h>
 #include <ioctl.h>
 #include <libbb.h>
+#include <libfile.h>
 #include <linux/mtd/mtd.h>
 #include <linux/kernel.h>
 #include <linux/stat.h>
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

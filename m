Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XPASR-0003G0-TC
 for barebox@lists.infradead.org; Wed, 03 Sep 2014 13:18:44 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Wed,  3 Sep 2014 15:18:15 +0200
Message-Id: <1409750295-14760-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH] EFI: add missing include
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Otherwise building produces these warnings:
[...]
arch/efi/efi/efi-image.c:48:2: warning: implicit declaration of function 'read_file' [-Wimplicit-function-declaration]
arch/efi/efi/efi-image.c:48:6: warning: assignment makes pointer from integer without a cast [enabled by default]
[...]

And bootm fails for x86_64. The implicit declaration has an int as return
value, so half of the returned address is lost.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 arch/efi/efi/efi-image.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/efi/efi/efi-image.c b/arch/efi/efi/efi-image.c
index 18757d2..d9edd91 100644
--- a/arch/efi/efi/efi-image.c
+++ b/arch/efi/efi/efi-image.c
@@ -31,6 +31,7 @@
 #include <linux/err.h>
 #include <boot.h>
 #include <fs.h>
+#include <libfile.h>
 #include <binfmt.h>
 #include <wchar.h>
 #include <mach/efi.h>
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

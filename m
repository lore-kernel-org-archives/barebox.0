Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadrn-0002qa-9u
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 10:19:01 +0000
Received: by mail-wm1-x344.google.com with SMTP id x15so2302172wmj.3
 for <barebox@lists.infradead.org>; Tue, 11 Jun 2019 03:18:57 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Tue, 11 Jun 2019 13:18:33 +0300
Message-Id: <20190611101833.1840-1-pmamonov@gmail.com>
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
Subject: [PATCH] pbl: report decompression failure
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 pbl/decomp.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/pbl/decomp.c b/pbl/decomp.c
index c8014c403f..72a162309a 100644
--- a/pbl/decomp.c
+++ b/pbl/decomp.c
@@ -7,6 +7,7 @@
 
 #include <common.h>
 #include <pbl.h>
+#include <debug_ll.h>
 
 #define STATIC static
 
@@ -40,6 +41,9 @@ STATIC int decompress(u8 *input, int in_len,
 
 static void noinline errorfn(char *error)
 {
+	puts_ll("ERROR: ");
+	puts_ll(error);
+	puts_ll("\nHANG\n");
 	while (1);
 }
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x244.google.com ([2a00:1450:4010:c04::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZvjOC-00073T-Ga
 for barebox@lists.infradead.org; Mon, 09 Nov 2015 10:09:29 +0000
Received: by lbvs9 with SMTP id s9so2587262lbv.1
 for <barebox@lists.infradead.org>; Mon, 09 Nov 2015 02:09:07 -0800 (PST)
From: Sergey Koshechkin <serge.koshechkin@gmail.com>
Date: Mon,  9 Nov 2015 13:09:01 +0300
Message-Id: <1447063741-23881-1-git-send-email-serge.koshechkin@gmail.com>
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
Subject: [PATCH] mk-omap-image: make some locally used functions static
To: barebox@lists.infradead.org
Cc: Sergey Koshechkin <serge.koshechkin@gmail.com>, antony@niisi.msk.ru

Signed-off-by: Sergey Koshechkin <serge.koshechkin@gmail.com>
---
 scripts/mk-omap-image.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/mk-omap-image.c b/scripts/mk-omap-image.c
index 1d61a34..234b7e3 100644
--- a/scripts/mk-omap-image.c
+++ b/scripts/mk-omap-image.c
@@ -49,7 +49,7 @@
 #include <getopt.h>
 #include <endian.h>
 
-void usage(char *prgname)
+static void usage(char *prgname)
 {
 	printf("usage: %s [OPTION] FILE > IMAGE\n"
 	       "\n"
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

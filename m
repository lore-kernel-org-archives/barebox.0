Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYaXe-0004CP-6D
 for barebox@lists.infradead.org; Thu, 08 Dec 2011 09:45:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  8 Dec 2011 10:45:18 +0100
Message-Id: <1323337518-656-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] uncompress: fix uncompress_buf usage
To: barebox@lists.infradead.org

uncompress_buf is used each time uncompress is called, so
make sure it is initialized correctly so that we do not
call free() on an already free pointer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/uncompress.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/lib/uncompress.c b/lib/uncompress.c
index 80982f3..beb96d1 100644
--- a/lib/uncompress.c
+++ b/lib/uncompress.c
@@ -84,6 +84,8 @@ int uncompress(unsigned char *inbuf, int len,
 
 	if (inbuf) {
 		ft = file_detect_type(inbuf);
+		uncompress_buf = NULL;
+		uncompress_size = 0;
 	} else {
 		if (!fill)
 			return -EINVAL;
@@ -127,7 +129,6 @@ int uncompress(unsigned char *inbuf, int len,
 			flush, output, pos, error_fn);
 err:
 	free(uncompress_buf);
-	uncompress_size = 0;
 
 	return ret;
 }
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

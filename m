Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9Hwy-000667-Nv
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:18:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:18:40 +0200
Message-Id: <1302531521-7439-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302531521-7439-1-git-send-email-s.hauer@pengutronix.de>
References: <1302531521-7439-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/7] copy_file: handle write return value correctly
To: barebox@lists.infradead.org

write() does not necessarily consume all input, handle this
case correctly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/copy_file.c |   15 +++++++++++----
 1 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/lib/copy_file.c b/lib/copy_file.c
index 7083531..809befe 100644
--- a/lib/copy_file.c
+++ b/lib/copy_file.c
@@ -17,6 +17,7 @@ int copy_file(const char *src, const char *dst)
 	int srcfd = 0, dstfd = 0;
 	int r, w;
 	int ret = 1;
+	void *buf;
 
 	rw_buf = xmalloc(RW_BUF_SIZE);
 
@@ -40,10 +41,16 @@ int copy_file(const char *src, const char *dst)
 		}
 		if (!r)
 			break;
-		w = write(dstfd, rw_buf, r);
-		if (w < 0) {
-			perror("write");
-			goto out;
+
+		buf = rw_buf;
+		while (r) {
+			w = write(dstfd, buf, r);
+			if (w < 0) {
+				perror("write");
+				goto out;
+			}
+			buf += w;
+			r -= w;
 		}
 	}
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

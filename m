Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yxv9X-00065D-Jo
 for barebox@lists.infradead.org; Thu, 28 May 2015 10:35:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 May 2015 12:34:37 +0200
Message-Id: <1432809284-17362-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1432809284-17362-1-git-send-email-s.hauer@pengutronix.de>
References: <1432809284-17362-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/10] fs: Add O_RWSIZE_8
To: Barebox List <barebox@lists.infradead.org>

To support native 64bit accesses in memcpy_sz.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c         | 3 +++
 include/fcntl.h | 3 ++-
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/fs/fs.c b/fs/fs.c
index 779f264..9a79a03 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1590,6 +1590,9 @@ static void memcpy_sz(void *_dst, const void *_src, ulong count, ulong rwsize)
 		case 4:
 			*((ulong  *)dst) = *((ulong  *)src);
 			break;
+		case 8:
+			*((u64  *)dst) = *((u64  *)src);
+			break;
 		}
 		dst += rwsize;
 		src += rwsize;
diff --git a/include/fcntl.h b/include/fcntl.h
index aed741e..501b415 100644
--- a/include/fcntl.h
+++ b/include/fcntl.h
@@ -17,11 +17,12 @@
 #define O_NOFOLLOW	00400000	/* don't follow links */
 
 /* barebox additional flags */
-#define O_RWSIZE_MASK	00000070
+#define O_RWSIZE_MASK	00000170
 #define O_RWSIZE_SHIFT	3
 #define O_RWSIZE_1      00000010
 #define O_RWSIZE_2      00000020
 #define O_RWSIZE_4      00000040
+#define O_RWSIZE_8      00000100
 
 #define F_DUPFD		0	/* dup */
 #define F_GETFD		1	/* get close_on_exec */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

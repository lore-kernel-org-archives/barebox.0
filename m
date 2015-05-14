Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YsqH1-0002Hy-FN
 for barebox@lists.infradead.org; Thu, 14 May 2015 10:21:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 May 2015 12:21:21 +0200
Message-Id: <1431598883-25668-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1431598883-25668-1-git-send-email-s.hauer@pengutronix.de>
References: <1431598883-25668-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] mem: Fix memcpy_sz variable types
To: Barebox List <barebox@lists.infradead.org>

- Drop usage of 'ulong', use unsigned long
- remove unnecessary intermediate casting to unsigned long
- Use proper u8/u16/u32 types. Fixes 64bit systems on which ulong is 64bit

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 779f264..a056d83 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1564,14 +1564,11 @@ out:
 }
 EXPORT_SYMBOL(rmdir);
 
-static void memcpy_sz(void *_dst, const void *_src, ulong count, ulong rwsize)
+static void memcpy_sz(void *dst, const void *src, size_t count, int rwsize)
 {
-	ulong dst = (ulong)_dst;
-	ulong src = (ulong)_src;
-
 	/* no rwsize specification given. Do whatever memcpy likes best */
 	if (!rwsize) {
-		memcpy(_dst, _src, count);
+		memcpy(dst, src, count);
 		return;
 	}
 
@@ -1582,13 +1579,13 @@ static void memcpy_sz(void *_dst, const void *_src, ulong count, ulong rwsize)
 	while (count-- > 0) {
 		switch (rwsize) {
 		case 1:
-			*((u_char *)dst) = *((u_char *)src);
+			*((u8 *)dst) = *((u8 *)src);
 			break;
 		case 2:
-			*((ushort *)dst) = *((ushort *)src);
+			*((u16 *)dst) = *((u16 *)src);
 			break;
 		case 4:
-			*((ulong  *)dst) = *((ulong  *)src);
+			*((u32  *)dst) = *((u32  *)src);
 			break;
 		}
 		dst += rwsize;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

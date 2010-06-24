Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORiN1-0002h3-Rm
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:05:16 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Thu, 24 Jun 2010 12:04:59 +0300
Message-Id: <60663606c7efe2aaede86326339cb620c0a6bf8a.1277370124.git.baruch@tkos.co.il>
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
Subject: [PATCH] envfs: fix build warning
To: barebox@lists.infradead.org

__LITTLE_ENDIAN or __BIG_ENDIAN are not always defined. E.g. the CodeSourcery
G++ Lite 2010q1 for ARM (4.4.1) does not define __BIG_ENDIAN. This causes a
compile time warning.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 include/envfs.h |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/envfs.h b/include/envfs.h
index b5849d9..0dd4e6a 100644
--- a/include/envfs.h
+++ b/include/envfs.h
@@ -36,7 +36,7 @@ struct envfs_super {
 #error "No byte order defined in __BYTE_ORDER"
 #endif
 
-#if __BYTE_ORDER == __LITTLE_ENDIAN
+#if defined(__LITTLE_ENDIAN) && __BYTE_ORDER == __LITTLE_ENDIAN
 #define ENVFS_16(x)	(x)
 #define ENVFS_24(x)	(x)
 #define ENVFS_32(x)	(x)
@@ -44,7 +44,7 @@ struct envfs_super {
 #define ENVFS_GET_OFFSET(x)	((x)->offset)
 #define ENVFS_SET_OFFSET(x,y)	((x)->offset = (y))
 #define ENVFS_SET_NAMELEN(x,y) ((x)->namelen = (y))
-#elif __BYTE_ORDER == __BIG_ENDIAN
+#elif defined(__BIG_ENDIAN) && __BYTE_ORDER == __BIG_ENDIAN
 #ifdef __KERNEL__
 #define ENVFS_16(x)	swab16(x)
 #define ENVFS_24(x)	((swab32(x)) >> 8)
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R71zb-0004Oz-G7
	for barebox@lists.infradead.org; Fri, 23 Sep 2011 09:24:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 23 Sep 2011 11:24:13 +0200
Message-Id: <1316769860-24549-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1316769860-24549-1-git-send-email-s.hauer@pengutronix.de>
References: <1316769860-24549-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/12] add cpu native ordered io accessors
To: barebox@lists.infradead.org

There are no generic native ordered io accessors. This sometimes
leads to

	v = in_be32(a);
	v = readl(a);

in generic drivers. Instead, use io accessors which are explicitely
native ordered.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/io.h |   17 +++++++++++++++++
 1 files changed, 17 insertions(+), 0 deletions(-)

diff --git a/include/io.h b/include/io.h
index 8eb56b0..39b5e61 100644
--- a/include/io.h
+++ b/include/io.h
@@ -3,4 +3,21 @@
 
 #include <asm/io.h>
 
+/* cpu_read/cpu_write: cpu native io accessors */
+#if __BYTE_ORDER == __BIG_ENDIAN
+#define cpu_readb(a)		readb(a)
+#define cpu_readw(a)		in_be16(a)
+#define cpu_readl(a)		in_be32(a)
+#define cpu_writeb(v, a)	writeb((v), (a))
+#define cpu_writew(v, a)	out_be16((a), (v))
+#define cpu_writel(v, a)	out_be32((a), (v))
+#else
+#define cpu_readb(a)		readb(a)
+#define cpu_readw(a)		readw(a)
+#define cpu_readl(a)		readl(a)
+#define cpu_writeb(v, a)	writeb((v), (a))
+#define cpu_writew(v, a)	writew((v), (a))
+#define cpu_writel(v, a)	writel((v), (a))
+#endif
+
 #endif /* __IO_H */
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

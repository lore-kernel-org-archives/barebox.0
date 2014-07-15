Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X737E-0006s3-Lh
 for barebox@lists.infradead.org; Tue, 15 Jul 2014 13:49:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Jul 2014 15:49:29 +0200
Message-Id: <1405432173-22448-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405432173-22448-1-git-send-email-s.hauer@pengutronix.de>
References: <1405432173-22448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] include: Add DECLARE_BITMAP from kernel
To: barebox@lists.infradead.org

Some code operating on bitmaps needs it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/types.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/types.h b/include/linux/types.h
index 14f8315..c11e148 100644
--- a/include/linux/types.h
+++ b/include/linux/types.h
@@ -4,6 +4,9 @@
 #include <linux/posix_types.h>
 #include <asm/types.h>
 
+#define DECLARE_BITMAP(name,bits) \
+	unsigned long name[BITS_TO_LONGS(bits)]
+
 #ifndef __KERNEL_STRICT_NAMES
 
 typedef __u32 __kernel_dev_t;
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

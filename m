Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCS5a-0006Ww-Je
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 09:53:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 10:53:19 +0100
Message-Id: <1362390820-10333-17-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
References: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/37] of/fdt: use optimized endianess conversion
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/libfdt_env.h |    9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/include/libfdt_env.h b/include/libfdt_env.h
index e83aa96..6486187 100644
--- a/include/libfdt_env.h
+++ b/include/libfdt_env.h
@@ -3,13 +3,12 @@
 
 #include <linux/types.h>
 #include <string.h>
+#include <asm/byteorder.h>
 
 #define _B(n)	((unsigned long long)((uint8_t *)&x)[n])
-static inline uint32_t fdt32_to_cpu(uint32_t x)
-{
-	return (_B(0) << 24) | (_B(1) << 16) | (_B(2) << 8) | _B(3);
-}
-#define cpu_to_fdt32(x) fdt32_to_cpu(x)
+
+#define fdt32_to_cpu(x)	be32_to_cpu(x)
+#define cpu_to_fdt32(x) cpu_to_be32(x)
 
 static inline uint64_t fdt64_to_cpu(uint64_t x)
 {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

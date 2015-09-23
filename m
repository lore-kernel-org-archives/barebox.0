Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zejsv-0005oF-ED
 for barebox@lists.infradead.org; Wed, 23 Sep 2015 13:14:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Sep 2015 15:14:32 +0200
Message-Id: <1443014072-19110-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] clock: remove duplicate xdelay declarations
To: Barebox List <barebox@lists.infradead.org>

ndelay is declared in include/clock.h, udelay in include/common.h and
mdelay in include/common.h and include/clock.h. Move them all to
include/clock.h and remove duplicates.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/clock.h  | 3 +--
 include/common.h | 5 +----
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/include/clock.h b/include/clock.h
index 691befc..681e3ad 100644
--- a/include/clock.h
+++ b/include/clock.h
@@ -34,9 +34,8 @@ uint32_t clocksource_hz2mult(uint32_t hz, uint32_t shift_constant);
 int is_timeout(uint64_t start_ns, uint64_t time_offset_ns);
 int is_timeout_non_interruptible(uint64_t start_ns, uint64_t time_offset_ns);
 
-// void udelay(unsigned long usecs);
-
 void ndelay(unsigned long nsecs);
+void udelay(unsigned long usecs);
 void mdelay(unsigned long msecs);
 
 #define SECOND ((uint64_t)(1000 * 1000 * 1000))
diff --git a/include/common.h b/include/common.h
index 553a7f4..03ceec2 100644
--- a/include/common.h
+++ b/include/common.h
@@ -23,6 +23,7 @@
 #include <stdio.h>
 #include <module.h>
 #include <config.h>
+#include <clock.h>
 #include <linux/bitops.h>
 #include <linux/types.h>
 #include <linux/string.h>
@@ -69,10 +70,6 @@ long	get_ram_size  (volatile long *, long);
 /* $(CPU)/cpu.c */
 void __noreturn poweroff(void);
 
-/* lib_$(ARCH)/time.c */
-void	udelay (unsigned long);
-void	mdelay (unsigned long);
-
 /* lib_generic/crc32.c */
 uint32_t crc32(uint32_t, const void*, unsigned int);
 uint32_t crc32_no_comp(uint32_t, const void*, unsigned int);
-- 
2.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

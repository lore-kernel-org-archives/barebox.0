Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x230.google.com ([2a00:1450:4010:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZeQ2v-0005Wx-N2
 for barebox@lists.infradead.org; Tue, 22 Sep 2015 16:03:58 +0000
Received: by lahg1 with SMTP id g1so18797395lah.1
 for <barebox@lists.infradead.org>; Tue, 22 Sep 2015 09:03:35 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Tue, 22 Sep 2015 18:58:30 +0300
Message-Id: <1442937514-19675-2-git-send-email-pmamonov@gmail.com>
In-Reply-To: <1442937514-19675-1-git-send-email-pmamonov@gmail.com>
References: <1442937514-19675-1-git-send-email-pmamonov@gmail.com>
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
Subject: [PATCH 1/5] common: clock: introduce mdelay_non_interruptible()
To: barebox@lists.infradead.org
Cc: pmamonov@gmail.com

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 common/clock.c   | 8 ++++++++
 include/clock.h  | 1 +
 include/common.h | 1 +
 3 files changed, 10 insertions(+)

diff --git a/common/clock.c b/common/clock.c
index 35c9e6c..51cf9e4 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -202,6 +202,14 @@ void mdelay(unsigned long msecs)
 }
 EXPORT_SYMBOL(mdelay);
 
+void mdelay_non_interruptible(unsigned long msecs)
+{
+	uint64_t start = get_time_ns();
+
+	while(!is_timeout_non_interruptible(start, msecs * MSECOND));
+}
+EXPORT_SYMBOL(mdelay_non_interruptible);
+
 int init_clock(struct clocksource *cs)
 {
 	current_clock = cs;
diff --git a/include/clock.h b/include/clock.h
index 691befc..68d71d7 100644
--- a/include/clock.h
+++ b/include/clock.h
@@ -38,6 +38,7 @@ int is_timeout_non_interruptible(uint64_t start_ns, uint64_t time_offset_ns);
 
 void ndelay(unsigned long nsecs);
 void mdelay(unsigned long msecs);
+void mdelay_non_interruptible (unsigned long msecs);
 
 #define SECOND ((uint64_t)(1000 * 1000 * 1000))
 #define MSECOND ((uint64_t)(1000 * 1000))
diff --git a/include/common.h b/include/common.h
index 553a7f4..c576908 100644
--- a/include/common.h
+++ b/include/common.h
@@ -72,6 +72,7 @@ void __noreturn poweroff(void);
 /* lib_$(ARCH)/time.c */
 void	udelay (unsigned long);
 void	mdelay (unsigned long);
+void	mdelay_non_interruptible (unsigned long);
 
 /* lib_generic/crc32.c */
 uint32_t crc32(uint32_t, const void*, unsigned int);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

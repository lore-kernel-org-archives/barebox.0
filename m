Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22a.google.com ([2a00:1450:4010:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zha2i-0004pF-8T
 for barebox@lists.infradead.org; Thu, 01 Oct 2015 09:20:48 +0000
Received: by lahh2 with SMTP id h2so70880496lah.0
 for <barebox@lists.infradead.org>; Thu, 01 Oct 2015 02:20:26 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  1 Oct 2015 12:20:16 +0300
Message-Id: <1443691216-16936-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] fixup! common: clock: introduce mdelay_non_interruptible()
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

---
 include/clock.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/clock.h b/include/clock.h
index fd8ff80..7f0f1ec 100644
--- a/include/clock.h
+++ b/include/clock.h
@@ -37,7 +37,7 @@ int is_timeout_non_interruptible(uint64_t start_ns, uint64_t time_offset_ns);
 void ndelay(unsigned long nsecs);
 void udelay(unsigned long usecs);
 void mdelay(unsigned long msecs);
-void mdelay_non_interruptible (unsigned long msecs);
+void mdelay_non_interruptible(unsigned long msecs);
 
 #define SECOND ((uint64_t)(1000 * 1000 * 1000))
 #define MSECOND ((uint64_t)(1000 * 1000))
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a6y8R-0007Ck-51
 for barebox@lists.infradead.org; Thu, 10 Dec 2015 10:07:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 10 Dec 2015 11:07:25 +0100
Message-Id: <1449742046-20906-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1449742046-20906-1-git-send-email-s.hauer@pengutronix.de>
References: <1449742046-20906-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] linux/barebox-wrapper: Silence gcc5 warning
To: Barebox List <barebox@lists.infradead.org>

gcc5 warns about using flags uninitialized in spin_lock_irqsave,
although it could look into the static inline spin_lock_irqsave
implementation and see it's not used at all. An empty define instead
of the static inline wrapper would lead to a "unused variable" warning.
Let's create a macro and fake some usage of the flags variable. This
probably helps until gcc6 is out.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/barebox-wrapper.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
index 3859185..5fe7971 100644
--- a/include/linux/barebox-wrapper.h
+++ b/include/linux/barebox-wrapper.h
@@ -39,8 +39,8 @@ typedef int   spinlock_t;
 #define spin_lock_init(...)
 #define spin_lock(...)
 #define spin_unlock(...)
-static inline void spin_lock_irqsave(spinlock_t *lock, unsigned long flags) {}
-static inline void spin_unlock_irqrestore(spinlock_t *lock, unsigned long flags) {}
+#define spin_lock_irqsave(lock, flags) do { flags = 0; } while (0)
+#define spin_unlock_irqrestore(lock, flags) do { flags = flags; } while (0)
 
 #define mutex_init(...)
 #define mutex_lock(...)
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

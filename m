Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lBbJc-0005UP-Bn
 for barebox@lists.infradead.org; Mon, 15 Feb 2021 10:41:17 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Feb 2021 11:37:00 +0100
Message-Id: <20210215103704.32537-8-a.fatoum@pengutronix.de>
In-Reply-To: <20210215103704.32537-1-a.fatoum@pengutronix.de>
References: <20210215103704.32537-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 07/12] slice: have assert_command_context() yield until true
 if possible
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

assert_command_context() is a safety net to warn about pollers doing
file system operations. It so far prints a splat when this happens.

With pollers that may yield, this can be implemented differently by
just yielding until the poller is run in the command context. So so.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/slice.h | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/include/slice.h b/include/slice.h
index d09d17924fb4..eae74b9fc199 100644
--- a/include/slice.h
+++ b/include/slice.h
@@ -36,8 +36,14 @@ void command_slice_acquire(void);
 void command_slice_release(void);
 
 #ifdef CONFIG_POLLER
-#define assert_command_context() ({    \
-	WARN_ONCE(in_poller(), "%s called in poller\n", __func__); \
+#define assert_command_context() ({                                       \
+	while (in_poller() && !slice_acquired(&command_slice)) {          \
+		if (!IS_ENABLED(CONFIG_POLLER_YIELD)) {                   \
+			WARN_ONCE(1, "%s called in poller\n", __func__);  \
+			break;                                            \
+		}                                                         \
+		poller_yield();                                           \
+	}                                                                 \
 })
 #else
 #define assert_command_context() do { } while (0)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

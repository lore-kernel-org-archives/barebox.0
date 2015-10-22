Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x232.google.com ([2a00:1450:4010:c07::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zp8hL-00010v-00
 for barebox@lists.infradead.org; Thu, 22 Oct 2015 05:46:00 +0000
Received: by lffv3 with SMTP id v3so35424935lff.0
 for <barebox@lists.infradead.org>; Wed, 21 Oct 2015 22:45:37 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 22 Oct 2015 08:45:26 +0300
Message-Id: <1445492727-905-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1445492727-905-1-git-send-email-antonynpavlov@gmail.com>
References: <1445492727-905-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/3] clock.h: include <types.h> under guard macro
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/clock.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/include/clock.h b/include/clock.h
index 7f0f1ec..d65e404 100644
--- a/include/clock.h
+++ b/include/clock.h
@@ -1,8 +1,7 @@
-#include <types.h>
-
 #ifndef CLOCK_H
 #define CLOCK_H
 
+#include <types.h>
 #include <linux/time.h>
 
 #define CLOCKSOURCE_MASK(bits) (uint64_t)((bits) < 64 ? ((1ULL<<(bits))-1) : -1)
-- 
2.6.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R3xYr-00022v-3w
	for barebox@lists.infradead.org; Wed, 14 Sep 2011 22:04:05 +0000
Received: by fxg7 with SMTP id 7so33873fxg.36
	for <barebox@lists.infradead.org>; Wed, 14 Sep 2011 15:04:03 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 15 Sep 2011 02:03:51 +0400
Message-Id: <1316037832-3536-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1316037832-3536-1-git-send-email-antonynpavlov@gmail.com>
References: <1316037832-3536-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC PATCH 2/3] include/tlsf.h: adapt for barebox
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/tlsf.h |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/include/tlsf.h b/include/tlsf.h
index 29ffb7f..0b31b21 100644
--- a/include/tlsf.h
+++ b/include/tlsf.h
@@ -19,7 +19,11 @@
 #ifndef _TLSF_H_
 #define _TLSF_H_
 
+#ifdef __BAREBOX__
+#include <types.h>
+#else
 #include <sys/types.h>
+#endif
 
 extern size_t init_memory_pool(size_t, void *);
 extern size_t get_used_size(void *);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

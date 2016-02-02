Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQcG0-0002Pf-VJ
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 14:48:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Feb 2016 15:47:45 +0100
Message-Id: <1454424497-7157-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
References: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/34] scripts/include: Add ARRAY_SIZE
To: Barebox List <barebox@lists.infradead.org>

ARRAY_SIZE is another define commonly used in tools. Add it to the
kernel includes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/include/linux/kernel.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/include/linux/kernel.h b/scripts/include/linux/kernel.h
index 76df535..5d94e98 100644
--- a/scripts/include/linux/kernel.h
+++ b/scripts/include/linux/kernel.h
@@ -6,6 +6,8 @@
 #include <stdlib.h>
 #include <assert.h>
 
+#define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))
+
 #define DIV_ROUND_UP(n,d) (((n) + (d) - 1) / (d))
 
 #define PERF_ALIGN(x, a)	__PERF_ALIGN_MASK(x, (typeof(x))(a)-1)
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

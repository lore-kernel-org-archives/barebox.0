Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x235.google.com ([2a00:1450:4010:c03::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WZxxk-0002sv-L2
 for barebox@lists.infradead.org; Tue, 15 Apr 2014 07:39:25 +0000
Received: by mail-la0-f53.google.com with SMTP id b8so6493169lan.40
 for <barebox@lists.infradead.org>; Tue, 15 Apr 2014 00:39:03 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 15 Apr 2014 11:38:27 +0400
Message-Id: <1397547514-19925-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1397547514-19925-1-git-send-email-antonynpavlov@gmail.com>
References: <1397547514-19925-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 03/10] MIPS: use arch_shutdown() for flushing caches
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/lib/shutdown.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/mips/lib/shutdown.c b/arch/mips/lib/shutdown.c
index 6feec9b..09651a7 100644
--- a/arch/mips/lib/shutdown.c
+++ b/arch/mips/lib/shutdown.c
@@ -3,8 +3,10 @@
  * memory/cache state.
  */
 #include <common.h>
+#include <asm/cache.h>
 
 void arch_shutdown(void)
 {
+	flush_cache_all();
 }
 EXPORT_SYMBOL(arch_shutdown);
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

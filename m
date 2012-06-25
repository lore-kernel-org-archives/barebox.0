Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sj8ey-0007kN-Q0
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 12:44:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jun 2012 14:44:40 +0200
Message-Id: <1340628281-8774-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340628281-8774-1-git-send-email-s.hauer@pengutronix.de>
References: <1340628281-8774-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] nios2: Add missing ffs include
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/nios2/include/asm/bitops.h |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/nios2/include/asm/bitops.h b/arch/nios2/include/asm/bitops.h
index ab0e3d5..87bfaa1 100644
--- a/arch/nios2/include/asm/bitops.h
+++ b/arch/nios2/include/asm/bitops.h
@@ -1,4 +1,7 @@
 #ifndef _ASM_BITOPS_H
 #define _ASM_BITOPS_H
 
+#include <asm-generic/bitops/__ffs.h>
+#include <asm-generic/bitops/ffs.h>
+
 #endif /* _ASM_BITOPS_H */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

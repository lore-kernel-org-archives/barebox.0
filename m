Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg2ga-0006s3-0X
 for barebox@lists.infradead.org; Tue, 02 Jun 2020 08:54:21 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Jun 2020 10:54:05 +0200
Message-Id: <20200602085412.16554-19-a.fatoum@pengutronix.de>
In-Reply-To: <20200602085412.16554-1-a.fatoum@pengutronix.de>
References: <20200602085412.16554-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 18/25] sandbox: asm: implement <asm/atomic.h>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

For easier code-sharing, the UBIFS code still uses the Kernel's
atomic accessors. Provide a sandbox <asm/atomic.h> header, so we
can compile-test UBI under sandbox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/include/asm/atomic.h | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 arch/sandbox/include/asm/atomic.h

diff --git a/arch/sandbox/include/asm/atomic.h b/arch/sandbox/include/asm/atomic.h
new file mode 100644
index 000000000000..af12dee13089
--- /dev/null
+++ b/arch/sandbox/include/asm/atomic.h
@@ -0,0 +1,2 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <asm-generic/atomic.h>
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

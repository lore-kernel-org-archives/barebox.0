Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVc2N-0003Lg-Ot
 for barebox@lists.infradead.org; Mon, 04 May 2020 14:25:46 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon,  4 May 2020 23:24:54 +0900
Message-Id: <20200504142455.404658-3-masahiroy@kernel.org>
In-Reply-To: <20200504142455.404658-1-masahiroy@kernel.org>
References: <20200504142455.404658-1-masahiroy@kernel.org>
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
Subject: [PATCH 3/4] nios2: include <asm-generic/io.h> from asm/io.h
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

<asm-generic/io.h> is a collection of default of various accessors.

All the other architectures include <asm-generic/io.h> as a fallback.
Do likewise for NIOS2.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/nios2/include/asm/io.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/nios2/include/asm/io.h b/arch/nios2/include/asm/io.h
index 360d786ea..a964c695e 100644
--- a/arch/nios2/include/asm/io.h
+++ b/arch/nios2/include/asm/io.h
@@ -46,4 +46,6 @@
 #define writel(val, addr)\
 	asm volatile("stwio %0, 0(%1)" : : "r" (val), "r" (addr))
 
+#include <asm-generic/io.h>
+
 #endif /* __ASM_NIOS2_IO_H_ */
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

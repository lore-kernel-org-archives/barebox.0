Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x241.google.com ([2a00:1450:400c:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fL9Ib-0003GD-UD
 for barebox@lists.infradead.org; Tue, 22 May 2018 15:34:08 +0000
Received: by mail-wm0-x241.google.com with SMTP id l1-v6so992364wmb.2
 for <barebox@lists.infradead.org>; Tue, 22 May 2018 08:34:00 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Tue, 22 May 2018 18:33:35 +0300
Message-Id: <20180522153342.24933-6-pmamonov@gmail.com>
In-Reply-To: <20180522153342.24933-1-pmamonov@gmail.com>
References: <20180522153342.24933-1-pmamonov@gmail.com>
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
Subject: [PATCH v3 05/12] MIPS: import 64-bit address conversion macros
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 arch/mips/include/asm/addrspace.h | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/mips/include/asm/addrspace.h b/arch/mips/include/asm/addrspace.h
index 17d480d08..dc44d7f79 100644
--- a/arch/mips/include/asm/addrspace.h
+++ b/arch/mips/include/asm/addrspace.h
@@ -73,6 +73,26 @@
 #define CKSEG2ADDR(a)		(CPHYSADDR(a) | CKSEG2)
 #define CKSEG3ADDR(a)		(CPHYSADDR(a) | CKSEG3)
 
+/*
+ * Cache modes for XKPHYS address conversion macros
+ */
+#define K_CALG_COH_EXCL1_NOL2	0
+#define K_CALG_COH_SHRL1_NOL2	1
+#define K_CALG_UNCACHED		2
+#define K_CALG_NONCOHERENT	3
+#define K_CALG_COH_EXCL		4
+#define K_CALG_COH_SHAREABLE	5
+#define K_CALG_NOTUSED		6
+#define K_CALG_UNCACHED_ACCEL	7
+
+/*
+ * 64-bit address conversions
+ */
+#define PHYS_TO_XKSEG_UNCACHED(p)	PHYS_TO_XKPHYS(K_CALG_UNCACHED, (p))
+#define PHYS_TO_XKSEG_CACHED(p)		PHYS_TO_XKPHYS(K_CALG_COH_SHAREABLE, (p))
+#define XKPHYS_TO_PHYS(p)		((p) & TO_PHYS_MASK)
+#define PHYS_TO_XKPHYS(cm, a)		(XKPHYS | (_ACAST64_(cm) << 59) | (a))
+
 #else
 
 #define CKSEG0ADDR(a)		(CPHYSADDR(a) | KSEG0)
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

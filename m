Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fKjPB-0004m6-K7
 for barebox@lists.infradead.org; Mon, 21 May 2018 11:55:24 +0000
Received: by mail-wm0-x242.google.com with SMTP id j4-v6so24936158wme.1
 for <barebox@lists.infradead.org>; Mon, 21 May 2018 04:55:06 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Mon, 21 May 2018 14:54:35 +0300
Message-Id: <20180521115438.26493-10-pmamonov@gmail.com>
In-Reply-To: <20180521115438.26493-1-pmamonov@gmail.com>
References: <20180521115438.26493-1-pmamonov@gmail.com>
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
Subject: [PATCH v2 09/12] mips: fix warnings from CPHYSADDR() macro
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 arch/mips/include/asm/addrspace.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/mips/include/asm/addrspace.h b/arch/mips/include/asm/addrspace.h
index dc44d7f79..688620472 100644
--- a/arch/mips/include/asm/addrspace.h
+++ b/arch/mips/include/asm/addrspace.h
@@ -48,7 +48,12 @@
 /*
  * Returns the physical address of a CKSEGx / XKPHYS address
  */
+#ifdef CONFIG_ARCH_DMA_ADDR_T_64BIT
+#define CPHYSADDR(a)		((_ACAST64_(a)) & 0x1fffffff)
+#else
 #define CPHYSADDR(a)		((_ACAST32_(a)) & 0x1fffffff)
+#endif
+
 #define XPHYSADDR(a)            ((_ACAST64_(a)) &			\
 				 _CONST64_(0x000000ffffffffff))
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

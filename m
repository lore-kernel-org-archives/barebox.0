Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dihmY-00015E-7J
 for barebox@lists.infradead.org; Fri, 18 Aug 2017 13:57:55 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Fri, 18 Aug 2017 15:57:06 +0200
Message-Id: <20170818135707.17578-4-linux@rempel-privat.de>
In-Reply-To: <20170818135707.17578-1-linux@rempel-privat.de>
References: <20170818135707.17578-1-linux@rempel-privat.de>
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
Subject: [PATCH v2 3/4] x86: asm: include asm-generic.h
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

make io[read,write]* defines available on x86 platform

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/x86/include/asm/io.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/x86/include/asm/io.h b/arch/x86/include/asm/io.h
index df4bc99ec..5d19679b5 100644
--- a/arch/x86/include/asm/io.h
+++ b/arch/x86/include/asm/io.h
@@ -61,6 +61,19 @@ BUILDIO(b, b, char)
 BUILDIO(w, w, short)
 BUILDIO(l, , int)
 
+#define outb	outb
+#define outw	outw
+#define outl	outb
+#define inb	inb
+#define inw	inw
+#define inl	inl
+#define outsb	outsb
+#define outsw	outsw
+#define outsl	outsb
+#define insb	insb
+#define insw	insw
+#define insl	insl
+
 #define  IO_SPACE_LIMIT  0xffff
 
 /* do a tiny io delay */
@@ -69,4 +82,6 @@ static inline void io_delay(void)
 	inb(0x80);
 }
 
+#include <asm-generic/io.h>
+
 #endif	/* __ASM_X86_IO_H */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

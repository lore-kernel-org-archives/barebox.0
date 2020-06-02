Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg2gZ-0006rl-RF
 for barebox@lists.infradead.org; Tue, 02 Jun 2020 08:54:20 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Jun 2020 10:54:00 +0200
Message-Id: <20200602085412.16554-14-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 13/25] sandbox: implement stub physical virtual translation
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

For compile-testing drivers that use DMA operations under sandbox,
we want stub implementations of these. Provide them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/include/asm/io.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/sandbox/include/asm/io.h b/arch/sandbox/include/asm/io.h
index 0a07627a893d..6a0e77aead42 100644
--- a/arch/sandbox/include/asm/io.h
+++ b/arch/sandbox/include/asm/io.h
@@ -6,4 +6,14 @@
 #include <asm-generic/io.h>
 #include <asm-generic/bitio.h>
 
+static inline void *phys_to_virt(unsigned long phys)
+{
+       return (void *)phys;
+}
+
+static inline unsigned long virt_to_phys(volatile void *mem)
+{
+       return (unsigned long)mem;
+}
+
 #endif /* __ASM_SANDBOX_IO_H */
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

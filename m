Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l5WMp-0002qL-DY
 for barebox@lists.infradead.org; Fri, 29 Jan 2021 16:11:28 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 29 Jan 2021 17:11:12 +0100
Message-Id: <20210129161116.9971-4-a.fatoum@pengutronix.de>
In-Reply-To: <20210129161116.9971-1-a.fatoum@pengutronix.de>
References: <20210129161116.9971-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 4/8] asm-generic: io.h: remove wrong use of IOMEM
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

addr is already __iomem, but we need to force strip that away to use it
as normal pointer. Define __io_virt like Linux does and use it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/asm-generic/io.h | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
index 150a97645b6b..a4b0dc4b4337 100644
--- a/include/asm-generic/io.h
+++ b/include/asm-generic/io.h
@@ -425,6 +425,8 @@ static inline void iowrite64be(u64 value, volatile void __iomem *addr)
 #define IOMEM(addr)	((void __force __iomem *)(addr))
 #endif
 
+#define __io_virt(x) ((void __force *)(x))
+
 #ifndef memset_io
 #define memset_io memset_io
 /**
@@ -438,7 +440,7 @@ static inline void iowrite64be(u64 value, volatile void __iomem *addr)
 static inline void memset_io(volatile void __iomem *addr, int value,
 			     size_t size)
 {
-	memset(IOMEM(addr), value, size);
+	memset(__io_virt(addr), value, size);
 }
 #endif
 
@@ -456,7 +458,7 @@ static inline void memcpy_fromio(void *buffer,
 				 const volatile void __iomem *addr,
 				 size_t size)
 {
-	memcpy(buffer, IOMEM(addr), size);
+	memcpy(buffer, __io_virt(addr), size);
 }
 #endif
 
@@ -473,7 +475,7 @@ static inline void memcpy_fromio(void *buffer,
 static inline void memcpy_toio(volatile void __iomem *addr, const void *buffer,
 			       size_t size)
 {
-	memcpy(IOMEM(addr), buffer, size);
+	memcpy(__io_virt(addr), buffer, size);
 }
 #endif
 
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

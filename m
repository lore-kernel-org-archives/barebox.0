Delivery-date: Thu, 12 Aug 2021 14:22:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mE9jC-00012F-Ol
	for lore@lore.pengutronix.de; Thu, 12 Aug 2021 14:22:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mE9j8-0000ie-5J
	for lore@pengutronix.de; Thu, 12 Aug 2021 14:22:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EvvnmK3dUJYeYRdaNoN0PCovHDQ4tMvz9VQz108/BKU=; b=lVvjMSvcwjk8ws
	G03ni9iGTNMAWAbAMwaizGzO6jC3OTgWrrGh44dEgZ+VKm6cII4BTubwN3KA2ckyAbKFoizK290qi
	77i9+/YrnOoEWlBqCVmx2nKN0EriPv8EsG68K02jvac4jr/xompveAt+AEVBXXjHZ4K8yukhuYAjS
	2ItXjA0gD0vXGee57z6pF/bEN53+vY0ihZKQqRq21eHG81We+OWpXVTHwfWBsQ49rOY6QxMiFHmKM
	B2Q9NcR32gy9Y3/1l73D3b0hNpPU830acpgZcA7Uzp9tE340Z4kSci78lVSF/aU+9/cPlKyC2Fvp+
	6qh8gJB2Me4OvjCn7xDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mE9go-009yqZ-Jx; Thu, 12 Aug 2021 12:20:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mE9gg-009yoy-VD
 for barebox@lists.infradead.org; Thu, 12 Aug 2021 12:19:56 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mE9gX-00004q-Nx; Thu, 12 Aug 2021 14:19:45 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mE9gX-0001AU-En; Thu, 12 Aug 2021 14:19:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Aug 2021 14:19:42 +0200
Message-Id: <20210812121944.4419-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210812121944.4419-1-a.fatoum@pengutronix.de>
References: <20210812121944.4419-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210812_051955_052229_79D03B51 
X-CRM114-Status: GOOD (  14.69  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] asm-generic: include bitio.h from io.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is currently used on ARM and sandbox, but it's relevant for
other platforms like x86 as well if driver code wants to make use
of the functions defined within.

MIPS and PowerPC already defines the symbols, but that's ok because
<bitio.h> doesn't override existing macros. This works for MIPS, but
not PowerPC, where those aren't macros. Fix that up.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/io.h     |  1 -
 arch/powerpc/include/asm/io.h | 10 ++++++++++
 arch/sandbox/include/asm/io.h |  1 -
 include/asm-generic/io.h      |  2 ++
 4 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/io.h b/arch/arm/include/asm/io.h
index b442a37b9c1d..0507db1a9cf8 100644
--- a/arch/arm/include/asm/io.h
+++ b/arch/arm/include/asm/io.h
@@ -8,7 +8,6 @@
 #define memset_io memset_io
 
 #include <asm-generic/io.h>
-#include <asm-generic/bitio.h>
 
 /*
  * String version of IO memory access ops:
diff --git a/arch/powerpc/include/asm/io.h b/arch/powerpc/include/asm/io.h
index 8488c36f6558..30d098702380 100644
--- a/arch/powerpc/include/asm/io.h
+++ b/arch/powerpc/include/asm/io.h
@@ -132,6 +132,7 @@ static inline void __raw_writel(unsigned int v, volatile void __iomem *addr)
 /*
  * 8, 16 and 32 bit, big and little endian I/O operations, with barrier.
  */
+#define in_8 in_8
 static inline u8 in_8(const volatile u8 __iomem *addr)
 {
 	u8 ret;
@@ -141,11 +142,13 @@ static inline u8 in_8(const volatile u8 __iomem *addr)
 	return ret;
 }
 
+#define out_8 out_8
 static inline void out_8(volatile u8 __iomem *addr, u8 val)
 {
 	__asm__ __volatile__("sync;stb%U0%X0 %1,%0" : "=m" (*addr) : "r" (val));
 }
 
+#define in_le16 in_le16
 static inline u16 in_le16(const volatile u16 __iomem *addr)
 {
 	u16 ret;
@@ -155,6 +158,7 @@ static inline u16 in_le16(const volatile u16 __iomem *addr)
 	return ret;
 }
 
+#define in_be16 in_be16
 static inline u16 in_be16(const volatile u16 __iomem *addr)
 {
 	u16 ret;
@@ -164,17 +168,20 @@ static inline u16 in_be16(const volatile u16 __iomem *addr)
 	return ret;
 }
 
+#define out_le16 out_le16
 static inline void out_le16(volatile u16 __iomem *addr, u16 val)
 {
 	__asm__ __volatile__("sync; sthbrx %1,0,%2"
 			: "=m" (*addr) : "r" (val), "r" (addr));
 }
 
+#define out_be16 out_be16
 static inline void out_be16(volatile u16 __iomem *addr, u16 val)
 {
 	__asm__ __volatile__("sync;sth%U0%X0 %1,%0" : "=m" (*addr) : "r" (val));
 }
 
+#define in_le32 in_le32
 static inline u32 in_le32(const volatile u32 __iomem *addr)
 {
 	u32 ret;
@@ -184,6 +191,7 @@ static inline u32 in_le32(const volatile u32 __iomem *addr)
 	return ret;
 }
 
+#define in_be32 in_be32
 static inline u32 in_be32(const volatile u32 __iomem *addr)
 {
 	u32 ret;
@@ -193,12 +201,14 @@ static inline u32 in_be32(const volatile u32 __iomem *addr)
 	return ret;
 }
 
+#define out_le32 out_le32
 static inline void out_le32(volatile u32 __iomem *addr, u32 val)
 {
 	__asm__ __volatile__("sync; stwbrx %1,0,%2"
 			: "=m" (*addr) : "r" (val), "r" (addr));
 }
 
+#define out_be32 out_be32
 static inline void out_be32(volatile u32 __iomem *addr, u32 val)
 {
 	__asm__ __volatile__("sync;stw%U0%X0 %1,%0" : "=m" (*addr) : "r" (val));
diff --git a/arch/sandbox/include/asm/io.h b/arch/sandbox/include/asm/io.h
index 9f9cd3a42ab1..3e5c0580bc5a 100644
--- a/arch/sandbox/include/asm/io.h
+++ b/arch/sandbox/include/asm/io.h
@@ -8,7 +8,6 @@
 extern unsigned char __pci_iobase[IO_SPACE_LIMIT];
 
 #include <asm-generic/io.h>
-#include <asm-generic/bitio.h>
 
 static inline void *phys_to_virt(unsigned long phys)
 {
diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
index a4b0dc4b4337..47f8c3ec1be6 100644
--- a/include/asm-generic/io.h
+++ b/include/asm-generic/io.h
@@ -479,4 +479,6 @@ static inline void memcpy_toio(volatile void __iomem *addr, const void *buffer,
 }
 #endif
 
+#include <asm-generic/bitio.h>
+
 #endif /* __ASM_GENERIC_IO_H */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


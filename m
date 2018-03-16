Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewos8-00068N-Pi
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 16/78] ARM: aarch64: implement get_pc()
Date: Fri, 16 Mar 2018 13:52:52 +0100
Message-Id: <20180316125354.23462-17-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

The arm32 version can't be used on aarch64, implement an aarch64
specific version.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/common.h | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/common.h b/arch/arm/include/asm/common.h
index 07ae619cea..97bfdc43f5 100644
--- a/arch/arm/include/asm/common.h
+++ b/arch/arm/include/asm/common.h
@@ -4,13 +4,19 @@
 static inline unsigned long get_pc(void)
 {
 	unsigned long pc;
-
+#ifdef CONFIG_CPU_32
 	__asm__ __volatile__(
                 "mov    %0, pc\n"
                 : "=r" (pc)
                 :
                 : "memory");
-
+#else
+	__asm__ __volatile__(
+                "adr    %0, .\n"
+                : "=r" (pc)
+                :
+                : "memory");
+#endif
 	return pc;
 }
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

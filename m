Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVc2N-0003Li-Os
 for barebox@lists.infradead.org; Mon, 04 May 2020 14:25:48 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon,  4 May 2020 23:24:55 +0900
Message-Id: <20200504142455.404658-4-masahiroy@kernel.org>
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
Subject: [PATCH 4/4] common.h: move the generic IOMEM definition to
 asm-generic/io.h
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

arch/mips/include/asm/io.h defines arch-specific IOMEM().

The generic definition of IOMEM() should go to asm-generic/io.h
because it is a collection of fallback defaults when there is no
specific definition in <asm/io.h>.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 include/asm-generic/io.h | 4 ++++
 include/common.h         | 4 ----
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
index 973b8b954..76e6d0dc1 100644
--- a/include/asm-generic/io.h
+++ b/include/asm-generic/io.h
@@ -420,4 +420,8 @@ static inline void iowrite64be(u64 value, volatile void __iomem *addr)
 #endif
 #endif /* CONFIG_64BIT */
 
+#ifndef IOMEM
+#define IOMEM(addr)	((void __force __iomem *)(addr))
+#endif
+
 #endif /* __ASM_GENERIC_IO_H */
diff --git a/include/common.h b/include/common.h
index 0bf819a6f..ce16ff83a 100644
--- a/include/common.h
+++ b/include/common.h
@@ -135,8 +135,4 @@ const char *barebox_get_hostname(void);
 void barebox_set_hostname(const char *);
 void barebox_set_hostname_no_overwrite(const char *);
 
-#ifndef IOMEM
-#define IOMEM(addr)	((void __force __iomem *)(addr))
-#endif
-
 #endif	/* __COMMON_H_ */
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

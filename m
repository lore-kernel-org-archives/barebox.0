Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewos8-00068J-Du
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:52:50 +0100
Message-Id: <20180316125354.23462-15-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/78] ARM: get_runtime_offset() returns unsigned long
To: Barebox List <barebox@lists.infradead.org>

Change return type from uint32_t to unsigned long which is suitable for
aarch64 aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm.h        | 2 +-
 arch/arm/mach-mvebu/include/mach/common.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 170839aaad..1dccb8965e 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -42,7 +42,7 @@ int	dram_init (void);
 extern char __exceptions_start[], __exceptions_stop[];
 
 void board_init_lowlevel(void);
-uint32_t get_runtime_offset(void);
+unsigned long get_runtime_offset(void);
 
 void setup_c(void);
 void relocate_to_current_adr(void);
diff --git a/arch/arm/mach-mvebu/include/mach/common.h b/arch/arm/mach-mvebu/include/mach/common.h
index aa4babcfa7..8e15723fbe 100644
--- a/arch/arm/mach-mvebu/include/mach/common.h
+++ b/arch/arm/mach-mvebu/include/mach/common.h
@@ -25,7 +25,7 @@
 #define MVEBU_REMAP_INT_REG_BASE	0xf1000000
 
 /* #including <asm/barebox-arm.h> yields a circle, so we need a forward decl */
-uint32_t get_runtime_offset(void);
+unsigned long get_runtime_offset(void);
 
 static inline void __iomem *mvebu_get_initial_int_reg_base(void)
 {
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

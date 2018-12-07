Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVD7N-0004iS-SP
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 10:12:23 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri,  7 Dec 2018 11:11:54 +0100
Message-Id: <20181207101156.2213-3-m.tretter@pengutronix.de>
In-Reply-To: <20181207101156.2213-1-m.tretter@pengutronix.de>
References: <20181128112053.6027-1-m.tretter@pengutronix.de>
 <20181207101156.2213-1-m.tretter@pengutronix.de>
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
Subject: [PATCH v3 2/4] ARM: aarch64: compile with general-regs-only
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

Without this flag, gcc generates code to save the Q/V registers to the
stack for handling the va_list in pr_print(). Saving the registers is
useless, as the registers are never restored, but accessing the
registers to save them hangs the CPU.

Follow the Linux arch/arm64/Makefile and use the general-regs-only flag
to prevent usage of floating point and Advanced SIMD register.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 5db67b9db8..50958b787f 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -27,6 +27,10 @@ else
 CFLAGS += -mstrict-align
 endif
 
+# Prevent use of floating point and Advanced SIMD registers.
+ifeq ($(CONFIG_CPU_V8),y)
+CFLAGS += -mgeneral-regs-only
+endif
 
 # This selects which instruction set is used.
 # Note that GCC does not numerically define an architecture version
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

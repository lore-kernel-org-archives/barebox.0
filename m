Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gD2Gm-0001qx-K9
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 06:58:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Oct 2018 08:58:24 +0200
Message-Id: <20181018065827.19973-18-s.hauer@pengutronix.de>
In-Reply-To: <20181018065827.19973-1-s.hauer@pengutronix.de>
References: <20181018065827.19973-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 17/20] ARM: unwind: Provide prototypes for exported functions
To: Barebox List <barebox@lists.infradead.org>

__aeabi_unwind_cpp_prx are provided to make the linker happy. To fix
warnings about missing prototypes just provide a prototype in the same
file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib32/unwind.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/lib32/unwind.c b/arch/arm/lib32/unwind.c
index c3dca5b61d..d3e79b5702 100644
--- a/arch/arm/lib32/unwind.c
+++ b/arch/arm/lib32/unwind.c
@@ -4,6 +4,10 @@
 #include <asm/unwind.h>
 #include <asm/sections.h>
 
+void __aeabi_unwind_cpp_pr0(void);
+void __aeabi_unwind_cpp_pr1(void);
+void __aeabi_unwind_cpp_pr2(void);
+
 /* Dummy functions to avoid linker complaints */
 void __aeabi_unwind_cpp_pr0(void)
 {
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

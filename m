Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosD-000688-0p
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:53:33 +0100
Message-Id: <20180316125354.23462-58-s.hauer@pengutronix.de>
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
Subject: [PATCH 57/78] ARM: aarch64: remove dead code in linker script
To: Barebox List <barebox@lists.infradead.org>

CONFIG_ARM_UNWIND does not exist for aarch64. Remove the dead code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib64/barebox.lds.S | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
index fa633e3699..08adc44e86 100644
--- a/arch/arm/lib64/barebox.lds.S
+++ b/arch/arm/lib64/barebox.lds.S
@@ -53,22 +53,6 @@ SECTIONS
 	. = ALIGN(4);
 	.rodata : { *(.rodata*) }
 
-#ifdef CONFIG_ARM_UNWIND
-	/*
-	 * Stack unwinding tables
-	 */
-	. = ALIGN(8);
-	.ARM.unwind_idx : {
-		__start_unwind_idx = .;
-		*(.ARM.exidx*)
-		__stop_unwind_idx = .;
-	}
-	.ARM.unwind_tab : {
-		__start_unwind_tab = .;
-		*(.ARM.extab*)
-		__stop_unwind_tab = .;
-	}
-#endif
 	_etext = .;			/* End of text and rodata section */
 	_sdata = .;
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

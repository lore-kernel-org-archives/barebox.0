Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYs18-0004UQ-Ie
 for barebox@lists.infradead.org; Thu, 25 Feb 2016 09:15:29 +0000
Received: by mail-lf0-x243.google.com with SMTP id h198so1805169lfh.3
 for <barebox@lists.infradead.org>; Thu, 25 Feb 2016 01:15:06 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 25 Feb 2016 12:14:51 +0300
Message-Id: <1456391693-25172-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1456391693-25172-1-git-send-email-antonynpavlov@gmail.com>
References: <1456391693-25172-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/4] MIPS: ath79: pbl: import hornet_1_1_war routine from
 U-Boot_mod
To: barebox@lists.infradead.org

U-Boot_mod is a popular bootloader for Atheros AR93xx chips,
please see https://github.com/pepe2k/u-boot_mod for details.

It's reasonable to import some lowlevel AR9331 initialization
code from U-Boot_mod.

AR9331 (Hornet) 1.1 currently needs an additional
reset at 1st boot. This patch imports necessary code
from u-boot_mod/u-boot/cpu/mips/start_bootstrap.S.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/mach-ath79/include/mach/pbl_macros.h | 43 ++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/mips/mach-ath79/include/mach/pbl_macros.h b/arch/mips/mach-ath79/include/mach/pbl_macros.h
index 810f49d..24cfd60 100644
--- a/arch/mips/mach-ath79/include/mach/pbl_macros.h
+++ b/arch/mips/mach-ath79/include/mach/pbl_macros.h
@@ -223,4 +223,47 @@
 	.set	pop
 .endm
 
+.macro	hornet_1_1_war
+	.set push
+	.set noreorder
+
+/*
+ * WAR: Hornet 1.1 currently need a reset once we boot to let the resetb has
+ *      enough time to stable, so that trigger reset at 1st boot, system team
+ *      is investigaing the issue, will remove in short
+ */
+
+	li  t7, 0xbd000000
+	lw  t8, 0(t7)
+	li  t9, 0x12345678
+
+	/* if value of 0xbd000000 != 0x12345678, go to do_reset */
+	bne t8, t9, do_reset
+	 nop
+
+	li  t9, 0xffffffff
+	sw  t9, 0(t7)
+	b   normal_path
+	 nop
+
+do_reset:
+	/* put 0x12345678 into 0xbd000000 */
+	sw  t9, 0(t7)
+
+	/* reset register 0x1806001c */
+	li  t7, 0xb806001c
+	lw  t8, 0(t7)
+	/* bit24, fullchip reset */
+	li  t9, 0x1000000
+	or  t8, t8, t9
+	sw  t8, 0(t7)
+
+do_reset_loop:
+	b   do_reset_loop
+	 nop
+
+normal_path:
+	.set	pop
+.endm
+
 #endif /* __ASM_MACH_ATH79_PBL_MACROS_H */
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

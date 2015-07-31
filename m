Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZL6Ek-0005aJ-Bl
 for barebox@lists.infradead.org; Fri, 31 Jul 2015 09:04:21 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1ZL4N8-0007NJ-Cm
 for barebox@lists.infradead.org; Fri, 31 Jul 2015 09:04:50 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.86_RC4)
 (envelope-from <jbe@pengutronix.de>) id 1ZL6EN-0004Hv-Es
 for barebox@lists.infradead.org; Fri, 31 Jul 2015 11:03:55 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 31 Jul 2015 11:03:48 +0200
Message-Id: <1438333432-10118-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1438333432-10118-1-git-send-email-jbe@pengutronix.de>
References: <1438333432-10118-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 2/6] PPC/PCM030: fix reference clock
To: barebox@lists.infradead.org

In order to enable and use USB/OHCI on the MPC5200 the USB PLL register must be
set.

It's not easy to find a correct value for this register, it seems it depends on
the used external reference frequency and some other 'magic' things. There are
some values out in the wild for the 33,333333 MHz and 33,333000 MHz reference
frequency case, but they are not consistent over the boards.

The value used here in this change for the USB PLL register is from the first
days of support for this platform and works at least on the reference
baseboard.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/ppc/boards/pcm030/config.h | 2 +-
 arch/ppc/boards/pcm030/pcm030.c | 7 +++++++
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/ppc/boards/pcm030/config.h b/arch/ppc/boards/pcm030/config.h
index 1521811..3fe1f28 100644
--- a/arch/ppc/boards/pcm030/config.h
+++ b/arch/ppc/boards/pcm030/config.h
@@ -25,7 +25,7 @@
 
 #include <mach/mpc5xxx.h>
 
-#define CFG_MPC5XXX_CLKIN	33333333 /* ... running at 33.333333MHz */
+#define CFG_MPC5XXX_CLKIN	33333000 /* ... running at 33.333MHz */
 
 #define CFG_HID0_INIT		HID0_ICE | HID0_ICFI
 #define CFG_HID0_FINAL		HID0_ICE
diff --git a/arch/ppc/boards/pcm030/pcm030.c b/arch/ppc/boards/pcm030/pcm030.c
index a7fa21d..c1b0c3f 100644
--- a/arch/ppc/boards/pcm030/pcm030.c
+++ b/arch/ppc/boards/pcm030/pcm030.c
@@ -32,6 +32,7 @@
 #include <memory.h>
 #include <linux/sizes.h>
 #include <linux/stat.h>
+#include <asm/io.h>
 #include <fs.h>
 
 static struct fec_platform_data fec_info = {
@@ -145,6 +146,12 @@ void initdram (int board_type)
 	*(vu_long *)MPC5XXX_CS_BURST = 0x00000000;
 	*(vu_long *)MPC5XXX_CS_DEADCYCLE = 0x33333333;
 
+	/*
+	 * Make USB work due to the special base crystal frequency:
+	 * 33,3330MHz * 16 = 533,328MHz main clock, but should be 528 MHz Clock
+	 */
+	out_be32((void *)MPC5XXX_CDM_48_FDC, 0x00015555);
+
 	mpc5200_setup_bus_clocks(1, 4);
 
 	if (get_pc() > SZ_128M) {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

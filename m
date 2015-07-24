Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZIdFC-0007zU-CQ
 for barebox@lists.infradead.org; Fri, 24 Jul 2015 13:42:35 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1ZIbNM-0001uv-GG
 for barebox@lists.infradead.org; Fri, 24 Jul 2015 13:42:52 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.86_RC4)
 (envelope-from <jbe@pengutronix.de>) id 1ZIdEp-0006XW-MH
 for barebox@lists.infradead.org; Fri, 24 Jul 2015 15:42:11 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 24 Jul 2015 15:42:05 +0200
Message-Id: <1437745326-8994-5-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1437745326-8994-1-git-send-email-jbe@pengutronix.de>
References: <1437745326-8994-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 4/5] PPC/PCM030: fix reference clock
To: barebox@lists.infradead.org

The PCM030 CPU module comes with a 33.333 MHz instead of a 33.333333 MHz
crystal reference. If such a special reference is in use, the USB PLL
needs a tweak to create a correct frequency. Without this tweak the USB
does not work correctly.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/ppc/boards/pcm030/config.h | 2 +-
 arch/ppc/boards/pcm030/pcm030.c | 9 +++++++++
 2 files changed, 10 insertions(+), 1 deletion(-)

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
index a7fa21d..376891a 100644
--- a/arch/ppc/boards/pcm030/pcm030.c
+++ b/arch/ppc/boards/pcm030/pcm030.c
@@ -32,6 +32,7 @@
 #include <memory.h>
 #include <linux/sizes.h>
 #include <linux/stat.h>
+#include <asm/io.h>
 #include <fs.h>
 
 static struct fec_platform_data fec_info = {
@@ -43,6 +44,14 @@ static int devices_init (void)
 	struct stat s;
 	int ret;
 
+#if CFG_MPC5XXX_CLKIN == 33333000
+	/*
+	 * Make USB work due to the special base crystal frequency:
+	 * 33,3330MHz * 16 = 533,328MHz main clock, but should be 528 MHz Clock
+	 */
+	out_be32((void *)MPC5XXX_CDM_48_FDC, 0x00015555);
+#endif
+
 	/*
 	 * Flash can be 16MB or 32MB, setup for the last 32MB no matter
 	 * what we find later.
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

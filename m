Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x234.google.com ([2a00:1450:4010:c04::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XBL3j-0006dq-2L
 for barebox@lists.infradead.org; Sun, 27 Jul 2014 09:48:03 +0000
Received: by mail-lb0-f180.google.com with SMTP id v6so4818468lbi.11
 for <barebox@lists.infradead.org>; Sun, 27 Jul 2014 02:47:38 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 27 Jul 2014 13:47:20 +0400
Message-Id: <1406454448-10645-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406454448-10645-1-git-send-email-antonynpavlov@gmail.com>
References: <1406454448-10645-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/9] ARM: add ARM946E-S CPU type
To: barebox@lists.infradead.org

ARM946E-S is used in the DIGIC family SoCs.

ARM946E-S core supports ARMv5TE and has Cache & MPU.
Linux kernel uses ARMv4 MPU cache routines for ARM946E-S core.
E.g. see linux.git/boot/compressed/head.S:

    .word   0x41009400              @ ARM94x
    .word   0xff00ff00
    W(b)    __armv4_mpu_cache_on
    W(b)    __armv4_mpu_cache_off
    W(b)    __armv4_mpu_cache_flush

So select CPU_32v4T for ARM946E-S despite of ARMv5TE support.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/cpu/Kconfig | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index aed4cb7..fb1a999 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -39,6 +39,19 @@ config CPU_ARM926T
 	  Say Y if you want support for the ARM926T processor.
 	  Otherwise, say N.
 
+# ARM946E-S
+config CPU_ARM946E
+	bool
+	depends on !MMU
+	select CPU_32v4T
+	help
+	  ARM946E-S is a member of the ARM9E-S family of high-
+	  performance, 32-bit system-on-chip processor solutions.
+	  The TCM and ARMv5TE 32-bit instruction set is supported.
+
+	  Say Y if you want support for the ARM946E-S processor.
+	  Otherwise, say N.
+
 # Feroceon
 config CPU_FEROCEON
 	bool
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

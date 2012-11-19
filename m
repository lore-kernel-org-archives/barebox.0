Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TaSoD-0004ib-5Q
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 14:58:50 +0000
Received: from cpebcc8100fb8db-cmbcc8100fb8d8.cpe.net.cable.rogers.com
 ([174.116.196.46]:59358 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
 id 1TaSoB-0005G2-Tg
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 09:58:47 -0500
Date: Mon, 19 Nov 2012 09:58:45 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1211190956260.13911@oneiric>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] mach-imx: Add/correct help info in mach-imx/Kconfig
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Update help info, it's slightly out of date, and a grammatical fix.
No functional change.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  are there any other updates that can be made to that help info?

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index cca8394..3f4b452 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -65,15 +65,15 @@ choice
 	  used to setup SDRAM. The internal ROM code then initializes SDRAM
 	  using the register/value table, loads the whole barebox image to
 	  SDRAM and starts it. The internal boot mode is available on newer
-	  i.MX processors (i.MX25, i.MX35, i.MX51 and i.MX53). and supports
-	  booting from NOR, NAND, MMC/SD and serial ROMs.
-	  The external boot mode only supports booting from NAND and NOR. With
+	  i.MX processors (i.MX25, i.MX35, i.MX51, i.MX53 and i.MX6), and
+	  supports booting from NOR, NAND, MMC/SD and serial ROMs.
+	  The external boot mode supports booting only from NAND and NOR. With
 	  NOR flash the image is just started in NOR flash. With NAND flash
 	  the NAND controller loads the first 2kbyte from NAND into the NAND
 	  controllers internal SRAM where it is then started. It's the
 	  responsibility of these 2kbyte to load the rest of the boot image.
 	  The external boot mode is supported on older i.MX processors (i.MX1,
-	  i.MX21, i.MX25, i.MX27, i.MX21, i.MX35).
+	  i.MX21, i.MX25, i.MX27, i.MX31, i.MX35).

 config ARCH_IMX_INTERNAL_BOOT
 	bool "support internal boot mode"

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

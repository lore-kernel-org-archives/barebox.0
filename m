Delivery-date: Thu, 09 Jun 2022 08:04:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBH2-008SCE-4l
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 08:04:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBH0-0002Js-Ae
	for lore@pengutronix.de; Thu, 09 Jun 2022 08:04:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ex+HLZFcOca1X4jsPPMESo7tVwOSHrPfS1X3Dcg0D9c=; b=4PjzqvBbBnPOOK
	MML6sxpWK283LEPWQKNeCGlyOflvF41XYpVVJ/y+h2BdEWxm1dDZq1ObO6jVBhJ+EFLXUmw56Jzjh
	syGM4qJUcuz1wYkxDguTuBspKKqoMncD4dimuwvLokZ5OIvxFZRS2w6nqJhCEU4+/jdESkYED9vpo
	uUS/nnPVdGaDfY+gLh8Yko4hbBuhuqfaLeX1Gti/OpVd97SvvB+PCKsamFEyxdKA1eqV073ON69R3
	KGFGZYTlUNunvf6qJ9UDuNyMag7aevG8HD16h5tb4oOvkthUkGrxOLVeLUYZ/4EPFOKtrsG1nAFKj
	zE4e7Kfc3/sxJ7Cwx/og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBFT-00Gwos-1F; Thu, 09 Jun 2022 06:02:27 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBCd-00Gv2P-8P
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 05:59:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCa-0008JL-8h; Thu, 09 Jun 2022 07:59:28 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCa-007KA7-To; Thu, 09 Jun 2022 07:59:27 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCV-002nZl-B8; Thu, 09 Jun 2022 07:59:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Jun 2022 07:59:08 +0200
Message-Id: <20220609055922.667016-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220609055922.667016-1-a.fatoum@pengutronix.de>
References: <20220609055922.667016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_225931_500495_D4A0EE7A 
X-CRM114-Status: GOOD (  24.86  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 07/21] ARM: rpi: add generic Raspberry Pi image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add a new image that can be booted on all supported boards. This work by
including DTs for all enabled boards in config and then consulting the
mailbox interface at runtime to deduce which DT to pass to barebox
proper. An alternative would have been to use the existing
barebox-dt-2nd.img with a VideoCore-supplied device tree, but that has
the drawback of requiring barebox to observe the same bindings as the
kernel that's booted later. This approach makes migration
straight-forward, because no difference in VideoCore configuration is
required.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/bcm2835.rst              |  8 +-
 arch/arm/boards/raspberry-pi/lowlevel.c       | 87 ++++++++++++++++++-
 arch/arm/mach-bcm283x/include/mach/debug_ll.h |  6 ++
 images/Makefile.bcm283x                       |  4 +
 4 files changed, 99 insertions(+), 6 deletions(-)

diff --git a/Documentation/boards/bcm2835.rst b/Documentation/boards/bcm2835.rst
index 0b5299a34078..a8eed9aec00d 100644
--- a/Documentation/boards/bcm2835.rst
+++ b/Documentation/boards/bcm2835.rst
@@ -15,14 +15,14 @@ Raspberry Pi
      - ``images/barebox-raspberry-pi-2.img`` for the BCM2836/CORTEX-A7 (Raspberry Pi 2)
      - ``images/barebox-raspberry-pi-3.img`` for the BCM2837/CORTEX-A53 (Raspberry Pi 3)
      - ``images/barebox-raspberry-pi-cm3.img`` for the BCM2837/CORTEX-A53 (Raspberry Pi CM3)
+     - ``images/barebox-raspberry-pi.img``, which is a super set of all the other images
 
      Copy the respective image for your model to your SD card and name it
      ``barebox.img``.
 
-     Alternatively, ``images/barebox-dt-2nd.img`` can be used as single bootloader for all
-     supported 32-bit boards. In this case the device tree supplied by the video core
-     is directly used by barebox to probe. The device trees in ``arch/arm/dts/*.dtb``
-     will need to be renamed for alignment with the naming scheme expected by the videocore.
+     The ``images/barebox-raspberry-pi.img`` is expected to replace the other images
+     in the future. It contains the device trees of all supported (and enabled) variants
+     and determines at runtime what board it runs on and does the right thing.
 
   4. Create a text file ``config.txt`` on the SD card with the following content::
 
diff --git a/arch/arm/boards/raspberry-pi/lowlevel.c b/arch/arm/boards/raspberry-pi/lowlevel.c
index 091bfb8f4b14..82b51b5b1594 100644
--- a/arch/arm/boards/raspberry-pi/lowlevel.c
+++ b/arch/arm/boards/raspberry-pi/lowlevel.c
@@ -4,7 +4,10 @@
 #include <asm/cache.h>
 #include <common.h>
 #include <linux/sizes.h>
+#include <asm/unaligned.h>
 #include <mach/platform.h>
+#include <debug_ll.h>
+#include <mach/mbox.h>
 #include <of.h>
 
 #include "lowlevel.h"
@@ -45,8 +48,6 @@ static inline void start_raspberry_pi(unsigned long memsize, void *fdt,
 {
 	unsigned long endmem = rpi_stack_top(memsize);
 
-	arm_cpu_lowlevel_init();
-
 	copy_vc_fdt((void *)endmem, vc_fdt, VIDEOCORE_FDT_SZ);
 
 	fdt += get_runtime_offset();
@@ -64,20 +65,102 @@ extern char __dtb_z_bcm2837_rpi_cm3_start[];
 
 RPI_ENTRY_FUNCTION(start_raspberry_pi1, SZ_128M, r2)
 {
+	arm_cpu_lowlevel_init();
+
 	start_raspberry_pi(SZ_128M, __dtb_z_bcm2835_rpi_start, (void *)r2);
 }
 
 RPI_ENTRY_FUNCTION(start_raspberry_pi2, SZ_512M, r2)
 {
+	arm_cpu_lowlevel_init();
+
 	start_raspberry_pi(SZ_512M, __dtb_z_bcm2836_rpi_2_start, (void *)r2);
 }
 
 RPI_ENTRY_FUNCTION(start_raspberry_pi3, SZ_512M, r2)
 {
+	arm_cpu_lowlevel_init();
+
 	start_raspberry_pi(SZ_512M, __dtb_z_bcm2837_rpi_3_start, (void *)r2);
 }
 
 RPI_ENTRY_FUNCTION(start_raspberry_pi_cm3, SZ_512M, r2)
 {
+	arm_cpu_lowlevel_init();
+
 	start_raspberry_pi(SZ_512M, __dtb_z_bcm2837_rpi_cm3_start, (void *)r2);
 }
+
+#define DT_IF_ENABLED(dt, cfg) \
+	(IS_ENABLED(cfg) ? (dt) : NULL)
+
+static void *rpi_get_board_fdt(int rev)
+{
+	if (!(rev & 0x800000))
+		return DT_IF_ENABLED(__dtb_z_bcm2835_rpi_start, CONFIG_MACH_RPI);
+
+	switch (((rev >> 4) & 0xff)) {
+	case BCM2835_BOARD_REV_A:
+	case BCM2835_BOARD_REV_B:
+	case BCM2835_BOARD_REV_A_PLUS:
+	case BCM2835_BOARD_REV_B_PLUS:
+	case BCM2835_BOARD_REV_CM1:
+	case BCM2835_BOARD_REV_ZERO:
+	case BCM2835_BOARD_REV_ZERO_W:
+		return DT_IF_ENABLED(__dtb_z_bcm2835_rpi_start, CONFIG_MACH_RPI);
+
+	case BCM2836_BOARD_REV_2_B:
+		return DT_IF_ENABLED(__dtb_z_bcm2836_rpi_2_start, CONFIG_MACH_RPI2);
+
+	case BCM2837_BOARD_REV_3_B:
+	case BCM2837B0_BOARD_REV_3B_PLUS:
+	case BCM2837B0_BOARD_REV_3A_PLUS:
+	case BCM2837B0_BOARD_REV_ZERO_2:
+		return DT_IF_ENABLED(__dtb_z_bcm2837_rpi_3_start, CONFIG_MACH_RPI3);
+
+	case BCM2837_BOARD_REV_CM3:
+	case BCM2837B0_BOARD_REV_CM3_PLUS:
+		return DT_IF_ENABLED(__dtb_z_bcm2837_rpi_cm3_start, CONFIG_MACH_RPI_CM3);
+	}
+
+	return NULL;
+}
+
+RPI_ENTRY_FUNCTION(start_raspberry_pi_generic, SZ_128M, vc_fdt)
+{
+	void *fdt = NULL;
+	ssize_t memsize;
+	int rev;
+
+	arm_cpu_lowlevel_init();
+
+	debug_ll_init();
+
+	putc_ll('>');
+
+	relocate_to_current_adr();
+	setup_c();
+
+	memsize = rpi_get_arm_mem();
+	if (memsize < 0) {
+		pr_warn("mbox: failed to query ARM memory size. 128M assumed.\n");
+		memsize = SZ_128M;
+	}
+
+	rev = rpi_get_board_rev();
+	if (rev >= 0) {
+		pr_debug("Detected revision %08x\n", rev);
+		fdt = rpi_get_board_fdt(rev);
+	}
+
+	if (!fdt) {
+		fdt = (void *)vc_fdt;
+
+		pr_warn("Unknown Rpi board with rev %08x.\n", rev);
+
+		if (get_unaligned_be32(fdt) != 0xd00dfeed)
+			panic("No suitable built-in or videocore-supplied DT\n");
+	}
+
+	start_raspberry_pi(memsize, fdt, (void *)vc_fdt);
+}
diff --git a/arch/arm/mach-bcm283x/include/mach/debug_ll.h b/arch/arm/mach-bcm283x/include/mach/debug_ll.h
index 4bfa5abc7c41..db23112aa07e 100644
--- a/arch/arm/mach-bcm283x/include/mach/debug_ll.h
+++ b/arch/arm/mach-bcm283x/include/mach/debug_ll.h
@@ -66,6 +66,12 @@ static inline void debug_ll_init(void)
 	debug_ll_ns16550_init(divisor);
 }
 
+#else
+
+static inline void debug_ll_init(void)
+{
+}
+
 #endif
 
 #endif /* __MACH_BCM2835_DEBUG_LL_H__ */
diff --git a/images/Makefile.bcm283x b/images/Makefile.bcm283x
index 82787f972c2d..b591cd58f563 100644
--- a/images/Makefile.bcm283x
+++ b/images/Makefile.bcm283x
@@ -18,3 +18,7 @@ image-$(CONFIG_MACH_RPI3) += barebox-raspberry-pi-3.img
 pblb-$(CONFIG_MACH_RPI_CM3) += start_raspberry_pi_cm3
 FILE_barebox-raspberry-pi-cm3.img = start_raspberry_pi_cm3.pblb
 image-$(CONFIG_MACH_RPI_CM3) += barebox-raspberry-pi-cm3.img
+
+pblb-$(CONFIG_MACH_RPI_COMMON) += start_raspberry_pi_generic
+FILE_barebox-raspberry-pi.img = start_raspberry_pi_generic.pblb
+image-$(CONFIG_MACH_RPI_COMMON) += barebox-raspberry-pi.img
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


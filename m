Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKyyp-0007Fw-DB
 for barebox@lists.infradead.org; Thu, 17 Oct 2019 06:09:49 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1iKyyi-0001cE-JJ
 for barebox@lists.infradead.org; Thu, 17 Oct 2019 08:09:40 +0200
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1iKyyb-0006Pd-LA
 for barebox@lists.infradead.org; Thu, 17 Oct 2019 08:09:33 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 17 Oct 2019 08:09:26 +0200
Message-Id: <20191017060928.23882-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: socfpga: reset-manager: fix Wmissing-prototypes
To: Barebox List <barebox@lists.infradead.org>

Fix the following warnings

arch/arm/mach-socfpga/arria10-reset-manager.c:152:6: warning: no previous prototype for
'arria10_reset_deassert_shared_peripherals_q1' [-Wmissing-prototypes]
  152 | void arria10_reset_deassert_shared_peripherals_q1(uint32_t *mask0,
      |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
arch/arm/mach-socfpga/arria10-reset-manager.c:226:6: warning: no previous prototype for
'arria10_reset_deassert_shared_peripherals_q2' [-Wmissing-prototypes]
  226 | void arria10_reset_deassert_shared_peripherals_q2(uint32_t *mask0,
      |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
arch/arm/mach-socfpga/arria10-reset-manager.c:272:6: warning: no previous prototype for
'arria10_reset_deassert_shared_peripherals_q3' [-Wmissing-prototypes]
  272 | void arria10_reset_deassert_shared_peripherals_q3(uint32_t *mask0,
      |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
arch/arm/mach-socfpga/arria10-reset-manager.c:329:6: warning: no previous prototype for
'arria10_reset_deassert_shared_peripherals_q4' [-Wmissing-prototypes]
  329 | void arria10_reset_deassert_shared_peripherals_q4(uint32_t *mask0, uint32_t *mask1)
      |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/include/mach/arria10-reset-manager.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/mach-socfpga/include/mach/arria10-reset-manager.h b/arch/arm/mach-socfpga/include/mach/arria10-reset-manager.h
index ebd20434263a..2033de77a39f 100644
--- a/arch/arm/mach-socfpga/include/mach/arria10-reset-manager.h
+++ b/arch/arm/mach-socfpga/include/mach/arria10-reset-manager.h
@@ -108,6 +108,10 @@
 void arria10_reset_peripherals(void);
 void arria10_reset_deassert_dedicated_peripherals(void);
 void arria10_reset_deassert_shared_peripherals(void);
+void arria10_reset_deassert_shared_peripherals_q1(uint32_t *mask0, uint32_t *mask1);
+void arria10_reset_deassert_shared_peripherals_q2(uint32_t *mask0, uint32_t *mask1);
+void arria10_reset_deassert_shared_peripherals_q3(uint32_t *mask0, uint32_t *mask1);
+void arria10_reset_deassert_shared_peripherals_q4(uint32_t *mask0, uint32_t *mask1);
 void arria10_reset_deassert_fpga_peripherals(void);
 
 #endif
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

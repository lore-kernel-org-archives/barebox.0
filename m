Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iom34-0008Jl-4Y
 for barebox@lists.infradead.org; Tue, 07 Jan 2020 10:25:19 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iom31-0003LK-9S
 for barebox@lists.infradead.org; Tue, 07 Jan 2020 11:25:15 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  7 Jan 2020 11:25:14 +0100
Message-Id: <20200107102515.29198-2-l.stach@pengutronix.de>
In-Reply-To: <20200107102515.29198-1-l.stach@pengutronix.de>
References: <20200107102515.29198-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: nxp-imx8mq-evk: fix second stage booting
To: barebox@lists.infradead.org

If the whole image already resides in DRAM, e.g. by starting the
image via the bootm handler we try to load the piggydata from storage,
which may well be different from our expected piggydata, already
present in DRAM.

Fix this by avoiding the special piggydata load function, but instead
load the whole image after DRAM is up and just replace the PBL part to
ensure we are still running the HAB validated code after TF-A hands
back control to our code in DRAM.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c | 37 +++++++++++------------
 1 file changed, 18 insertions(+), 19 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index eb96c0805169..101ce607a55f 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -50,23 +50,16 @@ static void setup_uart(void)
  * 1. MaskROM uploads PBL into OCRAM and that's where this function is
  *    executed for the first time. At entry the exception level is EL3.
  *
- * 2. DDR is initialized and the PBL is copied from OCRAM to the TF-A return
- *    address in DRAM.
+ * 2. DDR is initialized and the image is loaded from storage into DRAM. The PBL
+ *    part is copied from OCRAM to the TF-A return address in DRAM.
  *
  * 3. TF-A is executed and exits into the PBL code in DRAM. TF-A has taken us
  *    from EL3 to EL2.
  *
- * 4. The piggydata is loaded from the SD card and copied to the expected
- *    location in the DRAM.
- *
- * 5. Standard barebox boot flow continues
+ * 4. Standard barebox boot flow continues
  */
 static __noreturn noinline void nxp_imx8mq_evk_start(void)
 {
-	enum bootsource src = BOOTSOURCE_UNKNOWN;
-	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
-	int ret = -ENOTSUPP;
-
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
@@ -76,14 +69,27 @@ static __noreturn noinline void nxp_imx8mq_evk_start(void)
 	 * to DRAM in EL2.
 	 */
 	if (current_el() == 3) {
-		const u8 *bl31;
+		enum bootsource src = BOOTSOURCE_UNKNOWN;
+		int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
+		int ret = -ENOTSUPP;
 		size_t bl31_size;
+		const u8 *bl31;
 
 		ddr_init();
+
 		/*
 		 * On completion the TF-A will jump to MX8MQ_ATF_BL33_BASE_ADDR
-		 * in EL2. Copy ourselves there.
+		 * in EL2. Copy the image there, but replace the PBL part of
+		 * that image with ourselves. On a high assurance boot only the
+		 * currently running code is validated and contains the checksum
+		 * for the piggy data, so we need to ensure that we are running
+		 * the same code in DRAM.
 		 */
+		imx8_get_boot_source(&src, &instance);
+		if (src == BOOTSOURCE_MMC)
+			ret = imx8_esdhc_load_image(instance, false);
+		BUG_ON(ret);
+
 		memcpy((void *)MX8MQ_ATF_BL33_BASE_ADDR,
 		       __image_start, barebox_pbl_size);
 
@@ -92,13 +98,6 @@ static __noreturn noinline void nxp_imx8mq_evk_start(void)
 		/* not reached */
 	}
 
-	imx8_get_boot_source(&src, &instance);
-
-	if (src == BOOTSOURCE_MMC)
-		ret = imx8_esdhc_load_piggy(instance);
-
-	BUG_ON(ret);
-
 	/*
 	 * Standard entry we hit once we initialized both DDR and ATF
 	 */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

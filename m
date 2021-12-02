Delivery-date: Thu, 02 Dec 2021 08:44:23 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1msglT-0006c5-M1
	for lore@lore.pengutronix.de; Thu, 02 Dec 2021 08:44:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1msglR-0002ne-DP
	for lore@pengutronix.de; Thu, 02 Dec 2021 08:44:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IYaKnLPVnBaL4HJUsPKV/UlGXLStGUNkhdnzj9iLmNk=; b=HYz7bj0jL6zR+f
	sRscWLSyQ3IFidsQNKl92QXUYwkndokyqyC+/hQwDRXCyFKC2yb8hf5nZHLRt0BjTbOQ3lXsdJbyQ
	JFlBru87N0HcdS9Q0ZpjSG59D9SD0LLA9eFM125GJShQx/nD18DbuTlEtY2tzoYtnXnJ/gdt/3oNj
	DEopWPQnM/a5J1a0aQsF6bdPI4n5JmW+tnW4uprp/CGUbTgMdeKTbbS01tobjEWGhoYpBAG0OUOl7
	ElQdv0Ow7xmJUKkQQAuyZXAmc5HTxQXjl+lEgSFJuS0PX4kqiXLY/xI3d4d9X8TVMdFRhGZbulRfk
	RAcLOWkgJWB8ED6qUWVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msgkE-00BDCy-1G; Thu, 02 Dec 2021 07:43:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msgk7-00BDAy-3W
 for barebox@lists.infradead.org; Thu, 02 Dec 2021 07:43:00 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1msgk5-0002VE-Oj; Thu, 02 Dec 2021 08:42:57 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1msgk5-000qJV-8G; Thu, 02 Dec 2021 08:42:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 Dec 2021 08:42:56 +0100
Message-Id: <20211202074256.200325-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211202074256.200325-1-a.fatoum@pengutronix.de>
References: <20211202074256.200325-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_234259_169516_37B5C38B 
X-CRM114-Status: GOOD (  14.14  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] ARM: rpi: use ENTRY_FUNCTION_WITHSTACK to prepare for
 ARM64 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

arm_setup_stack used in start_raspberry_pi is not safe on ARM64, due to
lack of __naked support. since 76bced6fe146 ("ARM: document
arm_setup_stack() pitfalls"), its use in ARM64 code is a compile-time
error.

The Raspberry Pi 4 support will be ARM64. To allow it to reuse
the existing low-level code, use the new ENTRY_FUNCTION_WITHSTACK,
which will set up stack appropriately for both ARM32 and ARM64.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/lowlevel.c | 35 ++++++++++++-------------
 1 file changed, 17 insertions(+), 18 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/lowlevel.c b/arch/arm/boards/raspberry-pi/lowlevel.c
index d58beb605255..ab5b47051926 100644
--- a/arch/arm/boards/raspberry-pi/lowlevel.c
+++ b/arch/arm/boards/raspberry-pi/lowlevel.c
@@ -31,52 +31,51 @@ static void copy_vc_fdt(void *dest, void *src, unsigned long max_size)
 	memmove(dest, src, size);
 }
 
+/* A pointer to the FDT created by VideoCore was passed to us in r2. We
+ * reserve some memory just above the region used for Barebox and copy
+ * this FDT there. We fetch it from there later in rpi_devices_init().
+ */
+#define rpi_stack_top(memsize) \
+	arm_mem_stack_top(BCM2835_SDRAM_BASE, BCM2835_SDRAM_BASE + memsize - VIDEOCORE_FDT_SZ)
+
 /* Must be inline since stack isn't setup yet. */
 static inline void start_raspberry_pi(unsigned long memsize, void *fdt,
 								void *vc_fdt)
 {
-	void *saved_vc_fdt;
-	unsigned long membase = BCM2835_SDRAM_BASE;
-
-	/* A pointer to the FDT created by VideoCore was passed to us in r2. We
-	 * reserve some memory just above the region used for Basebox and copy
-	 * this FDT there. We fetch it from there later in rpi_devices_init().*/
-	memsize -= VIDEOCORE_FDT_SZ;
+	unsigned long endmem = rpi_stack_top(memsize);
 
 	arm_cpu_lowlevel_init();
 
-	/* Copied from barebox_arm_entry(). We need stack here early
-	 * for normal function calls to work. */
-	arm_setup_stack(arm_mem_stack_top(membase, membase + memsize));
+	copy_vc_fdt((void *)endmem, vc_fdt, VIDEOCORE_FDT_SZ);
 
 	fdt += get_runtime_offset();
 
-	saved_vc_fdt = (void *)(membase + memsize);
-	copy_vc_fdt(saved_vc_fdt, vc_fdt, VIDEOCORE_FDT_SZ);
-
-	barebox_arm_entry(membase, memsize, fdt);
+	barebox_arm_entry(BCM2835_SDRAM_BASE, endmem - BCM2835_SDRAM_BASE, fdt);
 }
 
+#define RPI_ENTRY_FUNCTION(name, memsize, r2) \
+	ENTRY_FUNCTION_WITHSTACK(name, rpi_stack_top(memsize), __r0, __r1, r2)
+
 extern char __dtb_bcm2835_rpi_start[];
-ENTRY_FUNCTION(start_raspberry_pi1, r0, r1, r2)
+RPI_ENTRY_FUNCTION(start_raspberry_pi1, SZ_128M, r2)
 {
 	start_raspberry_pi(SZ_128M, __dtb_bcm2835_rpi_start, (void *)r2);
 }
 
 extern char __dtb_bcm2836_rpi_2_start[];
-ENTRY_FUNCTION(start_raspberry_pi2, r0, r1, r2)
+RPI_ENTRY_FUNCTION(start_raspberry_pi2, SZ_512M, r2)
 {
 	start_raspberry_pi(SZ_512M, __dtb_bcm2836_rpi_2_start, (void *)r2);
 }
 
 extern char __dtb_bcm2837_rpi_3_start[];
-ENTRY_FUNCTION(start_raspberry_pi3, r0, r1, r2)
+RPI_ENTRY_FUNCTION(start_raspberry_pi3, SZ_512M, r2)
 {
 	start_raspberry_pi(SZ_512M, __dtb_bcm2837_rpi_3_start, (void *)r2);
 }
 
 extern char __dtb_bcm2837_rpi_cm3_start[];
-ENTRY_FUNCTION(start_raspberry_pi_cm3, r0, r1, r2)
+RPI_ENTRY_FUNCTION(start_raspberry_pi_cm3, SZ_512M, r2)
 {
 	start_raspberry_pi(SZ_512M, __dtb_bcm2837_rpi_cm3_start, (void *)r2);
 }
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


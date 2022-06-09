Delivery-date: Thu, 09 Jun 2022 08:02:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBF7-008S6C-Nc
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 08:02:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBF5-0001TK-3D
	for lore@pengutronix.de; Thu, 09 Jun 2022 08:02:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kLtNI3MSoPswx8qJ3rOSPhN3527OrICpqi5AiBz7cuA=; b=xury89yMXYKA0d
	ylGdgl+AwMnAMdG7ezEv3oTn26Jkv+xrEgmfH/bh7p0fjVkiw+V9YP5I8Q62JFZoFLbPQNjWfELG/
	5ezkyA5GBrQMZOtqP52/jWGMeX7C8eVN+bEwYXKKKPkjz+r/wN4edUTi2FMcTFYqULdMEbCAfn+NB
	+PjhAta3cfFkg5UkL7w4sVb6rN3xcJOdGRuJlN3yBwVB6sjzK+u0Mo2CJSGrUqXzZ5KnAdvJrRwjG
	AJAiVcB5mKetYP1h2rVOeSgl9TKrULQxZdIv/EWaijG90/tdBRKmNCAkzCJmyV+OriI9Djh3de9r3
	HLuY4dTgWNOqasgPuMKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBDc-00Gvfi-6V; Thu, 09 Jun 2022 06:00:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBCa-00Gv0O-SH
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 05:59:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCZ-0008I6-J9; Thu, 09 Jun 2022 07:59:27 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCa-007K9j-4E; Thu, 09 Jun 2022 07:59:26 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCV-002nZo-BR; Thu, 09 Jun 2022 07:59:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Jun 2022 07:59:09 +0200
Message-Id: <20220609055922.667016-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220609055922.667016-1-a.fatoum@pengutronix.de>
References: <20220609055922.667016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_225928_979982_6D50C8A7 
X-CRM114-Status: GOOD (  11.58  )
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
Subject: [PATCH v2 08/21] ARM: rpi: support FDT in x0 for 64bit configurations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

While the lowlevel Raspberry Pi entry code can now be compiled for
64-bit, it doesn't do the correct thing at runtime, because Linux boot
convention places FDT into x0, not r2. Adjust the entry points
accordingly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/lowlevel.c | 27 +++++++++++++++----------
 1 file changed, 16 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/lowlevel.c b/arch/arm/boards/raspberry-pi/lowlevel.c
index 82b51b5b1594..40d36f0cff78 100644
--- a/arch/arm/boards/raspberry-pi/lowlevel.c
+++ b/arch/arm/boards/raspberry-pi/lowlevel.c
@@ -36,7 +36,7 @@ static void copy_vc_fdt(void *dest, void *src, unsigned long max_size)
 	memmove(dest, src, size);
 }
 
-/* A pointer to the FDT created by VideoCore was passed to us in r2. We
+/* A pointer to the FDT created by VideoCore was passed to us in x0/r2. We
  * reserve some memory just above the region used for Barebox and copy
  * this FDT there. We fetch it from there later in rpi_devices_init().
  */
@@ -55,40 +55,45 @@ static inline void start_raspberry_pi(unsigned long memsize, void *fdt,
 	barebox_arm_entry(BCM2835_SDRAM_BASE, endmem - BCM2835_SDRAM_BASE, fdt);
 }
 
-#define RPI_ENTRY_FUNCTION(name, memsize, r2) \
-	ENTRY_FUNCTION_WITHSTACK(name, rpi_stack_top(memsize), __r0, __r1, r2)
+#ifdef CONFIG_CPU_V8
+#define RPI_ENTRY_FUNCTION(name, memsize, fdt) \
+	ENTRY_FUNCTION_WITHSTACK(name, rpi_stack_top(memsize), fdt, __x1, __x2)
+#else
+#define RPI_ENTRY_FUNCTION(name, memsize, fdt) \
+	ENTRY_FUNCTION_WITHSTACK(name, rpi_stack_top(memsize), __r0, __r1, fdt)
+#endif
 
 extern char __dtb_z_bcm2835_rpi_start[];
 extern char __dtb_z_bcm2836_rpi_2_start[];
 extern char __dtb_z_bcm2837_rpi_3_start[];
 extern char __dtb_z_bcm2837_rpi_cm3_start[];
 
-RPI_ENTRY_FUNCTION(start_raspberry_pi1, SZ_128M, r2)
+RPI_ENTRY_FUNCTION(start_raspberry_pi1, SZ_128M, fdt)
 {
 	arm_cpu_lowlevel_init();
 
-	start_raspberry_pi(SZ_128M, __dtb_z_bcm2835_rpi_start, (void *)r2);
+	start_raspberry_pi(SZ_128M, __dtb_z_bcm2835_rpi_start, (void *)fdt);
 }
 
-RPI_ENTRY_FUNCTION(start_raspberry_pi2, SZ_512M, r2)
+RPI_ENTRY_FUNCTION(start_raspberry_pi2, SZ_512M, fdt)
 {
 	arm_cpu_lowlevel_init();
 
-	start_raspberry_pi(SZ_512M, __dtb_z_bcm2836_rpi_2_start, (void *)r2);
+	start_raspberry_pi(SZ_512M, __dtb_z_bcm2836_rpi_2_start, (void *)fdt);
 }
 
-RPI_ENTRY_FUNCTION(start_raspberry_pi3, SZ_512M, r2)
+RPI_ENTRY_FUNCTION(start_raspberry_pi3, SZ_512M, fdt)
 {
 	arm_cpu_lowlevel_init();
 
-	start_raspberry_pi(SZ_512M, __dtb_z_bcm2837_rpi_3_start, (void *)r2);
+	start_raspberry_pi(SZ_512M, __dtb_z_bcm2837_rpi_3_start, (void *)fdt);
 }
 
-RPI_ENTRY_FUNCTION(start_raspberry_pi_cm3, SZ_512M, r2)
+RPI_ENTRY_FUNCTION(start_raspberry_pi_cm3, SZ_512M, fdt)
 {
 	arm_cpu_lowlevel_init();
 
-	start_raspberry_pi(SZ_512M, __dtb_z_bcm2837_rpi_cm3_start, (void *)r2);
+	start_raspberry_pi(SZ_512M, __dtb_z_bcm2837_rpi_cm3_start, (void *)fdt);
 }
 
 #define DT_IF_ENABLED(dt, cfg) \
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


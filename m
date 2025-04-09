Delivery-date: Wed, 09 Apr 2025 16:40:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2Wbe-00ARoO-36
	for lore@lore.pengutronix.de;
	Wed, 09 Apr 2025 16:40:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2Wbd-0003IK-U2
	for lore@pengutronix.de; Wed, 09 Apr 2025 16:40:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6M68tDoVIwDRRdmAjxr+8tUj+NOOctSqA0aCvER4IAo=; b=ox3la9PpdHzeOkSn18QIrhKydh
	fn0qmi4sw1Pj50e5gBtjZeS33HM7EiUtU63puts+dMcr9y+Jd/sm+5IdJDLCTZx649gAYr2sqe2bR
	n+R17hXiuDO0fNMmmNlIOoBVpglp+xzycu898tclUn2rh9cM64hP1gQ7QIy+6Fq8DD4WVKDnooThr
	co1WPBPHBtU2EfyDuTRDI2g4QJCJVqx3JwIrcC28IxHtmyaA8edZFGFPJsQISaf1t/x7wS6aKeFAH
	a2wExWyouYoLslN0fsSwCqvYHtDZ0vCi+aMMz69HEQqCuNM53VMdGD6KdrM09kT2fJRRD7baii4w0
	0ZRIs0Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2WbC-00000007UqW-1v4Q;
	Wed, 09 Apr 2025 14:40:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2Vzo-00000007NXl-0EUs
	for barebox@lists.infradead.org;
	Wed, 09 Apr 2025 14:01:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2Vzm-0004qI-Pl; Wed, 09 Apr 2025 16:01:38 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2Vzm-00470E-1r;
	Wed, 09 Apr 2025 16:01:38 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2Vzm-008jBv-1Z;
	Wed, 09 Apr 2025 16:01:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Apr 2025 16:01:33 +0200
Message-Id: <20250409140134.2079552-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250409140134.2079552-1-a.fatoum@pengutronix.de>
References: <20250409140134.2079552-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_070140_102055_BD8423E4 
X-CRM114-Status: GOOD (  17.83  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/7] ARM: introduce jump_to_linux helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The upcoming FIP bootm handler should be usable on both ARM32 and ARM64
and thus we need an arch-independent way of booting a kernel with a
given device tree.

Introduce a jump_to_linux helper in <asm/boot.h> for this purpose.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/boot.h | 28 ++++++++++++++++++++++++++++
 arch/arm/lib32/armlinux.c   | 14 +++++++-------
 arch/arm/lib64/armlinux.c   | 12 ++++++------
 3 files changed, 41 insertions(+), 13 deletions(-)
 create mode 100644 arch/arm/include/asm/boot.h

diff --git a/arch/arm/include/asm/boot.h b/arch/arm/include/asm/boot.h
new file mode 100644
index 000000000000..a75d139ed8ea
--- /dev/null
+++ b/arch/arm/include/asm/boot.h
@@ -0,0 +1,28 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#ifndef _ASM_BOOT_H_
+#define _ASM_BOOT_H_
+
+#include <linux/types.h>
+
+#ifdef CONFIG_ARM64
+static inline void jump_to_linux(const void *_kernel, phys_addr_t dtb)
+{
+	void (*kernel)(unsigned long dtb, unsigned long x1, unsigned long x2,
+		       unsigned long x3) = _kernel;
+	kernel(dtb, 0, 0, 0);
+}
+#else
+static inline void __jump_to_linux(const void *_kernel, unsigned arch,
+				   phys_addr_t params)
+{
+	void (*kernel)(int zero, unsigned arch, ulong params) = _kernel;
+	kernel(0, arch, params);
+}
+static inline void jump_to_linux(const void *_kernel, phys_addr_t dtb)
+{
+	__jump_to_linux(_kernel, ~0, dtb);
+}
+#endif
+
+#endif	/* _ASM_BOOT_H_ */
diff --git a/arch/arm/lib32/armlinux.c b/arch/arm/lib32/armlinux.c
index 0b332d23639d..56f278d3dbae 100644
--- a/arch/arm/lib32/armlinux.c
+++ b/arch/arm/lib32/armlinux.c
@@ -26,6 +26,7 @@
 #include <asm/armlinux.h>
 #include <asm/system.h>
 #include <asm/secure.h>
+#include <asm/boot.h>
 
 static struct tag *params;
 static void *armlinux_bootparams = NULL;
@@ -251,8 +252,7 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
 		 unsigned long initrd_size, void *oftree,
 		 enum arm_security_state state, void *optee)
 {
-	void (*kernel)(int zero, unsigned arch, void *params) = adr;
-	void *params = NULL;
+	phys_addr_t params = 0;
 	unsigned architecture;
 	int ret;
 
@@ -264,11 +264,11 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
 
 	if (oftree) {
 		pr_debug("booting kernel with devicetree\n");
-		params = oftree;
+		params = virt_to_phys(oftree);
 	} else {
-		params = armlinux_get_bootparams();
+		params = virt_to_phys(armlinux_get_bootparams());
 
-		if ((unsigned long)params < PAGE_SIZE)
+		if (params < PAGE_SIZE)
 			zero_page_access();
 
 		setup_tags(initrd_address, initrd_size, swap);
@@ -288,8 +288,8 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
 	}
 
 	if (optee && IS_ENABLED(CONFIG_BOOTM_OPTEE)) {
-		start_kernel_optee(optee, kernel, oftree);
+		start_kernel_optee(optee, adr, oftree);
 	} else {
-		kernel(0, architecture, params);
+		__jump_to_linux(adr, architecture, params);
 	}
 }
diff --git a/arch/arm/lib64/armlinux.c b/arch/arm/lib64/armlinux.c
index 5feee9c24f2a..13721a71236b 100644
--- a/arch/arm/lib64/armlinux.c
+++ b/arch/arm/lib64/armlinux.c
@@ -5,18 +5,18 @@
 #include <memory.h>
 #include <init.h>
 #include <bootm.h>
+#include <asm/boot.h>
 #include <efi/efi-mode.h>
 
 static int do_bootm_linux(struct image_data *data)
 {
-	void (*fn)(unsigned long dtb, unsigned long x1, unsigned long x2,
-		       unsigned long x3);
+	void *image;
 	phys_addr_t devicetree;
 	int ret;
 
-	fn = booti_load_image(data, &devicetree);
-	if (IS_ERR(fn))
-		return PTR_ERR(fn);
+	image = booti_load_image(data, &devicetree);
+	if (IS_ERR(image))
+		return PTR_ERR(image);
 
 	if (data->dryrun)
 		return 0;
@@ -27,7 +27,7 @@ static int do_bootm_linux(struct image_data *data)
 
 	shutdown_barebox();
 
-	fn(devicetree, 0, 0, 0);
+	jump_to_linux(image, devicetree);
 
 	return -EINVAL;
 }
-- 
2.39.5




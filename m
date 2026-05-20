Delivery-date: Wed, 20 May 2026 10:34:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPcNo-001nu0-0G
	for lore@lore.pengutronix.de;
	Wed, 20 May 2026 10:34:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPcNn-000387-BN
	for lore@pengutronix.de; Wed, 20 May 2026 10:34:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ox97iwuQicPtCi3xbYmXyQ89iknPcLp2bijCrvbYwro=; b=XthgckvXFzADqmjR9DUPQGiYks
	qV/Wf2ubQv6lO4KP582iyIACwWsa645m6B9pf4OCLg8sNuAoq1EdtANAcifHneBgm8cfRvsIEyKUk
	G2BAjRhm6QPHoT4HcXzO6YRfzwHuFkz7MV1S517oIcQ+ZMRt9mOL8/ZDswFiBYlKYr7Q0c06Qa0Ur
	x5WW1xV5JP+mjf4lz+zZWxCn+7FraLbGBbtj/ewXytNje1VHEbzpDoEOhtjs5X5BCTF2Dd/yby5s+
	UVmhmbQw3XENHz2EJaRV5z6d/CXLd3wCO9sBa2BN21Q009+GaEX1UlMYOIeN2M9X3lXn4ycsfGH2C
	Wt+SqLMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPcMd-00000003y1U-3vTS;
	Wed, 20 May 2026 08:33:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPcMa-00000003xyX-3oXq
	for barebox@lists.infradead.org;
	Wed, 20 May 2026 08:33:15 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pfitzner@pengutronix.de>)
	id 1wPcMY-0002uz-6t; Wed, 20 May 2026 10:33:10 +0200
From: Fabian Pfitzner <f.pfitzner@pengutronix.de>
Date: Wed, 20 May 2026 10:33:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260520-fpf-bootsource-instance-index-v1-2-29942f0e8f2f@pengutronix.de>
References: <20260520-fpf-bootsource-instance-index-v1-0-29942f0e8f2f@pengutronix.de>
In-Reply-To: <20260520-fpf-bootsource-instance-index-v1-0-29942f0e8f2f@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pfitzner <f.pfitzner@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_013312_952739_C5C723F2 
X-CRM114-Status: GOOD (  15.27  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] arch: arm: imx: detect secondary boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Integrate support to detect secondary boot on imx machines.
Copy the logic for detection from the uboot-imx project[1].

The information will be stored in the `bootsource_instance_index`
variable.

[1] https://github.com/nxp-imx/uboot-imx/blob/99518e6b6f20cb6a2bf19115e355db9f58100af8/arch/arm/mach-imx/imx8m/soc.c#L792

Signed-off-by: Fabian Pfitzner <f.pfitzner@pengutronix.de>
---
 arch/arm/mach-imx/boot.c | 52 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 3fea22d05f3bfdf2fe9caa6767e1c7c5ea3ced00..a35a1acc2e71231236d3dd5008523f6c66912000 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -26,6 +26,8 @@
 
 #include <soc/fsl/fsl_udc.h>
 
+int imx8m_detect_secondary_image_boot(void);
+
 static void
 imx_boot_save_loc(void (*get_boot_source)(enum bootsource *, int *))
 {
@@ -35,6 +37,10 @@ imx_boot_save_loc(void (*get_boot_source)(enum bootsource *, int *))
 	get_boot_source(&src, &instance);
 
 	bootsource_set(src, instance);
+
+	int index = imx8m_detect_secondary_image_boot();
+
+	bootsource_set_instance_index(index);
 }
 
 
@@ -756,3 +762,49 @@ void imx8mn_get_boot_source(enum bootsource *src, int *instance)
 
 void imx8mn_boot_save_loc(void)
 	__alias(imx8mp_boot_save_loc);
+
+int imx8m_detect_secondary_image_boot(void)
+{
+	u32 *rom_log_addr = (u32 *)0x9e0;
+	u32 *rom_log;
+	u8 event_id;
+	int i, boot_secondary = 0;
+
+	/* If the ROM event log pointer is not valid. */
+	if (*rom_log_addr < 0x900000 || *rom_log_addr >= 0xb00000 ||
+	    *rom_log_addr & 0x3)
+		return -EINVAL;
+
+	/* Parse the ROM event ID version 2 log */
+	rom_log = (u32 *)(uintptr_t)(*rom_log_addr);
+	for (i = 0; i < 128; i++) {
+		event_id = rom_log[i] >> 24;
+		switch (event_id) {
+		case 0x00: /* End of list */
+			return boot_secondary;
+		/* Log entries with 1 parameter, skip 1 */
+		case 0x80: /* Start to perform the device initialization */
+		case 0x81: /* The boot device initialization completes */
+		case 0x82: /* Starts to execute boot device driver pre-config */
+		case 0x8f: /* The boot device initialization fails */
+		case 0x90: /* Start to read data from boot device */
+		case 0x91: /* Reading data from boot device completes */
+		case 0x9f: /* Reading data from boot device fails */
+			i += 1;
+			continue;
+		/* Log entries with 2 parameters, skip 2 */
+		case 0xa0: /* Image authentication result */
+		case 0xc0: /* Jump to the boot image soon */
+			i += 2;
+			continue;
+		/* Boot from the secondary boot image */
+		case 0x51:
+			boot_secondary = 1;
+			continue;
+		default:
+			continue;
+		}
+	}
+
+	return boot_secondary;
+}

-- 
2.47.3




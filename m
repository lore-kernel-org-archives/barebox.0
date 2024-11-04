Delivery-date: Mon, 04 Nov 2024 14:05:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t7wlR-004kmu-0E
	for lore@lore.pengutronix.de;
	Mon, 04 Nov 2024 14:05:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t7wlR-0000eI-K7
	for lore@pengutronix.de; Mon, 04 Nov 2024 14:05:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HckQNkIt6o/aFB6uyFqZ5kV6nuhPduHi/vnkq7ZMOIY=; b=Fm9Hzwm6cyxxqQH+Hd3wVcICjN
	Ol2OlCB5oH+PygL13DGce3xJ+Ixy2NZbZLmpYWV3pAVBg+KpzEHFuPljwEE4/TfQBtAhoCSRRee95
	UHAZum+W81k1WnaaQeB3ZmS0RLE8qj1MuMID9oinlxTRVDV2Us0D6rnC4WupnnKTkj7w14iLjZXMd
	SJnsGacgwoatjybCVM/kf48X0rD1uI/qjzPuCy4gJgXyoT2k6z+zTM4QunaqCkw30BVcJB99yc5pl
	YC56kOJ4UY7E52a2x8ST1M1cKX3Zq+z+R+DwczubwPXAadvZmaOpt2H9TFKdmx8nn54HdYNVH38Ms
	BVteOz1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7wkv-0000000DmXa-3qQH;
	Mon, 04 Nov 2024 13:04:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7wks-0000000DmXF-29sQ
	for barebox@lists.infradead.org;
	Mon, 04 Nov 2024 13:04:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t7wkr-0000YX-1i; Mon, 04 Nov 2024 14:04:25 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t7wkq-001zAK-2m;
	Mon, 04 Nov 2024 14:04:24 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t7wkq-002TBH-2O;
	Mon, 04 Nov 2024 14:04:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  4 Nov 2024 14:04:23 +0100
Message-Id: <20241104130423.587874-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_050426_575679_E8CF10EB 
X-CRM114-Status: GOOD (  18.79  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX: move handoff-data out of OCRAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

During 1st stage boot barebox is running in OCRAM. This OCRAM is
occupied by the TF-A once started, so move the handoff-data to SDRAM
before starting the TF-A.

Currently no board is using handoff-data from its early board code, so
this is not yet necessary, but done now so that board code is able to
use handoff-data in the future.

For i.MX93 let's move the copying of the PBL to SDRAM after setting up
OP-TEE. The OP-TEE code might use handoff-data later as well. When this
happens we must make sure that the handoff-data is complete before
moving it to SDRAM.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/atf.c | 36 ++++++++++++++++++++----------------
 1 file changed, 20 insertions(+), 16 deletions(-)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index f4ba07bf06..a14a68f4fa 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -108,6 +108,8 @@ void imx8mm_load_bl33(void *bl33)
 		hang();
 	}
 
+	handoff_data_move(bl33 - ALIGN(handoff_data_size(), 0x1000));
+
 	/*
 	 * On completion the TF-A will jump to MX8M_ATF_BL33_BASE_ADDR
 	 * in EL2. Copy the image there, but replace the PBL part of
@@ -397,22 +399,6 @@ void __noreturn imx93_load_and_start_image_via_tfa(void)
 
 	imx93_romapi_load_image(bl33);
 
-	/*
-	 * On completion the TF-A will jump to MX93_ATF_BL33_BASE_ADDR
-	 * in EL2. Copy the image there, but replace the PBL part of
-	 * that image with ourselves. On a high assurance boot only the
-	 * currently running code is validated and contains the checksum
-	 * for the piggy data, so we need to ensure that we are running
-	 * the same code in DRAM.
-	 *
-	 * The second purpose of this memcpy is for USB booting. When booting
-	 * from USB the image comes in as a stream, so the PBL is transferred
-	 * only once. As we jump into the PBL again in SDRAM we need to copy
-	 * it there. The USB protocol transfers data in chunks of 1024 bytes,
-	 * so align the copy size up to the next 1KiB boundary.
-	 */
-	memcpy((void *)MX93_ATF_BL33_BASE_ADDR, __image_start, ALIGN(barebox_pbl_size, 1024));
-
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX93_OPTEE)) {
 		void *bl32 = (void *)arm_mem_optee(endmem);
 		size_t bl32_size;
@@ -433,6 +419,24 @@ void __noreturn imx93_load_and_start_image_via_tfa(void)
 		get_builtin_firmware(imx93_bl31_bin, &tfa, &tfa_size);
 	}
 
+	handoff_data_move(bl33 - ALIGN(handoff_data_size(), 0x1000));
+
+	/*
+	 * On completion the TF-A will jump to MX93_ATF_BL33_BASE_ADDR
+	 * in EL2. Copy the image there, but replace the PBL part of
+	 * that image with ourselves. On a high assurance boot only the
+	 * currently running code is validated and contains the checksum
+	 * for the piggy data, so we need to ensure that we are running
+	 * the same code in DRAM.
+	 *
+	 * The second purpose of this memcpy is for USB booting. When booting
+	 * from USB the image comes in as a stream, so the PBL is transferred
+	 * only once. As we jump into the PBL again in SDRAM we need to copy
+	 * it there. The USB protocol transfers data in chunks of 1024 bytes,
+	 * so align the copy size up to the next 1KiB boundary.
+	 */
+	memcpy((void *)MX93_ATF_BL33_BASE_ADDR, __image_start, ALIGN(barebox_pbl_size, 1024));
+
 	memcpy(bl31, tfa, tfa_size);
 
 	asm volatile("msr sp_el2, %0" : :
-- 
2.39.5




Delivery-date: Thu, 14 Jul 2022 09:29:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtHn-007Ja2-6b
	for lore@lore.pengutronix.de; Thu, 14 Jul 2022 09:29:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtHj-0002MK-UZ
	for lore@pengutronix.de; Thu, 14 Jul 2022 09:29:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RvB/wh8SIdOVk/7mwN9oExP6VryInlMu2tcKTQgBX44=; b=bAlDqLqu4Wma1MnLEJ6unCW3qM
	SvYMfTUdL54yDSYUx7WlAeIZxUHT/6QmLlcXY8zC90ycPjv0s1lYClJgJgjLW+ziJ8VT3X17PTOCn
	W4XI2hDINQbqNKG4zhE5G2HWMAI+4kE03ESnAYADCOs7TlVU1J9uJ2lXkB4V3unoVRYt1Yyl0o5am
	AzYXJwTGAlf8aS77IaRZ5L2aBTSy3U78glBS9ijNBJgNhShSw/lnF5eHiUJG+IBDd3+Q4EPK6IJLN
	5Oxa0gcufqHYqDs8qvak2e2mE1cHu4eh7lBlOGK2mPhM2UhNFHDxAZy8TyjKx0+v0rj68wjK+KlRi
	dfyeazvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtGP-00Boof-IT; Thu, 14 Jul 2022 07:27:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtFy-00BoVP-3H
	for barebox@lists.infradead.org; Thu, 14 Jul 2022 07:27:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFt-0001gK-W8; Thu, 14 Jul 2022 09:27:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFt-000rqa-7i; Thu, 14 Jul 2022 09:27:25 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFr-00C1Vm-B2; Thu, 14 Jul 2022 09:27:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 14 Jul 2022 09:27:14 +0200
Message-Id: <20220714072722.2863571-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220714072722.2863571-1-s.hauer@pengutronix.de>
References: <20220714072722.2863571-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_002730_324215_043D0DE2 
X-CRM114-Status: GOOD (  14.75  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 04/12] ARM: i.MX8MP-EVK: Use imx8mp_load_and_start_image_via_tfa()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use recently introduced imx8mp_load_and_start_image_via_tfa() instead
of open coding it. With this we gain image loading via USB for the
i.MX8MP-EVK board.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mp-evk/lowlevel.c | 34 ++---------------------
 1 file changed, 2 insertions(+), 32 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
index 3306392e9e..df4925f533 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
@@ -22,6 +22,7 @@
 #include <mfd/pca9450.h>
 #include <soc/imx8m/ddr.h>
 #include <soc/fsl/fsl_udc.h>
+#include <soc/imx8m.h>
 
 extern char __dtb_z_imx8mp_evk_start[];
 
@@ -104,11 +105,6 @@ extern struct dram_timing_info imx8mp_evk_dram_timing;
 
 static void start_atf(void)
 {
-	size_t bl31_size;
-	const u8 *bl31;
-	enum bootsource src;
-	int instance;
-
 	/*
 	 * If we are in EL3 we are running for the first time and need to
 	 * initialize the DRAM and run TF-A (BL31). The TF-A will then jump
@@ -121,33 +117,7 @@ static void start_atf(void)
 
 	imx8mp_ddr_init(&imx8mp_evk_dram_timing, DRAM_TYPE_LPDDR4);
 
-	imx8mp_get_boot_source(&src, &instance);
-	switch (src) {
-	case BOOTSOURCE_MMC:
-		imx8mp_esdhc_load_image(instance, false);
-		break;
-	default:
-		printf("Unhandled bootsource BOOTSOURCE_%d\n", src);
-		hang();
-	}
-
-
-	/*
-	 * On completion the TF-A will jump to MX8M_ATF_BL33_BASE_ADDR
-	 * in EL2. Copy the image there, but replace the PBL part of
-	 * that image with ourselves. On a high assurance boot only the
-	 * currently running code is validated and contains the checksum
-	 * for the piggy data, so we need to ensure that we are running
-	 * the same code in DRAM.
-	 */
-	memcpy((void *)MX8M_ATF_BL33_BASE_ADDR,
-	       __image_start, barebox_pbl_size);
-
-	get_builtin_firmware(imx8mp_bl31_bin, &bl31, &bl31_size);
-
-	imx8mp_atf_load_bl31(bl31, bl31_size);
-
-	/* not reached */
+	imx8mp_load_and_start_image_via_tfa();
 }
 
 /*
-- 
2.30.2




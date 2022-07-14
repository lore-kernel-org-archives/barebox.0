Delivery-date: Thu, 14 Jul 2022 09:29:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtHd-007JYZ-4T
	for lore@lore.pengutronix.de; Thu, 14 Jul 2022 09:29:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtHZ-0002Iu-Ea
	for lore@pengutronix.de; Thu, 14 Jul 2022 09:29:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LMK/aMp+HYAhHSez/4NAAkSJmWtle7Q89pozegZS6CM=; b=FtaCxM0Oyf3hj0zlqjWHkY5VLi
	rQg+FhLIVPfiabcYxJtbZdxQEeojpDgK+IobTPzSu9jPm5ML7pmajx5tFp2QkN1WqDs0ppJOkq78K
	cJ7MpU9Wq15W7E77YQOWnDH1L3mSuaUDxiK1FF5CwK4C96A+PVdxJ26B2LNbR/vKsXQD3awZ8WLBW
	jCW9v8vDKZEDzggLKeoUfVyanq3Mkbix5Q0fxxcL2wOUgwVssiY8FaT9GDItpsGofma1ee4wpQsSy
	nNBBw70/VHN/Y3DvqP+Ql9phuhqUENvHhyzpsPKIcBfmL3DUpSNk+GCO6NGoxemTdu57WmBJFyVn0
	fjslsFGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtGG-00Bohq-6R; Thu, 14 Jul 2022 07:27:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtFy-00BoUr-2T
	for barebox@lists.infradead.org; Thu, 14 Jul 2022 07:27:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFt-0001fy-4N; Thu, 14 Jul 2022 09:27:25 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFs-000rqH-BL; Thu, 14 Jul 2022 09:27:24 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFr-00C1Vj-AV; Thu, 14 Jul 2022 09:27:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 14 Jul 2022 09:27:13 +0200
Message-Id: <20220714072722.2863571-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220714072722.2863571-1-s.hauer@pengutronix.de>
References: <20220714072722.2863571-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_002730_210088_62F91DC7 
X-CRM114-Status: GOOD (  14.05  )
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
Subject: [PATCH 03/12] ARM: i.MX8MP: Add common code to load image and jump to it via TF-A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add imx8mp_load_and_start_image_via_tfa() to load barebox proper image
and jump to it via TF-A.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/atf.c | 40 ++++++++++++++++++++++++++++++++++++++++
 include/soc/imx8m.h     |  1 +
 2 files changed, 41 insertions(+)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index ad3800519f..d9aaee1bc6 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -6,6 +6,7 @@
 #include <mach/atf.h>
 #include <mach/generic.h>
 #include <mach/xload.h>
+#include <mach/romapi.h>
 #include <soc/imx8m.h>
 #include <soc/fsl/fsl_udc.h>
 
@@ -129,3 +130,42 @@ void imx8mm_load_and_start_image_via_tfa(void)
 
 	/* not reached */
 }
+
+void imx8mp_load_and_start_image_via_tfa(void)
+{
+	size_t bl31_size;
+	const u8 *bl31;
+	enum bootsource src;
+	int instance;
+
+	imx8mp_get_boot_source(&src, &instance);
+	switch (src) {
+	case BOOTSOURCE_MMC:
+		imx8mp_esdhc_load_image(instance, false);
+		break;
+	case BOOTSOURCE_SERIAL:
+		imx8mp_bootrom_load_image();
+		break;
+	default:
+		printf("Unhandled bootsource BOOTSOURCE_%d\n", src);
+		hang();
+	}
+
+
+	/*
+	 * On completion the TF-A will jump to MX8M_ATF_BL33_BASE_ADDR
+	 * in EL2. Copy the image there, but replace the PBL part of
+	 * that image with ourselves. On a high assurance boot only the
+	 * currently running code is validated and contains the checksum
+	 * for the piggy data, so we need to ensure that we are running
+	 * the same code in DRAM.
+	 */
+	memcpy((void *)MX8M_ATF_BL33_BASE_ADDR,
+	       __image_start, barebox_pbl_size);
+
+	get_builtin_firmware(imx8mp_bl31_bin, &bl31, &bl31_size);
+
+	imx8mp_atf_load_bl31(bl31, bl31_size);
+
+	/* not reached */
+}
diff --git a/include/soc/imx8m.h b/include/soc/imx8m.h
index 03b9b59b0b..15f7a4c2c0 100644
--- a/include/soc/imx8m.h
+++ b/include/soc/imx8m.h
@@ -4,5 +4,6 @@
 #define __MACH_IMX8M_H__
 
 void imx8mm_load_and_start_image_via_tfa(void);
+void imx8mp_load_and_start_image_via_tfa(void);
 
 #endif
-- 
2.30.2




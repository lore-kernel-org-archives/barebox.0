Delivery-date: Tue, 28 Jan 2025 16:46:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcnmt-005ZdX-2j
	for lore@lore.pengutronix.de;
	Tue, 28 Jan 2025 16:46:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcnmt-0001J2-Rj
	for lore@pengutronix.de; Tue, 28 Jan 2025 16:46:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lNmiMs+bEFMs39hDcmZAOwY90QB78nzUm1ttJNcPhps=; b=JurUZUMI9GPlCAQryzodFdTCyh
	P6zfwbIunXkJoZTcaq6M9p+i5phvKdbERLky8f3eDBwoxWkXVEHf5U1B6vvmAY0FL5LK7M1HOYE7F
	Og+KjKccUru/7dpM+vvlF2hqjopa59eJj4ulFQfijt6fb+okJQ0Vc1wLB5ylV0S6dkT+IoNhJe/FI
	rNIDK7G47R0vyXUvrretNQxLU12QX//FLaHQXv4hvLbBSXpS1y7+AhjWgrajrQmvz3vZOLz5e/4o1
	EJm96+5w88y1vQtGbuCtDFUHTBINMpll955splrcV6BW44Y8bt04pIivLHMglJZhINuRCvqdIP1CW
	OFV5/5xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcnmS-00000005Bby-0USa;
	Tue, 28 Jan 2025 15:45:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcnmP-00000005Bb1-32og
	for barebox@lists.infradead.org;
	Tue, 28 Jan 2025 15:45:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1tcnmO-00019C-FK
	for barebox@lists.infradead.org; Tue, 28 Jan 2025 16:45:32 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1tcnmO-002JlW-0t
	for barebox@lists.infradead.org;
	Tue, 28 Jan 2025 16:45:32 +0100
Received: from localhost ([::1] helo=dude04.red.stw.pengutronix.de)
	by dude04.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1tcnmO-004uu0-27
	for barebox@lists.infradead.org;
	Tue, 28 Jan 2025 16:45:32 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 28 Jan 2025 16:45:31 +0100
Message-Id: <20250128154531.1172019-1-m.grzeschik@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250128_074533_768288_0EBA20FC 
X-CRM114-Status: GOOD (  12.86  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: i.MX93: ele: make A0 firmware optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since the A0 firmare is not located in the firmware-ele-imx-0.1.0.bin
anymore it is better to make it optional. We add a reference to where
to find the latest version of the firmware in case someone still
uses it.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/mach-imx/ele.c |  2 ++
 firmware/Kconfig        | 11 +++++++++--
 firmware/Makefile       |  2 +-
 3 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/ele.c b/arch/arm/mach-imx/ele.c
index c209f53de4..ec0fd65216 100644
--- a/arch/arm/mach-imx/ele.c
+++ b/arch/arm/mach-imx/ele.c
@@ -200,9 +200,11 @@ int imx93_ele_load_fw(void *bl33)
 	rev = FIELD_GET(ELE_INFO_SOC_REV, info.soc);
 
 	switch (rev) {
+#ifdef CONFIG_FIRMWARE_IMX93_OPTEE_A0
 	case 0xa0:
 		get_builtin_firmware_ext(mx93a0_ahab_container_img, bl33, &firmware, &size);
 		break;
+#endif
 	case 0xa1:
 		get_builtin_firmware_ext(mx93a1_ahab_container_img, bl33, &firmware, &size);
 		break;
diff --git a/firmware/Kconfig b/firmware/Kconfig
index d068e6d983..00546e8706 100644
--- a/firmware/Kconfig
+++ b/firmware/Kconfig
@@ -81,10 +81,17 @@ config FIRMWARE_IMX93_OPTEE
 	  in CONFIG_EXTRA_FIRMWARE_DIR/imx93-bl32.bin. When this option is enabled then
 	  the TF-A binary will be used from CONFIG_EXTRA_FIRMWARE_DIR/imx93-bl31.bin-optee.
 	  Additionally OP-TEE requires a RAM firmware loaded into the ELE. This is expected
-	  in CONFIG_EXTRA_FIRMWARE_DIR/mx93a0-ahab-container.img and
-	  CONFIG_EXTRA_FIRMWARE_DIR/mx93a1-ahab-container.img. You can obtain it from
+	  in CONFIG_EXTRA_FIRMWARE_DIR/mx93a1-ahab-container.img. You can obtain it from
 	  https://www.nxp.com/lgfiles/NMG/MAD/YOCTO/firmware-ele-imx-0.1.0.bin
 
+config FIRMWARE_IMX93_OPTEE_A0
+	bool "install OP-TEE on i.MX93 older A0 revision boards"
+	depends on FIRMWARE_IMX93_OPTEE
+	help
+	  Additionally OP-TEE requires a RAM firmware loaded into the ELE. This is expected
+	  in CONFIG_EXTRA_FIRMWARE_DIR/mx93a0-ahab-container.img. You can obtain it from
+	  https://www.nxp.com/lgfiles/NMG/MAD/YOCTO/firmware-sentinel-0.11.bin
+
 config FIRMWARE_TQMA6UL_OPTEE
 	bool
 	depends on MACH_TQMA6UL && PBL_OPTEE
diff --git a/firmware/Makefile b/firmware/Makefile
index 2f47e04bee..4cf61587d6 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -21,8 +21,8 @@ fw-external-$(CONFIG_FIRMWARE_IMX8MM_OPTEE) += imx8mm-bl32.bin
 fw-external-$(CONFIG_FIRMWARE_IMX8MN_OPTEE) += imx8mn-bl32.bin
 fw-external-$(CONFIG_FIRMWARE_IMX8MP_OPTEE) += imx8mp-bl32.bin
 fw-external-$(CONFIG_FIRMWARE_IMX93_OPTEE) += imx93-bl32.bin \
-					      mx93a0-ahab-container.img \
 					      mx93a1-ahab-container.img
+fw-external-$(CONFIG_FIRMWARE_IMX93_OPTEE_A0) += mx93a0-ahab-container.img
 pbl-firmware-$(CONFIG_ARCH_RK3568) += rk3568-bl31.bin
 pbl-firmware-$(CONFIG_ARCH_RK3588) += rk3588-bl31.bin
 pbl-firmware-$(CONFIG_ARCH_RK3399) += rk3399-bl31.bin
-- 
2.39.5




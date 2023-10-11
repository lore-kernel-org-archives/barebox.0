Delivery-date: Wed, 11 Oct 2023 07:37:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqRuN-0043Q7-Ab
	for lore@lore.pengutronix.de; Wed, 11 Oct 2023 07:37:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqRuL-0004Kx-8H
	for lore@pengutronix.de; Wed, 11 Oct 2023 07:37:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jFYqKZyZ6qSVNidINKPNo27tcn1alTUV0g9RMg9xo6Q=; b=J5aY7sPDB+k904he9Az22+m92X
	ce3WKz/BnbgEKBEvCC9jdyEgpxQa/S0qZfJHHUOK8ewavMiwqohchYfETZ/u2P5BG0ymDXVdmH0Xl
	HgdnR1LBEwWXYOLMD1eZRTmJFEnbSiwDQcA4LIp/cOqBXzpq3ldp0e7Gl6W3637TB2pkMASZwqkLd
	OxjIQXDJC0ToepdACD7clVJiIvIuNyoxwXaI8h+VFci8ia/PPn1Ag9iSPuCkThEvdsx5nmkNl09Y4
	uN99N/Oz/7d9w1QSzaVXEnHChAb9jtxDOoF5ZiqV4Fdnk7KsQPmqIHo4qSvfv/BvUh6d/wv2t84lA
	8KM8O73g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqRt4-00Eqof-0e;
	Wed, 11 Oct 2023 05:36:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqRsz-00Eqnw-1M
	for barebox@lists.infradead.org;
	Wed, 11 Oct 2023 05:36:00 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qqRsx-00046g-6t
	for barebox@lists.infradead.org; Wed, 11 Oct 2023 07:35:55 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 11 Oct 2023 07:35:51 +0200
Message-Id: <20231011053551.2146148-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231011053551.2146148-1-m.felsch@pengutronix.de>
References: <20231011053551.2146148-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_223557_504358_624C6671 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM64: configs: cleanup multi_v8_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Cleanup the defconfig to keep only the required config symbols. The
cleanup is done by running:
 1) make ARCH=arm multi_v8_defconfig
 2) make ARCH=arm savedefconfig
 3) mv defconfig arch/arm/configs/multi_v8_defconfig

This sequence also sort the config entries accordingly.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/configs/multi_v8_defconfig | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index 48fc96a79447..9c538e698d08 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -176,11 +176,11 @@ CONFIG_USB_DWC3=y
 CONFIG_USB_DWC3_DUAL_ROLE=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_STORAGE=y
+CONFIG_USB_ONBOARD_HUB=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_SERIAL=y
 CONFIG_USB_GADGET_FASTBOOT=y
 CONFIG_USB_GADGET_MASS_STORAGE=y
-CONFIG_USB_ONBOARD_HUB=y
 CONFIG_VIDEO=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_DRIVER_VIDEO_BOCHS_PCI=y
@@ -212,7 +212,6 @@ CONFIG_HW_RANDOM_VIRTIO=y
 CONFIG_GPIO_PCA953X=y
 CONFIG_GPIO_ZYNQ=y
 CONFIG_NVMEM_RMEM=y
-CONFIG_IMX_OCOTP=y
 CONFIG_RAVE_SP_EEPROM=y
 CONFIG_REGULATOR=y
 CONFIG_REGULATOR_FIXED=y
@@ -238,7 +237,6 @@ CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
 CONFIG_FS_BPKFS=y
 CONFIG_FS_UIMAGEFS=y
 CONFIG_FS_PSTORE=y
-- 
2.39.2




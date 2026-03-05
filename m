Delivery-date: Thu, 05 Mar 2026 09:22:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy3y6-008Glo-2C
	for lore@lore.pengutronix.de;
	Thu, 05 Mar 2026 09:22:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy3y7-0001KL-0Y
	for lore@pengutronix.de; Thu, 05 Mar 2026 09:22:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=plt5RsuhgVKI1JQrndLSyIOI96SOROvimE9oyb+Nr04=; b=Lvs0oLdFMgyH1VcaTdxIUUxSqZ
	FceasoaYu4gUp8d+U9YfUmorxcyoVcIOucNjbrZl0fZ5hZRSRhxGaeuF38uO1UlcJ+VaYdg+yrmbv
	n5sO2unWvEV3JDFM55w6G7ylyGkJSndhzLnQ5pvEVTYmoHEl3ayOPVU1v7LjsLrr3ZB/pmm8IngxI
	4Fp2YwDKqbbmNsD4goy8lbdw9KrhGiA1+NWqmidoOLLUTRArvdm2acCKUb0rdf2twauWi3IKGF6hl
	lArJ0HxQQXUBIkiZ2WzYkx2BedN5qE063jF+AXVYGJM7tocSYjIsbHUauAW3h9bLod8Ruoq6Hpekv
	cbKzX9iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy3xg-00000001B2u-0IqF;
	Thu, 05 Mar 2026 08:21:36 +0000
Received: from cczrelay05.in2p3.fr ([134.158.66.155] helo=cczrelay03.in2p3.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy3xd-00000001B2Q-01HC
	for barebox@lists.infradead.org;
	Thu, 05 Mar 2026 08:21:34 +0000
Received: from [134.158.124.135] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by cczrelay03.in2p3.fr (Postfix) with ESMTPSA id 49DB21800898
	for <barebox@lists.infradead.org>; Thu,  5 Mar 2026 09:16:20 +0100 (CET)
Message-ID: <49387aff-7c5f-4de2-acaa-2a831799ef3f@clermont.in2p3.fr>
Date: Thu, 5 Mar 2026 09:16:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: David Picard <david.picard@clermont.in2p3.fr>
To: ML_Barebox <barebox@lists.infradead.org>
References: <20260304-b4-sa2-usb-v1-2-8193d0fa9cd7@clermont.in2p3.fr>
Content-Language: fr
In-Reply-To: <20260304-b4-sa2-usb-v1-2-8193d0fa9cd7@clermont.in2p3.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_002133_201179_9E42E562 
X-CRM114-Status: UNSURE (   6.70  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Fwd: [PATCH 2/3] ARM: socfpga: Enclustra SA2: enable USB1 HS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)




-------- Message transféré --------
Sujet : 	[PATCH 2/3] ARM: socfpga: Enclustra SA2: enable USB1 HS
Date : 	Wed, 04 Mar 2026 14:51:24 +0100
De : 	David Picard <david.picard@clermont.in2p3.fr>
Pour : 	David Picard <david.picard@clermont.in2p3.fr>



Enable high-speed USB 2.0 USB1 controller on Enclustra
Mercury+ SA2 module.
---
arch/arm/configs/socfpga_defconfig | 6 ++++++
arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi | 7 +++++++
2 files changed, 13 insertions(+)

diff --git a/arch/arm/configs/socfpga_defconfig 
b/arch/arm/configs/socfpga_defconfig
index 37555a6297..8f9e34d459 100644
--- a/arch/arm/configs/socfpga_defconfig
+++ b/arch/arm/configs/socfpga_defconfig
@@ -86,6 +86,10 @@ CONFIG_MTD_NAND_DENALI=y
CONFIG_MTD_NAND_DENALI_DT=y
CONFIG_MTD_SPI_NOR=y
CONFIG_SPI_CADENCE_QUADSPI=y
+CONFIG_USB_HOST=y
+CONFIG_USB_DWC2_HOST=y
+CONFIG_USB_EHCI=y
+CONFIG_USB_ULPI=y
CONFIG_MCI=y
CONFIG_MCI_DW=y
CONFIG_LED=y
@@ -103,6 +107,8 @@ CONFIG_FIRMWARE_ALTERA_SOCFPGA=y
CONFIG_FPGA=y
CONFIG_FPGA_BRIDGE=y
CONFIG_SOCFPGA_FPGA_BRIDGE=y
+CONFIG_GENERIC_PHY=y
+CONFIG_USB_NOP_XCEIV=y
CONFIG_FS_EXT4=y
CONFIG_FS_TFTP=y
CONFIG_FS_NFS=y
diff --git a/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi 
b/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
index 6334573a77..cd33b38d2b 100644
--- a/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
+++ b/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
@@ -8,6 +8,7 @@
*/
#include <arm/intel/socfpga/socfpga_cyclone5.dtsi>
+#include <dt-bindings/gpio/gpio.h>
/ {
barebox,deep-probe;
@@ -205,6 +206,12 @@ Reference:
};
};
+&usbphy0 {
+ /* HPS_GPIO0, active low */
+ reset-gpios = <&porta 0 GPIO_ACTIVE_LOW>;
+ status = "okay";
+};
+
&usb1 {
status = "okay";
dr_mode = "host";

-- 
2.43.0




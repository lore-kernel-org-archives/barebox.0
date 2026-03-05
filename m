Delivery-date: Thu, 05 Mar 2026 13:56:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy8G8-008KbR-0R
	for lore@lore.pengutronix.de;
	Thu, 05 Mar 2026 13:56:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy8G8-0000Dk-DN
	for lore@pengutronix.de; Thu, 05 Mar 2026 13:56:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iG6IvTnDzYfX4scxPU9aqGTROhQmWdhPw7l5cKGEBiQ=; b=OkSROYDaEQpbWMZJlQXg969K+X
	S83oOzGCEy/N7db8lLSqZH0GkiTNQ2RGiXXFkfAaGrUEb70Bn2NWsZc2En3YSLNF5OhlGcY1hvrQC
	/rbz5w6wW6OigiF525dHKVuZpOHpvBoCxQzxTkdX3pe6Sj4kMs8R2dzb4I0bvNHdA6sSNFNm1lpN3
	SYXtpj5NV3WxZiATSh/Ab/vChzd+2MmCmdX8bmwmOIpgt63wcI2f/3mRiCTM3RAmZ1z4sGjaBNZZF
	fFsbr8Jn5S4vsBhJKgQNZ4GFCX24ABZQF9Pq43UTVpJdHtolgv5NKXETFF8JkRjjDws3w81/M8juL
	lBHbW6jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy8Fm-00000001pMz-1LDY;
	Thu, 05 Mar 2026 12:56:34 +0000
Received: from cczrelay05.in2p3.fr ([134.158.66.155] helo=cczrelay03.in2p3.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy8Fk-00000001pMF-3Sm5
	for barebox@lists.infradead.org;
	Thu, 05 Mar 2026 12:56:34 +0000
Received: from [127.0.1.1] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by cczrelay03.in2p3.fr (Postfix) with ESMTPSA id E919F18007AB;
	Thu,  5 Mar 2026 13:46:49 +0100 (CET)
From: David Picard <david.picard@clermont.in2p3.fr>
Date: Thu, 05 Mar 2026 13:46:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260305-b4-sa2-usb-v3-2-802f52d308ab@clermont.in2p3.fr>
References: <20260305-b4-sa2-usb-v3-0-802f52d308ab@clermont.in2p3.fr>
In-Reply-To: <20260305-b4-sa2-usb-v3-0-802f52d308ab@clermont.in2p3.fr>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: David Picard <david.picard@clermont.in2p3.fr>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772714809; l=1689;
 i=david.picard@clermont.in2p3.fr; s=20250917; h=from:subject:message-id;
 bh=fvZmO2NdrwW/It8Aba4qHvFBCe0/0/RmwWceKCgtuO4=;
 b=HlbX3onrn0sxSPuesZWlFOuEiQ549LRIbR9evxMQM6pM0ACqIkwhRBzg01F5tAkcnQXuIFSWu
 GqSyxY+VHsfCp3kSr+FMLgcLwJCEXPvJ4BzX1W4LEE0woktuXtPVj6B
X-Developer-Key: i=david.picard@clermont.in2p3.fr; a=ed25519;
 pk=Ew2hyxWdBXm7qaK2tHrk3KcOlOjoh3+irqJPSHtq/PU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_045633_004539_4E3A9AA3 
X-CRM114-Status: UNSURE (   7.42  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 2/3] ARM: socfpga: Enclustra SA2: enable USB1 HS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Enable high-speed USB 2.0 USB1 controller on Enclustra
Mercury+ SA2 module.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: David Picard <david.picard@clermont.in2p3.fr>
---
 arch/arm/configs/socfpga_defconfig             | 6 ++++++
 arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi | 7 +++++++
 2 files changed, 13 insertions(+)

diff --git a/arch/arm/configs/socfpga_defconfig b/arch/arm/configs/socfpga_defconfig
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
diff --git a/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi b/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
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
+	/* HPS_GPIO0, active low */
+	reset-gpios = <&porta 0 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
 &usb1 {
 	status = "okay";
 	dr_mode = "host";

-- 
2.43.0




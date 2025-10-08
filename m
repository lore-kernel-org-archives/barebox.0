Delivery-date: Wed, 08 Oct 2025 14:26:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v6TF6-005b58-2O
	for lore@lore.pengutronix.de;
	Wed, 08 Oct 2025 14:26:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v6TF6-0004I6-4v
	for lore@pengutronix.de; Wed, 08 Oct 2025 14:26:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2CgTLE+ybF2xA1C45HmEmkcwzUCOmMk6eFi/oDd8UN0=; b=S5bgaaApj9BmSXKMg1Oxq+CZ55
	cAKjQZ2v08NYuLX/Y/fpWrRRNDA1gGul0gfK6tbrcwMSvTmpdj+YXHsj5p5RCqtBqAGShJpBuGHBk
	QjCVdhnSSlCX6HUi2kSaw6JNlGDEHMOzQ8elm7FCRq7jCCD0x/AGqyrqL9bfJIIgoB//8SjzBJp+z
	MkmpJOXr0eURO2AEHQLUkHqheFeE1NhvkmsrBRZfvjqVtxBx/QMevNrAsVkIFZMYMP/PkqUExQeT9
	dt20S6V10Tub3o0qRofymNEZkUaMsv67aMi52fkYkA+U3ucUU5AgOH1m30k/ISvrW61+/TIa0wlf8
	mt6CdraA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6TEN-00000003oMD-3v6V;
	Wed, 08 Oct 2025 12:25:19 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6TEK-00000003oLj-3PaU
	for barebox@lists.infradead.org;
	Wed, 08 Oct 2025 12:25:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C1C0043EF5;
	Wed,  8 Oct 2025 12:25:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1828C4CEF4;
	Wed,  8 Oct 2025 12:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759926315;
	bh=TIBM3ifA3cXBxzKxBg2lL7GKmVcMqMPg34pYhuSKJJ0=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=gxCs+0QCL7250U3DFnfi3D0c+uIQAZZymfAiaFcpXmKkGF5ynToJvf+nEkqH6yg9o
	 8hUzHgF+nfQfDg9NdAOcJl5apmW9Bwd3N5+sSfIAE3spXx85x+ZKWIuF0QIoIsK5vY
	 Ii3ML6aRxUK+veb5pWRqByIqnaBNPxBgG6bInRlJFOycnKjyHzXIRYo8VaNNHwja34
	 ZrL2GgSzYmDrA2ucebhOHk+kMUNwc5Wmr3wHmJK5yUni4dsipCKQ9Jv+VJ8REcBgie
	 jZawEv6rMgvXpqNQMmJ8BOcmKjR12SeewuR7OcJx8770xsO4YKGCdgxU0YkKcRD6tY
	 +HaQJWh9jn55A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D27CCCA472;
	Wed,  8 Oct 2025 12:25:15 +0000 (UTC)
From: Maud Spierings via B4 Relay <devnull+maudspierings.gocontroll.com@kernel.org>
Date: Wed, 08 Oct 2025 14:25:13 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251008-ddr3-v1-1-8fe874a12878@gocontroll.com>
X-B4-Tracking: v=1; b=H4sIAChY5mgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDAwML3ZSUImNdQ3PzNDOLVAOzRGNDJaDSgqLUtMwKsDHRsbW1AHv2E/p
 WAAAA
X-Change-ID: 20251008-ddr3-177f68e06a31
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Maud Spierings <maudspierings@gocontroll.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759926314; l=4199;
 i=maudspierings@gocontroll.com; s=20250214; h=from:subject:message-id;
 bh=o82eVy6DzFF0oKEpcJDJ/aDJ2Y8KjKmtjSUq7cJKdGk=;
 b=i5SuiIvXmEI++sOzKnqxVnfrPMspvNkhp6d+dZs1OuJZcR8OQS8rjypEt8Mu2R3E7kj5vz/H+
 lwmp9jaar1FAkebjhYU2DJC6uh9qkHHf0GwKNCxizENoPjItHdNMmRb
X-Developer-Key: i=maudspierings@gocontroll.com; a=ed25519;
 pk=7chUb8XpaTQDvWhzTdHC0YPMkTDloELEC7q94tOUyPg=
X-Endpoint-Received: by B4 Relay for maudspierings@gocontroll.com/20250214
 with auth_id=341
X-Original-From: Maud Spierings <maudspierings@gocontroll.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251008_052516_929343_A239B326 
X-CRM114-Status: GOOD (  12.21  )
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
Reply-To: maudspierings@gocontroll.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: imx: add ddr3 ram support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Maud Spierings <maudspierings@gocontroll.com>

Add the necessary bits to use DDR3 on imx platforms.

Tested on Ka-Ro tx8m-1610 (imx8mm) based platform with DDR3L memory.

Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>
---
 drivers/ddr/imx/ddrphy_train.c | 18 ++++++++++++++++++
 firmware/Kconfig               |  3 +++
 firmware/Makefile              |  4 ++++
 include/soc/imx/ddr.h          | 10 ++++++++++
 4 files changed, 35 insertions(+)

diff --git a/drivers/ddr/imx/ddrphy_train.c b/drivers/ddr/imx/ddrphy_train.c
index 24997a6f36676b61b548e08c330dbfdcf336abc0..3185aaf61e494a72ecfac5760fa06f6c39b398ce 100644
--- a/drivers/ddr/imx/ddrphy_train.c
+++ b/drivers/ddr/imx/ddrphy_train.c
@@ -52,6 +52,19 @@ void ddr_get_firmware_ddr4(void)
 			     &ddr4_dmem_2d_size);
 }
 
+static const u16 *ddr3_imem_1d;
+static size_t ddr3_imem_1d_size;
+static const u16 *ddr3_dmem_1d;
+static size_t ddr3_dmem_1d_size;
+
+void ddr_get_firmware_ddr3(void)
+{
+	get_builtin_firmware(ddr3_imem_1d_bin, &ddr3_imem_1d,
+			     &ddr3_imem_1d_size);
+	get_builtin_firmware(ddr3_dmem_1d_bin, &ddr3_dmem_1d,
+			     &ddr3_dmem_1d_size);
+}
+
 void ddr_load_train_code(struct dram_controller *dram, enum dram_type dram_type,
 			 enum fw_type fw_type)
 {
@@ -82,6 +95,11 @@ void ddr_load_train_code(struct dram_controller *dram, enum dram_type dram_type,
 			dmem = ddr4_dmem_2d;
 			dsize = ddr4_dmem_2d_size;
 		}
+	} else if (dram_is_ddr3(dram_type)) {
+		imem = ddr3_imem_1d;
+		isize = ddr3_imem_1d_size;
+		dmem = ddr3_dmem_1d;
+		dsize = ddr3_dmem_1d_size;
 	} else {
 		panic("No matching DDR PHY firmware found");
 	}
diff --git a/firmware/Kconfig b/firmware/Kconfig
index 14a1c3d3a84407029e576e8e46993f828784f48b..a97a1e0dd324fa2ff95a0e77d1057bc45aa1ad07 100644
--- a/firmware/Kconfig
+++ b/firmware/Kconfig
@@ -22,6 +22,9 @@ config MISSING_FIRMWARE_ERROR
 	  If in doubt, say Y and refer to the documentation on where to acquire the
 	  needed firmware.
 
+config FIRMWARE_IMX_DDR3_PMU_TRAIN
+	bool
+
 config FIRMWARE_IMX_LPDDR4_PMU_TRAIN
 	bool
 
diff --git a/firmware/Makefile b/firmware/Makefile
index 1fe770a2d900f216dd457d88aee761df4ada26c6..163055554d51b0cc9547f4a43f97c39d23f8eb65 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -12,6 +12,10 @@ pbl-firmware-$(CONFIG_FIRMWARE_IMX_DDR4_PMU_TRAIN) += \
 	ddr4_imem_1d.bin \
 	ddr4_imem_2d.bin
 
+pbl-firmware-$(CONFIG_FIRMWARE_IMX_DDR3_PMU_TRAIN) += \
+	ddr3_dmem_1d.bin \
+	ddr3_imem_1d.bin
+
 pbl-firmware-$(CONFIG_FIRMWARE_IMX8MM_ATF) += imx8mm-bl31.bin$(if $(CONFIG_FIRMWARE_IMX8MM_OPTEE),-optee,)
 pbl-firmware-$(CONFIG_FIRMWARE_IMX8MN_ATF) += imx8mn-bl31.bin$(if $(CONFIG_FIRMWARE_IMX8MN_OPTEE),-optee,)
 pbl-firmware-$(CONFIG_FIRMWARE_IMX8MP_ATF) += imx8mp-bl31.bin$(if $(CONFIG_FIRMWARE_IMX8MP_OPTEE),-optee,)
diff --git a/include/soc/imx/ddr.h b/include/soc/imx/ddr.h
index 1e64613895d1b0bcfd5f48a55e0a8bcabd4d96c5..642606290082643dfed9fbeb283652b877d28639 100644
--- a/include/soc/imx/ddr.h
+++ b/include/soc/imx/ddr.h
@@ -18,6 +18,7 @@ enum dram_type {
 #define DRAM_TYPE_MASK	0x00ff
 	DRAM_TYPE_LPDDR4	= 0 << 0,
 	DRAM_TYPE_DDR4		= 1 << 0,
+	DRAM_TYPE_DDR3		= 2 << 0,
 };
 
 static inline enum dram_type get_dram_type(unsigned type)
@@ -115,11 +116,14 @@ struct dram_controller {
 
 void ddr_get_firmware_lpddr4(void);
 void ddr_get_firmware_ddr4(void);
+void ddr_get_firmware_ddr3(void);
 
 static inline void ddr_get_firmware(enum dram_type dram_type)
 {
 	if (dram_type == DRAM_TYPE_LPDDR4)
 		ddr_get_firmware_lpddr4();
+	else if (dram_type == DRAM_TYPE_DDR3)
+		ddr_get_firmware_ddr3();
 	else
 		ddr_get_firmware_ddr4();
 }
@@ -188,6 +192,12 @@ static inline bool dram_is_ddr4(enum dram_type dram_type)
 		dram_type == DRAM_TYPE_DDR4;
 }
 
+static inline bool dram_is_ddr3(enum dram_type dram_type)
+{
+	return IS_ENABLED(CONFIG_FIRMWARE_IMX_DDR3_PMU_TRAIN) &&
+		dram_type == DRAM_TYPE_DDR3;
+}
+
 #define DDRC_PHY_REG(x)	((x) * 4)
 
 #endif /* __SOC_IMX_DDR_H */

---
base-commit: 8785a6ad7467b6f1f70b6e12aa2ceb2fdd5d8546
change-id: 20251008-ddr3-177f68e06a31

Best regards,
-- 
Maud Spierings <maudspierings@gocontroll.com>





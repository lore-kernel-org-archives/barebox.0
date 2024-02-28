Delivery-date: Wed, 28 Feb 2024 14:15:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfJm2-00DUdo-2R
	for lore@lore.pengutronix.de;
	Wed, 28 Feb 2024 14:15:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfJm1-0008Fl-Ng
	for lore@pengutronix.de; Wed, 28 Feb 2024 14:15:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KD5d8qXHBVk1CoJsobj7mBQ9m4iAkcbPtik9iHDu2uA=; b=3CynBiV3iReTb51jXAfPfFTKsR
	CJ8ac2v5HmriI2i9X+TfSjGUGFW2Dx7VG/Of7N36r5D1Vnx/zKhXGMCN/eOfCNf7pv72jiBzAAik/
	DuQqDWzJRBJ9QH4goSDfi9AmDV33LRnSS17LZkedJEvvLmbuPBkfFDvwAVoPhpWpsGP5lwr7zAKQn
	cwgjCx+E1jt9Ag36Dwd/FttPl1NLTeq/DheDIXY0HLhAW4VSs85v9IDWatGoHQtLHjzC7HGfqAtGw
	mtdPk7f5UrasUPfa5iycKrx7QwO6v5mKupligfwjla27qsTnVNxBRs3p568G0aPqbmlLs0neVhYbq
	iA4v7Cag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfJlY-00000009QfX-1htT;
	Wed, 28 Feb 2024 13:14:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfJlU-00000009QeA-39em
	for barebox@lists.infradead.org;
	Wed, 28 Feb 2024 13:14:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rfJlL-0007yo-HL; Wed, 28 Feb 2024 14:14:19 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rfJlL-003P13-3V; Wed, 28 Feb 2024 14:14:19 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rfJlK-002uZZ-1i;
	Wed, 28 Feb 2024 14:14:19 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Wed, 28 Feb 2024 14:14:09 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240228-v2024-02-0-topic-imx8m-n-p-tzac-v2-2-ee1ae48dc399@pengutronix.de>
References: <20240228-v2024-02-0-topic-imx8m-n-p-tzac-v2-0-ee1ae48dc399@pengutronix.de>
In-Reply-To: <20240228-v2024-02-0-topic-imx8m-n-p-tzac-v2-0-ee1ae48dc399@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_051428_876413_D05D1F51 
X-CRM114-Status: GOOD (  12.17  )
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
Subject: [PATCH v2 2/3] arm: mach-imx: set cpu type in pbl
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); Unknown failure

In order to use the `cpu_is_imxxyz` macro family in the pbl,
`__imx_cpu_type` has to be defined and initialized. As we don't have
access to the devicetree at this point, we resort to manual assignment.

Note: It is safe to build the same imx.o object file for both barebox
pbl and proper as the `imx_init` function is discarded during linking as
the whole `init_call` section is not linked into the final binary.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 arch/arm/mach-imx/Makefile | 2 +-
 arch/arm/mach-imx/atf.c    | 5 +++++
 include/mach/imx/generic.h | 5 +++++
 3 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index ce8af486ae..a2d9702bf4 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -28,7 +28,7 @@ obj-$(CONFIG_NAND_IMX) += nand.o
 lwl-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
 obj-y += devices.o imx.o
 obj-$(CONFIG_CMD_BOOTROM) += bootrom-cmd.o
-obj-pbl-y += esdctl.o boot.o
+obj-pbl-y += esdctl.o boot.o imx.o
 obj-$(CONFIG_BAREBOX_UPDATE) += imx-bbu-internal.o
 obj-$(CONFIG_BAREBOX_UPDATE_IMX_EXTERNAL_NAND) += imx-bbu-external-nand.o
 pbl-$(CONFIG_USB_GADGET_DRIVER_ARC_PBL) += imx-udc.o
diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 2d8388e8e9..e8060ebd95 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -148,6 +148,7 @@ __noreturn void __imx8mm_load_and_start_image_via_tfa(void *bl33)
 	size_t bl31_size;
 	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(32);
 
+	imx_set_cpu_type(IMX_CPU_IMX8MM);
 	imx8mm_init_scratch_space();
 	imx8m_save_bootrom_log();
 	imx8mm_load_bl33(bl33);
@@ -218,6 +219,7 @@ __noreturn void __imx8mp_load_and_start_image_via_tfa(void *bl33)
 	size_t bl31_size;
 	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(32);
 
+	imx_set_cpu_type(IMX_CPU_IMX8MP);
 	imx8mp_init_scratch_space();
 	imx8m_save_bootrom_log();
 	imx8mp_load_bl33(bl33);
@@ -289,6 +291,7 @@ __noreturn void __imx8mn_load_and_start_image_via_tfa(void *bl33)
 	size_t bl31_size;
 	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(16);
 
+	imx_set_cpu_type(IMX_CPU_IMX8MN);
 	imx8mn_init_scratch_space();
 	imx8m_save_bootrom_log();
 	imx8mn_load_bl33(bl33);
@@ -353,6 +356,7 @@ __noreturn void __imx8mq_load_and_start_image_via_tfa(void *bl33)
 	size_t bl31_size;
 	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(32);
 
+	imx_set_cpu_type(IMX_CPU_IMX8MQ);
 	imx8mq_init_scratch_space();
 	imx8m_save_bootrom_log();
 	imx8mq_load_bl33(bl33);
@@ -388,6 +392,7 @@ void __noreturn imx93_load_and_start_image_via_tfa(void)
 	void *bl33 = (void *)MX93_ATF_BL33_BASE_ADDR;
 	unsigned long endmem = MX9_DDR_CSD1_BASE_ADDR + imx9_ddrc_sdram_size();
 
+	imx_set_cpu_type(IMX_CPU_IMX93);
 	imx93_init_scratch_space(true);
 
 	/*
diff --git a/include/mach/imx/generic.h b/include/mach/imx/generic.h
index 1dca335fdd..2b26a1d45a 100644
--- a/include/mach/imx/generic.h
+++ b/include/mach/imx/generic.h
@@ -82,6 +82,11 @@ void imx93_cpu_lowlevel_init(void);
 
 extern unsigned int __imx_cpu_type;
 
+static __always_inline void imx_set_cpu_type(unsigned int cpu_type)
+{
+	__imx_cpu_type = cpu_type;
+}
+
 #ifdef CONFIG_ARCH_IMX1
 # ifdef imx_cpu_type
 #  undef imx_cpu_type

-- 
2.39.2




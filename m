Delivery-date: Fri, 01 Oct 2021 12:11:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWFVx-0002Ye-K0
	for lore@lore.pengutronix.de; Fri, 01 Oct 2021 12:11:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWFVv-0006P0-KU
	for lore@pengutronix.de; Fri, 01 Oct 2021 12:11:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KoG+faKaDCUzYSyBV3sTv7ZghCzbG62WMr3LsOWZcTA=; b=fUoBSOoqrLUFck
	eDONgWbEWSlg02l5ci+5WPMCJzbu8ze/OT7v2x7Kw9eYUXv5Ffhbkdipc5SGgIMQvrT02eqeRZ+NU
	mxGVkgZAAsmircYVfpS6p17tYY99o1smjHbTg1zATn6mDSxH/9bza4mfEBCg3CTMTyyJDnscUdvfZ
	0GoHja+zAJcRO6CU394igzwS+2DGmuGo1ieTJ387LXGqByRYm7pLN9cD9gsVItrrKPKQuAmbO1eKb
	aGxm3qeo3nrjGJxOeuXE97AZMKoAMXjbEilBOKsGQd7ZvT2HvC8GUvH+E/Kvezgz0waXzzK1v3nNv
	t1notfS/ITvXCj3fjNBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWFUO-00HQlE-8f; Fri, 01 Oct 2021 10:10:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWFUJ-00HQjb-0R
 for barebox@lists.infradead.org; Fri, 01 Oct 2021 10:09:56 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mWFUF-0005ks-6p; Fri, 01 Oct 2021 12:09:51 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mWFUE-0001pa-FV; Fri, 01 Oct 2021 12:09:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Trent Piepho <tpiepho@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  1 Oct 2021 12:09:45 +0200
Message-Id: <20211001100949.6891-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211001100949.6891-1-a.fatoum@pengutronix.de>
References: <20211001100949.6891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_030955_110756_82BF46C2 
X-CRM114-Status: GOOD (  12.55  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/8] ARM: i.MX: extend drivers for i.MX8MN (Nano) support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Extend match tables and function definitions for i.MX USB, ATF,
MCI, NVMEM, pinctrl and serial drivers for the i.MX8M Nano.

There is no special handling required for those, compared with
the mini.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/imx-esdhc.c        | 1 +
 drivers/nvmem/ocotp.c          | 3 +++
 drivers/pinctrl/imx-iomux-v3.c | 2 ++
 drivers/serial/serial_imx.c    | 3 +++
 drivers/usb/imx/imx-usb-misc.c | 4 ++++
 firmware/Kconfig               | 3 +++
 firmware/Makefile              | 1 +
 7 files changed, 17 insertions(+)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 5a664ce4c3b2..9dcad3bb5d31 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -357,6 +357,7 @@ static __maybe_unused struct of_device_id fsl_esdhc_compatible[] = {
 	{ .compatible = "fsl,imx6sx-usdhc", .data = &usdhc_imx6sx_data },
 	{ .compatible = "fsl,imx8mq-usdhc", .data = &usdhc_imx6sx_data },
 	{ .compatible = "fsl,imx8mm-usdhc", .data = &usdhc_imx6sx_data },
+	{ .compatible = "fsl,imx8mn-usdhc", .data = &usdhc_imx6sx_data },
 	{ .compatible = "fsl,imx8mp-usdhc", .data = &usdhc_imx6sx_data },
 	{ .compatible = "fsl,ls1046a-esdhc",.data = &esdhc_ls_data  },
 	{ /* sentinel */ }
diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index b2fad3c68770..7d27a4fe44ee 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -937,6 +937,9 @@ static __maybe_unused struct of_device_id imx_ocotp_dt_ids[] = {
 	}, {
 		.compatible = "fsl,imx8mm-ocotp",
 		.data = &imx8mq_ocotp_data,
+	}, {
+		.compatible = "fsl,imx8mn-ocotp",
+		.data = &imx8mq_ocotp_data,
 	}, {
 		.compatible = "fsl,vf610-ocotp",
 		.data = &vf610_ocotp_data,
diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
index cec2414a03e2..fb2b348883bc 100644
--- a/drivers/pinctrl/imx-iomux-v3.c
+++ b/drivers/pinctrl/imx-iomux-v3.c
@@ -250,6 +250,8 @@ static __maybe_unused struct of_device_id imx_iomux_v3_dt_ids[] = {
 		.data = &imx_iomux_imx7_lpsr_data,
 	}, {
 		.compatible = "fsl,imx8mm-iomuxc",
+	}, {
+		.compatible = "fsl,imx8mn-iomuxc",
 	}, {
 		.compatible = "fsl,imx8mp-iomuxc",
 	}, {
diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index 056fa14c2a9b..d1329ca1eba9 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -298,6 +298,9 @@ static __maybe_unused struct of_device_id imx_serial_dt_ids[] = {
 	}, {
 		.compatible = "fsl,imx8mm-uart",
 		.data = &imx21_data,
+	}, {
+		.compatible = "fsl,imx8mn-uart",
+		.data = &imx21_data,
 	}, {
 		.compatible = "fsl,imx8mp-uart",
 		.data = &imx21_data,
diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
index c16b4cf0abbf..013f139a8abc 100644
--- a/drivers/usb/imx/imx-usb-misc.c
+++ b/drivers/usb/imx/imx-usb-misc.c
@@ -616,6 +616,10 @@ static __maybe_unused struct of_device_id imx_usbmisc_dt_ids[] = {
 		.compatible = "fsl,imx8mm-usbmisc",
 		.data = &mx7_data,
 	},
+	{
+		.compatible = "fsl,imx8mn-usbmisc",
+		.data = &mx7_data,
+	},
 #endif
 #ifdef CONFIG_ARCH_VF610
 	{
diff --git a/firmware/Kconfig b/firmware/Kconfig
index c2ff51b9110e..16acab7c5f08 100644
--- a/firmware/Kconfig
+++ b/firmware/Kconfig
@@ -10,6 +10,9 @@ config FIRMWARE_IMX_LPDDR4_PMU_TRAIN
 config FIRMWARE_IMX8MM_ATF
         bool
 
+config FIRMWARE_IMX8MN_ATF
+        bool
+
 config FIRMWARE_IMX8MP_ATF
         bool
 
diff --git a/firmware/Makefile b/firmware/Makefile
index 00bdedfc6b45..e3fe8d604f13 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -7,6 +7,7 @@ firmware-$(CONFIG_FIRMWARE_IMX_LPDDR4_PMU_TRAIN) += \
 	lpddr4_pmu_train_2d_imem.bin
 
 firmware-$(CONFIG_FIRMWARE_IMX8MM_ATF) += imx8mm-bl31.bin
+firmware-$(CONFIG_FIRMWARE_IMX8MN_ATF) += imx8mn-bl31.bin
 firmware-$(CONFIG_FIRMWARE_IMX8MP_ATF) += imx8mp-bl31.bin
 firmware-$(CONFIG_FIRMWARE_IMX8MQ_ATF) += imx8mq-bl31.bin
 firmware-$(CONFIG_ARCH_RK3568) += rk3568-bl31.bin
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


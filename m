Delivery-date: Tue, 10 Jun 2025 20:49:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uP42a-005tM6-2p
	for lore@lore.pengutronix.de;
	Tue, 10 Jun 2025 20:49:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uP42a-0002uX-8y
	for lore@pengutronix.de; Tue, 10 Jun 2025 20:49:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8h7TZus9uGba8JNWC/KhZVSZmlYZ2g1I9zSaSIqlqmI=; b=Mnp8+YS5bxmCuKUn3dTYKKTJ3u
	zxegWs3RQtIYCLOW874fgFWMIUMtAtROkabPleAh+JEkdgAhbzx9ZwiRXQt7/QBtt3STosdqaF5oB
	DrYWYu4eoyVnWTMxc2wECWfPLPjKk/o7yuI1Ou4mk+7DN/cdjUazXjz/TSMCFEs1mA7TB0G6Z+HW9
	5RUAOh8xcrW5jUSvRAFwfUdee9pWBReVXcAwnH6iPoB/bGBPJx8eO0XxdC0sAJuXwDebDByxv8ENQ
	ypgcwzbCRLHg1CpVb5b6xusD90L7rtM3o7jtKb+VC/+odTCi3B0N5hxx34FW9emx0UI+T8iP/qUGZ
	xeTSgKTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP428-00000007qSJ-0UWC;
	Tue, 10 Jun 2025 18:49:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP0wZ-00000007K71-1XXd
	for barebox@bombadil.infradead.org;
	Tue, 10 Jun 2025 15:31:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=8h7TZus9uGba8JNWC/KhZVSZmlYZ2g1I9zSaSIqlqmI=; b=YJjxDQF3hygAvhBWprGKQ+nb+P
	4ZP7xencK23eEguDEN8uIK6NlHmhI5iuqV/ByjMsj5q2EsUFaYLsG8VVLmL5attjC6xbbtRUzwF+l
	MIqXEgjcFuuggaSkiSzL0Tkv7EZ/Tb1BZFcslXRqNq56PmK8glAhkxr00efjPt2+FluPHG9HbRXLL
	tsfUtN6U00qrbU14zJYE8WQegt00BeMPS8CVUu5PIbWu2CGxuw8Q2IWMmjD7NYzNb+gsqF0S3qlHx
	6QIgj4vNNLA3AY4HdDx+cpnJxj0L/xkKY1t82hWHKHzppuVRVyeCzNKKKAjIcePRSb2qecYrvgoEJ
	UyCsi8tQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP0wX-00000001u6G-1S6T
	for barebox@lists.infradead.org;
	Tue, 10 Jun 2025 15:31:19 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1uP0wU-0005tF-Ip; Tue, 10 Jun 2025 17:31:14 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 10 Jun 2025 17:30:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250610-imx8mp_ecspi-v1-1-d14d1e9d65f3@pengutronix.de>
References: <20250610-imx8mp_ecspi-v1-0-d14d1e9d65f3@pengutronix.de>
In-Reply-To: <20250610-imx8mp_ecspi-v1-0-d14d1e9d65f3@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3239; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=/GVJwBciEKnsDM0FlvRqi1YZqNIwldqo5vjxNlFC4KA=;
 b=owGbwMvMwCF2ZcYT3onnbjcwnlZLYsjw8D/YuvvyuUMZ175cvakUs3VJAYNAzZrchU80jXcuF
 Fw1/9WyWR2lLAxiHAyyYoossWpyCkLG/tfNKu1iYeawMoEMYeDiFICJfDFh+GdavKL48pq8ZwHa
 WUvWsilHlurancteyP3LzTcqT/fOEmdGhsu156Wuv2bZHc25mLNkX/XlnTO+7oqyFn3VueldaRm
 fBDsA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_163117_441975_6BF78302 
X-CRM114-Status: GOOD (  14.16  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: i.MX8M: Add support for eCSPI boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Load and boot barebox via eCSPI when started so via bootrom.

Only tested on i.MX8MP

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 arch/arm/mach-imx/atf.c       |  4 ++++
 arch/arm/mach-imx/xload-spi.c | 38 ++++++++++++++++++++++++++++++++++++++
 include/mach/imx/xload.h      |  1 +
 3 files changed, 43 insertions(+)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 6dc80cb70054eca2aa70b0cfc989baf2a5b75232..6993e33baa39c87afa15ee7302e574d096fde7a5 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -16,6 +16,7 @@
 #include <soc/fsl/caam.h>
 #include <tee/optee.h>
 #include <mach/imx/ele.h>
+#include <mach/imx/xload.h>
 
 /**
  * imx8m_atf_load_bl31 - Load ATF BL31 blob and transfer control to it
@@ -193,6 +194,9 @@ void imx8mp_load_bl33(void *bl33)
 	case BOOTSOURCE_SPI:
 		imx8mp_qspi_load_image(instance, bl33);
 		break;
+	case BOOTSOURCE_SPI_NOR:
+		imx8m_ecspi_load_image(instance, bl33);
+		break;
 	default:
 		printf("Unhandled bootsource BOOTSOURCE_%d\n", src);
 		hang();
diff --git a/arch/arm/mach-imx/xload-spi.c b/arch/arm/mach-imx/xload-spi.c
index 621e9557be0c54b24eb004deeea85fd5cb9434f4..0bdcce8659f744f54e88aa3a69e1d06f4ab95689 100644
--- a/arch/arm/mach-imx/xload-spi.c
+++ b/arch/arm/mach-imx/xload-spi.c
@@ -4,6 +4,7 @@
 #include <io.h>
 #include <spi/imx-spi.h>
 #include <mach/imx/imx6-regs.h>
+#include <mach/imx/imx8mq-regs.h>
 #include <mach/imx/generic.h>
 #include <bootsource.h>
 #include <asm/sections.h>
@@ -136,3 +137,40 @@ int imx6_spi_start_image(int instance)
 
 	bb();
 }
+
+/**
+ * imx8m_spi_load_image - load an image from SPI NOR
+ * @instance: The SPI controller instance (0..2)
+ * @bl33: The buffer to load the bl33 barebox image to
+ *
+ * This function loads data from SPI NOR flash. This assumes the
+ * SPI controller has already been initialized and the pinctrl / clocks are
+ * configured correctly. This is the case when the ROM has loaded the initial
+ * portion of the boot loader from exactly this controller.
+ *
+ * Return: 0 if successful, negative error code otherwise
+ */
+
+int imx8m_ecspi_load_image(int instance, void *bl33)
+{
+	void *base;
+
+	/* Base Adresses are the same for i.MX8M[QM] */
+	switch (instance) {
+	case 0:
+		base = IOMEM(MX8MQ_ECSPI1_BASE_ADDR);
+		break;
+	case 1:
+		base = IOMEM(MX8MQ_ECSPI2_BASE_ADDR);
+		break;
+	case 2:
+		base = IOMEM(MX8MQ_ECSPI3_BASE_ADDR);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	cspi_2_3_load(base, SZ_8K, bl33, imx_image_size());
+
+	return 0;
+}
diff --git a/include/mach/imx/xload.h b/include/mach/imx/xload.h
index 62b853f585e5a504a853d3da05deecaa1d7b04ad..396c728547614091fc710de50dc1583c6b6e2a68 100644
--- a/include/mach/imx/xload.h
+++ b/include/mach/imx/xload.h
@@ -16,6 +16,7 @@ int imx7_esdhc_start_image(int instance);
 int imx7_nand_start_image(void);
 
 /* Below functions only load and don't start the image */
+int imx8m_ecspi_load_image(int instance, void *bl33);
 int imx8m_esdhc_load_image(int instance, void *bl33);
 int imx8mn_esdhc_load_image(int instance, void *bl33);
 int imx8mp_esdhc_load_image(int instance, void *bl33);

-- 
2.39.5




Delivery-date: Thu, 09 Mar 2023 11:44:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDla-00EiPw-VM
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 11:44:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDla-00014J-9Y
	for lore@pengutronix.de; Thu, 09 Mar 2023 11:44:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jbjDGY8UyeyDJSUpEAmGLvnYgPqmE/Vb73UAP/Qy5bs=; b=HlQF8ctfhRenqZ++ciLOqe4q7b
	TVx9mMxT9tKUZYLEPccLy/xgRItYBJN0NsK3/ebtUrEkvR9OxHbvMsVzHXUFvQnlcP0rNwQhqF+vi
	VxfIOMUFigGjvP+jG+amMwx+A4TkxLDuEPBWUNkFeUzSXNsTPi3Gpwa3DSflLdTBKj5qbFvTjOWfA
	taevtrbhCD/qh7hGBQPqudbWmcTfuTCFXOluQ0EnzcpSq2qFvKfiYcCyh+s0uecvpS9WpTkyvelKC
	Db7Q2tF4UbLsAMUwKZFJvITkoQd1sxB9Zivpl51C+n316edZSdMTMfF9qZ+mu/F71jH8CdO2PljH6
	S0/gaoag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDkF-0099yY-Go; Thu, 09 Mar 2023 10:43:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDiv-0099IV-Kg
	for barebox@bombadil.infradead.org; Thu, 09 Mar 2023 10:42:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=jbjDGY8UyeyDJSUpEAmGLvnYgPqmE/Vb73UAP/Qy5bs=; b=ox1RF4fPmSrzHY11O8hGzNFbfu
	szUsnsiQpkAPicgOxyxLTuMNj3tz+ea3PVfgZYCYmZ9JHiYne2uzqNz0ufkUYPFtli7iVLxXu4Mui
	CZIlyZVAeIY8xM90GSffZvr1QJjdnaa6V3ZRjMAeic/Tmi+K/1vk0eGLe/djzXiF5b3dVJLoTaCGB
	LW70ftH0WIOLNpyWfbSjzcE5isr0mKRzCrSDGNecpFSq21/ve1JOK3Irl04/0SoZamN/QLS3UKYrE
	p8O0P/xmXnTOgIJLvWpV0MDFr5nRwsJuUNZZ1S37DvyeDi8dKd6Mn3yfCR8AViypK4WOQ4l1/p7ZR
	BabRaCrA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1paDhX-0005RG-0g
	for barebox@lists.infradead.org;
	Thu, 09 Mar 2023 10:42:11 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1paDhS-0007YT-83
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 11:40:42 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 09 Mar 2023 11:40:50 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230228-v2023-02-0-topic-flexspi-v1-18-7b3c3fa295f5@pengutronix.de>
References: <20230228-v2023-02-0-topic-flexspi-v1-0-7b3c3fa295f5@pengutronix.de>
In-Reply-To: <20230228-v2023-02-0-topic-flexspi-v1-0-7b3c3fa295f5@pengutronix.de>
To: barebox@lists.infradead.org
Cc: 
X-Mailer: b4 0.12.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_104048_627902_AC8E1F7F 
X-CRM114-Status: UNSURE (   9.95  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 18/21] ARM: i.MX: bbu: add FlexSPI update handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds the update handler support to flash barebox flexspi compatible
images to the QSPI.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 40 ++++++++++++++++++++++++++++++++++++
 include/mach/imx/bbu.h               | 11 ++++++++++
 2 files changed, 51 insertions(+)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 066b7c0002..cd7db81cc9 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -19,6 +19,7 @@
 #include <environment.h>
 #include <mach/imx/bbu.h>
 #include <mach/imx/generic.h>
+#include <mach/imx/imx-header.h>
 #include <libfile.h>
 
 struct imx_internal_bbu_handler {
@@ -654,3 +655,42 @@ int imx_bbu_external_nor_register_handler(const char *name,
 
 	return __register_handler(imx_handler);
 }
+
+static unsigned long imx_bbu_flash_header_offset_flexspi(void)
+{
+	unsigned int sd_flash_header_gap = SZ_32K;
+
+	if (cpu_is_mx8mm())
+		return sd_flash_header_gap;
+
+	return sd_flash_header_gap + SZ_1K;
+}
+
+static unsigned long imx_bbu_device_offset_flexspi(void)
+{
+	if (cpu_is_mx8mm())
+		return 0;
+
+	return 0x400;
+}
+
+static int
+imx_bbu_internal_flexspi_nor_register_handler(const char *name,
+					      const char *devicefile,
+					      unsigned long flags)
+{
+	struct imx_internal_bbu_handler *imx_handler;
+
+	flags |= IMX_BBU_FLAG_ERASE | IMX_BBU_FLAG_PARTITION_STARTS_AT_HEADER;
+	imx_handler = __init_handler(name, devicefile, flags);
+	imx_handler->target_device_offset = imx_bbu_device_offset_flexspi();
+	imx_handler->flash_header_offset = imx_bbu_flash_header_offset_flexspi();
+	imx_handler->expected_type = filetype_nxp_fspi_image;
+
+	return __register_handler(imx_handler);
+}
+
+int imx8m_bbu_internal_flexspi_nor_register_handler(const char *name,
+						    const char *devicefile,
+						    unsigned long flags)
+	__alias(imx_bbu_internal_flexspi_nor_register_handler);
diff --git a/include/mach/imx/bbu.h b/include/mach/imx/bbu.h
index 34133b587c..451ae15740 100644
--- a/include/mach/imx/bbu.h
+++ b/include/mach/imx/bbu.h
@@ -86,6 +86,10 @@ int imx8m_bbu_internal_mmcboot_register_handler(const char *name, const char *de
 int imx_bbu_external_nor_register_handler(const char *name, const char *devicefile,
 		unsigned long flags);
 
+int imx8m_bbu_internal_flexspi_nor_register_handler(const char *name,
+						    const char *devicefile,
+						    unsigned long flags);
+
 #else
 
 static inline int imx51_bbu_internal_mmc_register_handler(const char *name, const char *devicefile,
@@ -198,6 +202,13 @@ imx7_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefile,
 	return -ENOSYS;
 }
 
+static inline int
+imx8m_bbu_internal_flexspi_nor_register_handler(const char *name, const char *devicefile,
+						unsigned long flags);
+{
+	return -ENOSYS;
+}
+
 #endif
 
 #if defined(CONFIG_BAREBOX_UPDATE_IMX_EXTERNAL_NAND)

-- 
2.30.2




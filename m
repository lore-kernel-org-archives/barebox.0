Delivery-date: Mon, 13 Mar 2023 14:45:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiUJ-00624V-Ci
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 14:45:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiUI-00066k-U3
	for lore@pengutronix.de; Mon, 13 Mar 2023 14:45:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZQ51uZoitE3iHa3r8c0G1RkdC2E37wtFoA6gR6hm/GE=; b=wsjYwi8CPu+cIhO16Yh3V7kM6d
	f9R2GKEsU4ZIJI3TJbgSNnooduRwXb33sk68GX1rhXkNTHnUgHxA8l/O/CrRt0pq1mQ2h62ZzndJy
	FT21CrIWW5CL6oADCjU1AXC6wSNpfEPBWPkDVul1zY6A2XPaARg9MLlPDhk6rqLTzKBvZV4RWKS06
	aeGFQ9qvOus9EBuOcuncLgbkZMscwloTqtPfDMqLMI+1kmkD3BJ8S3OzRECfbXraSp2gyVdZm0ZKi
	N8aHngJeeXEws1f23idHF7VNoQy/DgryikJ3dnGF1gnZ+q0Wc1qnSUPaDVVR2esHheceNCTrD+AhU
	mC94YT8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiSp-005wyr-Ie; Mon, 13 Mar 2023 13:43:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiR1-005vrb-Ho
	for barebox@bombadil.infradead.org; Mon, 13 Mar 2023 13:41:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=ZQ51uZoitE3iHa3r8c0G1RkdC2E37wtFoA6gR6hm/GE=; b=Im0qQPfoPFjT4KwVTgbCCW8PdD
	8IOlPWo8YndbXxRzBG2bQEAjzK40jmURGoGpriDDsv42rLeP2SGFqhM3esoVJSxkQMJyumyXI+XfD
	JKAy4Tbl+aEz+LieVdTXVfnk+dwtt7I8+AV/iPnaT2XxUk5SYLfyNmZVQLzke5CuDS/QICjhJMkNt
	UTRotlyBaTyvcb8CmYaQcHDQxUPdfA1edMdYkXnugLurXM4ubIMv8OXoIbYeFnqSOvNCZK1AkWQZ0
	9dAZvc1Q4H2pEX5ZvfcxcNlE+qPaIqIW/MoOsmgrOMUOzD8YnVVJO6+AGzLM1wHmrLYvwMoaomkzi
	ZrGfrd5Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pbiQw-001NSo-2I
	for barebox@lists.infradead.org;
	Mon, 13 Mar 2023 13:41:53 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1pbiQr-0004N9-8l
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 14:41:45 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 13 Mar 2023 14:41:57 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230228-v2023-02-0-topic-flexspi-v2-18-3d33126d2434@pengutronix.de>
References: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
In-Reply-To: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
To: barebox@lists.infradead.org
Cc: 
X-Mailer: b4 0.12.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_134150_857000_DFB6F8C9 
X-CRM114-Status: GOOD (  11.64  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 18/23] ARM: i.MX: bbu: add filetype offset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Make it possible to have a different filetype offset which is used
during the filetype check. This is required for the upcoming i.MX8MM/N/P
QSPI bbu support.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 8eca0783eb..7c13437b61 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -26,6 +26,7 @@ struct imx_internal_bbu_handler {
 	int (*write_device)(struct imx_internal_bbu_handler *,
 			    struct bbu_data *);
 	unsigned long flash_header_offset;
+	unsigned long filetype_offset;
 	size_t device_size;
 	enum filetype expected_type;
 };
@@ -161,8 +162,8 @@ static int imx_bbu_check_prereq(struct imx_internal_bbu_handler *imx_handler,
 		if (expected_type == filetype_unknown)
 			break;
 
-		blob = data->image + imx_handler->flash_header_offset;
-		len  = data->len   - imx_handler->flash_header_offset;
+		blob = data->image + imx_handler->filetype_offset;
+		len  = data->len   - imx_handler->filetype_offset;
 		type = file_detect_type(blob, len);
 
 		if (type != expected_type) {
@@ -470,6 +471,7 @@ imx_bbu_internal_mmc_register_handler(const char *name, const char *devicefile,
 	imx_handler = __init_handler(name, devicefile, flags |
 				     IMX_BBU_FLAG_KEEP_HEAD);
 	imx_handler->flash_header_offset = imx_bbu_flash_header_offset_mmc();
+	imx_handler->filetype_offset = imx_handler->flash_header_offset;
 
 	return __register_handler(imx_handler);
 }
@@ -484,6 +486,7 @@ imx_bbu_internal_spi_i2c_register_handler(const char *name,
 	imx_handler = __init_handler(name, devicefile, flags |
 				     IMX_BBU_FLAG_ERASE);
 	imx_handler->flash_header_offset = imx_bbu_flash_header_offset_mmc();
+	imx_handler->filetype_offset = imx_handler->flash_header_offset;
 
 	return __register_handler(imx_handler);
 }
@@ -529,6 +532,7 @@ int imx53_bbu_internal_nand_register_handler(const char *name,
 
 	imx_handler = __init_handler(name, "/dev/nand0", flags);
 	imx_handler->flash_header_offset = imx_bbu_flash_header_offset_mmc();
+	imx_handler->filetype_offset = imx_handler->flash_header_offset;
 
 	imx_handler->device_size = partition_size;
 	imx_handler->write_device = imx_bbu_internal_v2_write_nand_dbbt;
@@ -580,6 +584,7 @@ static int imx_bbu_internal_mmcboot_register_handler(const char *name,
 
 	imx_handler = __init_handler(name, devicefile, flags);
 	imx_handler->flash_header_offset = flash_header_offset;
+	imx_handler->filetype_offset = flash_header_offset;
 
 	imx_handler->handler.handler = imx_bbu_internal_mmcboot_update;
 

-- 
2.30.2




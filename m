Delivery-date: Mon, 13 Mar 2023 14:44:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiTX-0061ki-Un
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 14:44:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiTX-0005gG-4W
	for lore@pengutronix.de; Mon, 13 Mar 2023 14:44:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M1MyB69BOguiUNdgkLKpOUlrA4tN9+yLqw66jP/qoXs=; b=Cauw/WF2AeBJXtBkiJjhUY+LC5
	dGPvANbrQFSz9V1/R8VOWB8ZAhm2PNfMF064wJtSWkWuYLuo/aoahPqLyGG+RK7lBTKA0Y0Oowp8i
	rP/0CdXn3cRPBnKNZIeDXcrdckrN5WzMx4iltvVs8x+g6XNsd69v571aiVzepmtnn1TByhj2teCC1
	TcFc9Jo0tnzfMPxWWcdhDLFpl8RB7umDVTX5JhTm042Csj8cdpO2sjHcitNv20QEGgjltZ7sE/5d9
	rdVoXxLp6aW4xNlWB4/wP2PCDxaFQIEeVIuHybdfL5dl4lBqUd5V6WHtt/i0pddH2aXduUnEUB5kM
	Pe68cuSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiS4-005waM-Vq; Mon, 13 Mar 2023 13:43:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiQs-005vmx-5R
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 13:41:52 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1pbiQr-0004N9-0O
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 14:41:45 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 13 Mar 2023 14:41:55 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230228-v2023-02-0-topic-flexspi-v2-16-3d33126d2434@pengutronix.de>
References: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
In-Reply-To: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
To: barebox@lists.infradead.org
Cc: 
X-Mailer: b4 0.12.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_064146_230988_B29D6F4E 
X-CRM114-Status: GOOD (  10.83  )
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
Subject: [PATCH v2 16/23] filetype: add NXP FlexSPI filetype
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds the NXP FlexSPI FCFB header check to the file_detect_type() so
update handlers can verify the correct type.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/filetype.c  | 5 +++++
 include/filetype.h | 1 +
 2 files changed, 6 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 68ea45861d..820bc89ea6 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -69,6 +69,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_imx_image_v2] = { "i.MX image (v2)", "imx-image-v2" },
 	[filetype_layerscape_image] = { "Layerscape image", "layerscape-PBL" },
 	[filetype_layerscape_qspi_image] = { "Layerscape QSPI image", "layerscape-qspi-PBL" },
+	[filetype_nxp_fspi_image] = { "NXP FlexSPI image", "nxp-fspi-image" },
 	[filetype_ubootvar] = { "U-Boot environmemnt variable data",
 				"ubootvar" },
 	[filetype_stm32_image_fsbl_v1] = { "STM32MP FSBL image (v1)", "stm32-fsbl-v1" },
@@ -409,6 +410,10 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (is_imx_flash_header_v2(_buf))
 		return filetype_imx_image_v2;
 
+	if (buf[0] == cpu_to_be32(FCFB_HEAD_TAG) &&
+	    buf[1] == cpu_to_le32(FCFB_VERSION))
+		return filetype_nxp_fspi_image;
+
 	if (buf[8] == 0xAA995566 && buf[9] == 0x584C4E58)
 		return filetype_zynq_image;
 
diff --git a/include/filetype.h b/include/filetype.h
index 1a7d145555..783418c652 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -59,6 +59,7 @@ enum filetype {
 	filetype_rockchip_rkns_image,
 	filetype_fip,
 	filetype_qemu_fw_cfg,
+	filetype_nxp_fspi_image,
 	filetype_max,
 };
 

-- 
2.30.2




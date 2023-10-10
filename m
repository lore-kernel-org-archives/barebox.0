Delivery-date: Tue, 10 Oct 2023 16:34:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDoz-003BGk-GO
	for lore@lore.pengutronix.de; Tue, 10 Oct 2023 16:34:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDox-0008Kr-1s
	for lore@pengutronix.de; Tue, 10 Oct 2023 16:34:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aR7DrmMdIYsYMfMFYPLrmzeSNV9uqsxJHUjJsYKHZaM=; b=czgHDfG+2mEWD9WwKQQgBJgLZW
	/1vxL3XDBBPUDp2Diu/wMCcs6oK1mzh9D6dJwZO0x3EsJ91dK1x2MyUeyqeMSn9gjHM4C/THyfx2O
	Eo6NHKJ1l3qGw8/Nkkk/CUhik72lWukZQUXZSRfe17lFwLSCSOwhL2gg9ABgyJ2PSiGGAAjPn2xk8
	p+vjLEws04nmJ1q3agFkeKaVu8F3cSiUcoekK5Qu0c36xVxGqaHKH3MeAdK/RCySZ8AFQYTKtCCh3
	RSyKt3eFav6o4JR1W7gBdvrB+RIvXUdwp9wZuHB4IVHhNhV/5cEKQ96cNs/yROVK5mBSrTuhDGBIA
	tmgCLWiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnj-00DZar-0t;
	Tue, 10 Oct 2023 14:33:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnY-00DZQJ-2A
	for barebox@lists.infradead.org;
	Tue, 10 Oct 2023 14:33:29 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qqDnV-0007Dl-Is
	for barebox@lists.infradead.org; Tue, 10 Oct 2023 16:33:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 10 Oct 2023 16:33:05 +0200
Message-Id: <20231010143314.2031253-18-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010143314.2031253-1-m.felsch@pengutronix.de>
References: <20231010143314.2031253-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_073324_724357_4B3D3043 
X-CRM114-Status: GOOD (  15.11  )
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
Subject: [PATCH 17/26] scripts: imx: fix i.MX8M  CSF header placement
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The current boot flow is broken if both the FlexSPI image and the HAB
support is enabled. The HAB/CST tool need to take the additional FlexSPI
IVT header into account which is added in between the first IVT header
and the barebox pbl code.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/mach/imx/imx-header.h | 1 +
 scripts/imx/imx-image.c       | 9 +++++----
 scripts/imx/imx.c             | 6 +++++-
 3 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/include/mach/imx/imx-header.h b/include/mach/imx/imx-header.h
index b11b57c37227..0ad3485eb261 100644
--- a/include/mach/imx/imx-header.h
+++ b/include/mach/imx/imx-header.h
@@ -7,6 +7,7 @@
 
 #define HEADER_LEN 0x1000	/* length of the blank area + IVT + DCD */
 #define CSF_LEN 0x2000		/* length of the CSF (needed for HAB) */
+#define FLEXSPI_HEADER_LEN	HEADER_LEN
 
 #define DEK_BLOB_HEADER 8	/* length of DEK blob header */
 #define DEK_BLOB_KEY 32		/* length of DEK blob AES-256 key */
diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index ecb16187de17..01da4cc36467 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -408,8 +408,6 @@ static size_t add_flexspi_fcfb_header(const struct config_data *data, void *buf)
 	return sizeof(nor_conf);
 }
 
-#define FLEXSPI_HEADER_LEN	HEADER_LEN
-
 static size_t
 add_flexspi_header(const struct config_data *data, void **_buf, size_t *header_len)
 {
@@ -812,8 +810,11 @@ static int hab_sign(struct config_data *data)
 		 * For i.MX8 insert the CSF data into the reserved CSF area
 		 * right behind the PBL
 		 */
-		offset = roundup(data->header_gap + data->pbl_code_size +
-				 HEADER_LEN, 0x1000);
+		offset = data->header_gap + data->pbl_code_size + HEADER_LEN;
+		if (flexspi_image(data))
+			offset += FLEXSPI_HEADER_LEN;
+
+		offset = roundup(offset, 0x1000);
 		if (data->signed_hdmi_firmware_file)
 			offset += PLUGIN_HDMI_SIZE;
 
diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 32488455b7a8..b3c13510af84 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -332,6 +332,7 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
 	int i;
 	uint32_t signed_size = data->load_size;
 	uint32_t offset = data->image_ivt_offset;
+	unsigned int hdrlen = HEADER_LEN;
 
 	if (!data->csf)
 		return -EINVAL;
@@ -347,8 +348,11 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
 	 * Ensure we only sign the PBL for i.MX8MQ
 	 */
 	if (data->pbl_code_size && cpu_is_mx8m(data)) {
+		if (flexspi_image(data))
+			hdrlen += FLEXSPI_HEADER_LEN;
+
 		offset += data->header_gap;
-		signed_size = roundup(data->pbl_code_size + HEADER_LEN, 0x1000);
+		signed_size = roundup(data->pbl_code_size + hdrlen, 0x1000);
 		if (data->signed_hdmi_firmware_file)
 			offset += PLUGIN_HDMI_SIZE;
 	}
-- 
2.39.2




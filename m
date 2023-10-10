Delivery-date: Tue, 10 Oct 2023 16:35:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDpN-003BP9-Ot
	for lore@lore.pengutronix.de; Tue, 10 Oct 2023 16:35:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDpJ-0000Fl-UG
	for lore@pengutronix.de; Tue, 10 Oct 2023 16:35:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YkD9ZCpW7xAiEXeKg2mFLrlp1l9IFPN0+rtGSs0uB7s=; b=a3nXnydPAWwgtDNUwZ2+Dq7hcp
	Qi14dtTvJ3jhJ+NVyht/+99034VWLWpYtIaC2zGFviht/LMsLthHhHPYGJ4igt9UxtM6JzBpk3Xtp
	dSF2yNnm7GgEslDu2W0I6rzzHEdCshMx/4zuC0dVqtepPLfBeS5qkgCAiiOl/JZ641yE0g8cskms1
	zVU4qbzWVzcHi6/18NkQk6K1Ntqa68ig4SRPPYmQJ3sluWBAWaX1TfSRJ5Bj4fYj1j3ZP8K2ZsZ4Z
	lSofza4yfCV9rgAK2lSfHkCDpXMMsqNBlHP9VgLK+Con5TMOy45hcz9Sq3qzZ2+pYN9x3pdWL3kei
	aHmJFLOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDo1-00DZyk-0W;
	Tue, 10 Oct 2023 14:33:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnt-00DZnH-1H
	for barebox@bombadil.infradead.org;
	Tue, 10 Oct 2023 14:33:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=YkD9ZCpW7xAiEXeKg2mFLrlp1l9IFPN0+rtGSs0uB7s=; b=mLVruB3npiVJNM9T/cJwLoKrcJ
	zwGtfy2tgbf5Zf2OsSwjJDO1VCIo2eSXlv6rO0IltJ4BFCcZC4p8cA9ffmvUPIe34SffXtDHszbRO
	uY2VVNShDWMDqKfBb/Ng9f16OUGiJRsCwqSSqetjsPR9VBerS+oA/8aN7xvTe9GKZCJxJxOqLAT3P
	FLtPcBgPvImWJHtV2aNTaWH7u/9L3X3Xdw57QZn4tPzwkTXiNH6gmF3WNs/JJUUzxiFWcdJbJgi/k
	W0qvlg+0D/STL/OvFOxETPZBLUgpcESBQ/12xyyE1ky4mEZaWImgBlEJna0X+7+OM9w/+kmwrnx6y
	iKSHjBjg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDng-00GvFu-3D
	for barebox@lists.infradead.org;
	Tue, 10 Oct 2023 14:33:43 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qqDnV-0007Dl-Nr
	for barebox@lists.infradead.org; Tue, 10 Oct 2023 16:33:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 10 Oct 2023 16:33:10 +0200
Message-Id: <20231010143314.2031253-23-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010143314.2031253-1-m.felsch@pengutronix.de>
References: <20231010143314.2031253-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_153334_586180_3E4A83F8 
X-CRM114-Status: GOOD (  19.39  )
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
Subject: [PATCH 22/26] scripts: imx: fix HAB for FlexSPI boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The HAB FlexSPI boot use-case is currently broken, albeit the BootROM
does the same steps as for MMC/SD. To fix this we need a 2nd CSF slot,
since the HAB ROM code expect the IVT and payload data to be signed by
the code signing tool (CST) and the MMC/SD IVT does differ slightly from
the FlexSPI IVT.

Please check the upcoming documentation patch for a in detail image
layout overview.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/mach/imx/imx-header.h |  1 +
 scripts/imx/imx-image.c       |  9 +++++++++
 scripts/imx/imx.c             | 38 ++++++++++++++++++++++++++++++++---
 3 files changed, 45 insertions(+), 3 deletions(-)

diff --git a/include/mach/imx/imx-header.h b/include/mach/imx/imx-header.h
index 0ad3485eb261..9e6b31ade462 100644
--- a/include/mach/imx/imx-header.h
+++ b/include/mach/imx/imx-header.h
@@ -117,6 +117,7 @@ struct config_data {
 	int (*nop)(const struct config_data *data);
 	int csf_space;
 	char *csf;
+	char *flexspi_csf;
 	int sign_image;
 	char *signed_hdmi_firmware_file;
 	int encrypt_image;
diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 4372ff85067b..8c4cc771ee28 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -343,6 +343,8 @@ add_header_v2(const struct config_data *data, void *buf, uint32_t offset,
 	if (data->sign_image) {
 		hdr->csf = loadaddr + imagesize + (csf_slot * CSF_LEN);
 		hdr->boot_data.size += CSF_LEN;
+		if (data->flexspi_csf)
+			hdr->boot_data.size += CSF_LEN;
 	} else if (data->pbl_code_size && data->csf) {
 		/*
 		 * For i.MX8 the CSF space is added via the linker script, so
@@ -350,6 +352,8 @@ add_header_v2(const struct config_data *data, void *buf, uint32_t offset,
 		 * signing is not.
 		 */
 		hdr->boot_data.size += CSF_LEN;
+		if (data->flexspi_csf)
+			hdr->boot_data.size += CSF_LEN;
 	}
 
 	buf += sizeof(*hdr);
@@ -1110,6 +1114,11 @@ int main(int argc, char *argv[])
 		ret = hab_sign(&data, data.csf, 0);
 		if (ret)
 			exit(1);
+		if (data.flexspi_csf) {
+			ret = hab_sign(&data, data.flexspi_csf, 1);
+			if (ret)
+				exit(1);
+		}
 	}
 
 	if (create_usb_image) {
diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index acc8424e547d..b5dd97491dc6 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -290,6 +290,8 @@ static int hab_add_str(struct config_data *data, const char *str)
 		return -ENOMEM;
 
 	strcat(data->csf, str);
+	if (flexspi_image(data))
+		strcat(data->flexspi_csf, str);
 
 	data->csf_space -= len;
 
@@ -324,6 +326,12 @@ static int do_hab(struct config_data *data, int argc, char *argv[])
 		data->csf = calloc(data->csf_space + 1, 1);
 		if (!data->csf)
 			return -ENOMEM;
+
+		if (flexspi_image(data)) {
+			data->flexspi_csf = calloc(data->csf_space + 1, 1);
+			if (!data->flexspi_csf)
+				return -ENOMEM;
+		}
 	}
 
 	for (i = 1; i < argc; i++) {
@@ -345,7 +353,8 @@ static int do_hab(struct config_data *data, int argc, char *argv[])
 
 static void
 imx8m_get_offset_size(struct config_data *data,
-		      uint32_t *offset, uint32_t *signed_length)
+		      uint32_t *offset, uint32_t *signed_size,
+		      uint32_t *flexspi_offset, uint32_t *flexspi_signed_size)
 {
 	unsigned int hdrlen = HEADER_LEN;
 
@@ -353,10 +362,22 @@ imx8m_get_offset_size(struct config_data *data,
 		hdrlen += FLEXSPI_HEADER_LEN;
 
 	*signed_size = roundup(data->pbl_code_size + hdrlen, 0x1000);
+	*flexspi_signed_size = roundup(data->pbl_code_size + FLEXSPI_HEADER_LEN,
+				       0x1000);
 
 	*offset += data->header_gap;
-	if (data->signed_hdmi_firmware_file)
+	*flexspi_offset += data->header_gap;
+	/*
+	 * Starting with i.MX8MP/N the FlexSPI IVT offset is 0x0 but the primary
+	 * image offset is at 0x1000.
+	 */
+	if (data->cpu_type != IMX_CPU_IMX8MM)
+		*flexspi_offset += HEADER_LEN;
+
+	if (data->signed_hdmi_firmware_file) {
 		*offset += PLUGIN_HDMI_SIZE;
+		*flexspi_offset += PLUGIN_HDMI_SIZE;
+	}
 }
 
 static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
@@ -365,7 +386,9 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
 	int ret;
 	int i;
 	uint32_t signed_size = data->load_size;
+	uint32_t flexspi_signed_size = signed_size;
 	uint32_t offset = data->image_ivt_offset;
+	uint32_t flexspi_offset = data->image_flexspi_ivt_offset;
 
 	if (!data->csf)
 		return -EINVAL;
@@ -381,12 +404,20 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
 	 * Ensure we only sign the PBL for i.MX8MQ
 	 */
 	if (data->pbl_code_size && cpu_is_mx8m(data))
-		imx8m_get_offset_size(data, &offset, &signed_size)
+		imx8m_get_offset_size(data, &offset, &signed_size,
+				      &flexspi_offset, &flexspi_signed_size);
 
 	if (signed_size > 0) {
 		ret = asprintf(&str, "Blocks = 0x%08x 0x%08x 0x%08x \"%s\"",
 			data->image_load_addr + data->image_ivt_offset, offset,
 			signed_size - data->image_ivt_offset, data->outfile);
+		if (flexspi_image(data))
+			ret |= asprintf(&flexspi_str,
+					"Blocks = 0x%08x 0x%08x 0x%08x \"%s\"",
+					data->image_load_addr +
+					data->image_flexspi_ivt_offset,
+					flexspi_offset, flexspi_signed_size,
+					data->outfile);
 	} else {
 		fprintf(stderr, "Invalid signed size area 0x%08x\n",
 			signed_size);
@@ -398,6 +429,7 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
 
 	ret = hab_add_barebox_blocks(data, str, flexspi_str);
 	free(str);
+	free(flexspi_str);
 	if (ret)
 		return ret;
 
-- 
2.39.2




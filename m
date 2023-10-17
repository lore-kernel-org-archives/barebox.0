Delivery-date: Tue, 17 Oct 2023 16:55:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslU8-00BsmI-U2
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 16:55:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslU7-0004VT-1Z
	for lore@pengutronix.de; Tue, 17 Oct 2023 16:55:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=COD7qwzpSSyT1A6cc8frL4/hiTPNA3DF/dLsw37DbV0=; b=F80d7TcsdBH8kwqpw5N8yUgtko
	3k5fuCZgLBgD7lLKBLYsiyELwwawQT1U3g+2dCRh0Z6w71dBXkwpEvEH3YQK+FqaI7K2LyQVHfdw9
	IWH7iw9eFySMxjJULuV139elo6zWo6+eP+BsWM3+Y9IEHSwaPinaUW7b0vQKE6L2Pw9Ilx1tv89w4
	Geq4YWRDnAdcEUJnMN0CCsNnnnWjCtDYxIPS3JB044c4UTncGX4tzzjhb9mdtXtfJnujLqtDZlALV
	2Ju8xILag+93zTsI8w1gKxyKh0EI6MpYQBEJQSMTcc6MFbe5886arIDj6vJVikq5VOcAoUu7eoV5j
	5eq6XDQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qslSt-00CfJT-0K;
	Tue, 17 Oct 2023 14:54:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQD-00Ccek-27
	for barebox@bombadil.infradead.org;
	Tue, 17 Oct 2023 14:51:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=COD7qwzpSSyT1A6cc8frL4/hiTPNA3DF/dLsw37DbV0=; b=eKz6StQz5V8eoizHMdzbYj9IZl
	2rX5Ofk5C+O5GKK1ycJnTdeCpyqE6A8GLTnzq2/LfZcbma79WItYxLEI0eswMG0WRS2kGyOJzqefr
	YwNrV5pCU4wCB2fP55NMwj+VNqJCqpunxb2ktBYnyDETUngCEQ5eJtkPodShnlKSljdfbq9vB4iWO
	ziFYwwb6hVvJHN7QugSDHSgE08ReW23UfzyNo6v+lzf3DTRVQY4K3ybVZ8CdY6E7r1FH433kJA9hn
	kIZnxDEUuWahtADYbQUc6oK82lX2K6kW887H2IfkrrXsZ3/tAmiFdfK1W6lYzzqsJozP/rFrU7tik
	CAGqG3Ng==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQ6-007AEh-0V
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 14:51:48 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qslPz-0001wJ-0U
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 16:51:35 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 17 Oct 2023 16:51:21 +0200
Message-Id: <20231017145131.3069283-20-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231017145131.3069283-1-m.felsch@pengutronix.de>
References: <20231017145131.3069283-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_155142_412267_D28D1F64 
X-CRM114-Status: UNSURE (   9.79  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 19/29] scripts: imx-image: header_v2: add CSF slots
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Place the MMC/SD CSF data int slot-0 and the FlexSPI CSF data into
slot-1. This must be done since the MMC/SD and FlexSPI CSF data are
different.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v2:
- unchanged
- v1-link: https://lore.barebox.org/barebox/20231010143314.2031253-1-m.felsch@pengutronix.de/T/#t

 scripts/imx/imx-image.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 01da4cc36467..e9eded7f0828 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -298,7 +298,7 @@ static int write_mem_v1(uint32_t addr, uint32_t val, int width, int set_bits, in
 
 static size_t
 add_header_v2(const struct config_data *data, void *buf, uint32_t offset,
-	      size_t header_len)
+	      size_t header_len, unsigned int csf_slot)
 {
 	struct imx_flash_header_v2 *hdr;
 	int dcdsize = curdcd * sizeof(uint32_t);
@@ -341,7 +341,7 @@ add_header_v2(const struct config_data *data, void *buf, uint32_t offset,
 		hdr->boot_data.size	= imagesize;
 
 	if (data->sign_image) {
-		hdr->csf = loadaddr + imagesize;
+		hdr->csf = loadaddr + imagesize + (csf_slot * CSF_LEN);
 		hdr->boot_data.size += CSF_LEN;
 	} else if (data->pbl_code_size && data->csf) {
 		/*
@@ -463,7 +463,7 @@ add_flexspi_header(const struct config_data *data, void **_buf, size_t *header_l
 	    data->cpu_type == IMX_CPU_IMX8MN)
 		buf += SZ_4K;
 
-	size += add_header_v2(data, buf, ivt_offset, len);
+	size += add_header_v2(data, buf, ivt_offset, len, 1);
 
 	*header_len += FLEXSPI_HEADER_LEN;
 
@@ -1018,7 +1018,7 @@ int main(int argc, char *argv[])
 		barebox_image_size += add_flexspi_header(&data, &buf, &header_len);
 		barebox_image_size += add_header_v2(&data, buf +
 						    signed_hdmi_firmware_size,
-						    data.image_ivt_offset, header_len);
+						    data.image_ivt_offset, header_len, 0);
 		break;
 	default:
 		fprintf(stderr, "Congratulations! You're welcome to implement header version %d\n",
-- 
2.39.2




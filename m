Delivery-date: Tue, 10 Oct 2023 16:35:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDpM-003BOX-Ip
	for lore@lore.pengutronix.de; Tue, 10 Oct 2023 16:35:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDpG-0000Br-PH
	for lore@pengutronix.de; Tue, 10 Oct 2023 16:35:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KVstDDWfQw6QgwxMWXMXLKVqtglVTcJqRcD53TKBMtw=; b=SZNU8RufkVcVeYrGsludOvPzEV
	qsGWDNn7ZGuyMrkd+urdljwfgGed+j4reQyCtiDWeps2+y899+C6Ku8RSq4qqLvUywIU+zsqxgt12
	ptgiKrAvlToxCrqlid9yfRlJy086WnudWByvGwrYZL19IMmgj0yqA2PbPT2fQJtcz1Lhy6a6C6viQ
	T/DHNRrwS0b+9HSXiPraPJ89l/I9RMoqWmPVoWng2ELozBLV8Tn5D6imGYdxgd1TyAq2Vn8j0t1Hs
	6ZTkh0lv1u3ZxlzF4gQVS7YhwiEsFb1uGVg3Y5kwf0hY9slyhMlsj9Ai+sfczdjiz4tU+2C+M28pu
	0ckj5y1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnt-00DZnr-2Q;
	Tue, 10 Oct 2023 14:33:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDno-00DZgt-2Y
	for barebox@bombadil.infradead.org;
	Tue, 10 Oct 2023 14:33:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=KVstDDWfQw6QgwxMWXMXLKVqtglVTcJqRcD53TKBMtw=; b=Xb8/CE/Zwg01r6cjVRpzLFUoy6
	W0i7XFcfiSzBndPfhdP90uG/f0cf6Fzu+0ZpQP99Jg7p3X4kuMoE9uPovZS++se51gBpnSIRjr8Jo
	Vmo8FoOuoBrWh4drJEI7Ga+o3mdkjL2nZY7HowFMzlLduSAQDtRHI0diN+79jZPqziI3O/Lc0srOe
	3zMZgefDp4+N9WMKhHOkdEefj/mz8AS1QOujXhVGcx7djXTk29gSB2mEkXmlJsUMzkYabO5A8zaRe
	VCZK5Bm/aUpYTKmey3oPQjMmv4YPcqKkX1+0rY0j8tgzsAYeMroW0Pant5KtsHsT7TZ5HK2AMSW4+
	QQjN7Kpw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnh-00GvFv-0s
	for barebox@lists.infradead.org;
	Tue, 10 Oct 2023 14:33:39 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qqDnV-0007Dl-Kk
	for barebox@lists.infradead.org; Tue, 10 Oct 2023 16:33:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 10 Oct 2023 16:33:07 +0200
Message-Id: <20231010143314.2031253-20-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010143314.2031253-1-m.felsch@pengutronix.de>
References: <20231010143314.2031253-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_153334_869375_993B43B3 
X-CRM114-Status: GOOD (  10.01  )
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
Subject: [PATCH 19/26] scripts: imx-image: header_v2: add CSF slots
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Place the MMC/SD CSF data int slot-0 and the FlexSPI CSF data into
slot-1. This must be done since the MMC/SD and FlexSPI CSF data are
different.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
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




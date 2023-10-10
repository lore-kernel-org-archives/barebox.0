Delivery-date: Tue, 10 Oct 2023 16:35:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDpI-003BMs-Rs
	for lore@lore.pengutronix.de; Tue, 10 Oct 2023 16:35:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDpF-00009t-Fx
	for lore@pengutronix.de; Tue, 10 Oct 2023 16:35:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2ioacsNJGo234hq1+V1z0t0lVqVcchMvAOIN6d17Nyc=; b=xytlAd/36LT6L7VmdnFNRzWlsX
	Nh12hnqoBCL3b4lu166Us+HW8erWo9kAnN1ODTB6mrJWguM2WVoE0d2F4BamPThYVehpZWCABIh0e
	oDCoobfklUOD+y4N4eVBaT2x2xOliDB+QjdSxl3zbtwjFwaa1jGUcT0VCe8EF+8eNCwOgrwPyEEA4
	VOK2qOTu5O1JlI6DfXVXChVcswqK6Q1p8KwT9X5fuaYNBi2AcreceRJa6fs6iOV96ny3492GbbJgu
	Gvwxgbfha5WZIKYqZbROyD39/WU/NfS2qhGVNcwQoBkCcXmU4bB8+/9dIcWZgFGxcHz35twu/w+sc
	BzPovUkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnq-00DZjA-0E;
	Tue, 10 Oct 2023 14:33:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnm-00DZdA-01
	for barebox@bombadil.infradead.org;
	Tue, 10 Oct 2023 14:33:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=2ioacsNJGo234hq1+V1z0t0lVqVcchMvAOIN6d17Nyc=; b=FzfXmZptjeCvr+xxvqp5JpFueE
	RufJgVzhQzCRsfB0swBQdOFLvN/LeK8GiBN7D+71UVJPnXCbPwx+6WNoX9QOiiLDK7yzLtTpzVlG6
	4Qi6lUWpNvcYEJroHP/QW4YktdKUOBdJIkvdPbs9yMjJs70UmmbCwhGIxz0RajzR3asYzGJTM5eM0
	hKkk5HxKUJYe2hCULeakk7vVlNhT9j/l6Y9SUByi1d5KBTVuuoKA5CNfUF3BHGY+OgeoxDu6mKUmU
	UhGfzQpLG7sbpn/eZD951z/7zHzW2/z2HshGHp/ZqOE8+X/S4OCYCtY+YCJqiR7gGEE+quEWO4NkJ
	pwVz7e7A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDng-00GvFx-2I
	for barebox@lists.infradead.org;
	Tue, 10 Oct 2023 14:33:36 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qqDnV-0007Dl-Jo
	for barebox@lists.infradead.org; Tue, 10 Oct 2023 16:33:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 10 Oct 2023 16:33:06 +0200
Message-Id: <20231010143314.2031253-19-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010143314.2031253-1-m.felsch@pengutronix.de>
References: <20231010143314.2031253-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_153334_445228_E425AD85 
X-CRM114-Status: GOOD (  10.81  )
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
Subject: [PATCH 18/26] scripts: imx: add imx8m_get_offset_size helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

No functional change, just move the offset and signed_size calculation
into a dedicated helper.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 scripts/imx/imx.c | 28 ++++++++++++++++++----------
 1 file changed, 18 insertions(+), 10 deletions(-)

diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index b3c13510af84..933019eba449 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -325,6 +325,22 @@ static int do_hab(struct config_data *data, int argc, char *argv[])
 	return 0;
 }
 
+static void
+imx8m_get_offset_size(struct config_data *data,
+		      uint32_t *offset, uint32_t *signed_length)
+{
+	unsigned int hdrlen = HEADER_LEN;
+
+	if (flexspi_image(data))
+		hdrlen += FLEXSPI_HEADER_LEN;
+
+	*signed_size = roundup(data->pbl_code_size + hdrlen, 0x1000);
+
+	*offset += data->header_gap;
+	if (data->signed_hdmi_firmware_file)
+		*offset += PLUGIN_HDMI_SIZE;
+}
+
 static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
 {
 	char *str;
@@ -332,7 +348,6 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
 	int i;
 	uint32_t signed_size = data->load_size;
 	uint32_t offset = data->image_ivt_offset;
-	unsigned int hdrlen = HEADER_LEN;
 
 	if (!data->csf)
 		return -EINVAL;
@@ -347,15 +362,8 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
 	/*
 	 * Ensure we only sign the PBL for i.MX8MQ
 	 */
-	if (data->pbl_code_size && cpu_is_mx8m(data)) {
-		if (flexspi_image(data))
-			hdrlen += FLEXSPI_HEADER_LEN;
-
-		offset += data->header_gap;
-		signed_size = roundup(data->pbl_code_size + hdrlen, 0x1000);
-		if (data->signed_hdmi_firmware_file)
-			offset += PLUGIN_HDMI_SIZE;
-	}
+	if (data->pbl_code_size && cpu_is_mx8m(data))
+		imx8m_get_offset_size(data, &offset, &signed_size)
 
 	if (signed_size > 0) {
 		ret = asprintf(&str, "Blocks = 0x%08x 0x%08x 0x%08x \"%s\"",
-- 
2.39.2




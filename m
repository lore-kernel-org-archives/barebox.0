Delivery-date: Tue, 17 Oct 2023 16:56:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslUH-00Bsnd-05
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 16:56:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslUE-0004dq-Qu
	for lore@pengutronix.de; Tue, 17 Oct 2023 16:56:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wflvHwiWtaVvODoaYF+li50RCZWh8WcPjdBq8vq9eyY=; b=LchVcM9bV1OArw7TV0wNs7JL6t
	YP1x+q5VsgEX96b00AK3k9AbIzFkHAe9WWbi+M/NH/E92aaDBp89OAfwPsJZEoHKA/k4lSVLbLL0e
	SfaEsaA83j5gisGv4/u8Lsq+m99gnFzYSItFUZO/o+tNVdxcSusvIq2GxeqhY/DARrvJRi4OWXRww
	DkzcsA0FBHRCeXxOlSX4E1UC+sD51yiNVSeL91ZmyGXi8hcQFjuM2tTsXInHG98sfNACN02bXItOL
	DFvMWvDz6uF0kj97UA5y/A4mTgzL33WiJWOugPf0Qt3KkfEUmQpEJQiCbxbbszCQLDfB8UfJYdFZw
	VfsTeTuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qslT0-00CfQ0-2V;
	Tue, 17 Oct 2023 14:54:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQG-00Cci4-0J
	for barebox@bombadil.infradead.org;
	Tue, 17 Oct 2023 14:51:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=wflvHwiWtaVvODoaYF+li50RCZWh8WcPjdBq8vq9eyY=; b=IWOQPbp0Wh9XP5Ye0TWvQ5v7nc
	YcgK6O/ZoQGNk0WiCwsit5+MEQz++sKLzGhPZAQzh9JDCchh6mUFPB6GsLOTK9CoDBwUQryzMufYd
	7Hnq9CsKaKCHpkh+pRMESF5YQJFzEIFqSXoODwbnKe3kZNafjFQ0wKgBOqjY3mE/GGa6ANWN9RlbJ
	jgCjRutEUMzk4ueGoc4Hv8f0FnYuXrGlptoO5TWYSSrChVpXSwM0qoNlsCkvxMt9XwXMZdJr6QVR4
	/0ZzHZNRr7J3PFRUDes2O0TE4TvM8eDuWVCo2VWlRV6sDNBrBBSpOcULwLZap+TfH/7EYaZBorS+0
	Jcdm+XMw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQ8-007AEe-0M
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 14:51:50 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qslPy-0001wJ-Vd
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 16:51:34 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 17 Oct 2023 16:51:20 +0200
Message-Id: <20231017145131.3069283-19-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231017145131.3069283-1-m.felsch@pengutronix.de>
References: <20231017145131.3069283-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_155144_277419_984BA77B 
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
Subject: [PATCH v2 18/29] scripts: imx: add imx8m_get_offset_size helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

No functional change, just move the offset and signed_size calculation
into a dedicated helper.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v2:
- unchanged
- v1-link: https://lore.barebox.org/barebox/20231010143314.2031253-1-m.felsch@pengutronix.de/T/#t

 scripts/imx/imx.c | 29 ++++++++++++++++++-----------
 1 file changed, 18 insertions(+), 11 deletions(-)

diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 3cfa046504e3..933019eba449 100644
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
@@ -346,17 +362,8 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
 	/*
 	 * Ensure we only sign the PBL for i.MX8MQ
 	 */
-	if (data->pbl_code_size && cpu_is_mx8m(data)) {
-		unsigned int hdrlen = HEADER_LEN;
-
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




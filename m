Delivery-date: Tue, 17 Oct 2023 16:56:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslUh-00Bsq0-IT
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 16:56:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslUg-00053S-Aa
	for lore@pengutronix.de; Tue, 17 Oct 2023 16:56:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zvo7ur4PziJUXeLaX56TCPnNPqygpVJ5KZgpd/WM/oI=; b=avSa11w7/ZTD6F2YgOyhcU00Xf
	EXgoUIQ8wEto9Bq5amEsDJah1e4uvwUDObuRSkwMt+VRrAZjXglnklC5T/1CjTfh48ub5vfOSjD8W
	MWq9W6Y5uE1yWlSrp8iMuAosE5GdS4OoCF6fn/p8Nt6mpkGI7XKT2SloKmEXqME7G4NbolgBTzwSo
	ja6d9+S0YsAClbmnC7NSaqx0je56BPZ9zqhaFFxSX+u/Ymx0/W+Ldh0r0kCSwIyy1t/wkNdwtJ+8Q
	lHKas/pW5xBetSKhHiyDXeSL9b5BF+xRRILdq6K30AWmePEdLUaQNcqf4u7xyL6TE52425UwZpy/n
	qr/hd18w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qslTU-00CffW-0U;
	Tue, 17 Oct 2023 14:55:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQH-00Cck4-1p
	for barebox@bombadil.infradead.org;
	Tue, 17 Oct 2023 14:51:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=zvo7ur4PziJUXeLaX56TCPnNPqygpVJ5KZgpd/WM/oI=; b=VT5Pez8tVWAxMbgG3zRxRK6HLJ
	C9d4qlzZ69441ZHVhlRU3Eq8N+heCINaUScFN18FvQDlBP0aj0kdUNm6bBR1Nj0Suwq9O9ROsOKhT
	zwMywhLCzs9zo3BtQUvKwyWyCC4qzTMAYC6NZ78SVzWp40tXlAxTpcRlGLp2XzvwX8M4clvZSdazv
	9ukmr45dg0HuFK8/uBFLp5vkUabJeS69L3ZHCdIIK0m03DHsfRZIOsUMMnllVIo1BWOdWhzujGlvh
	PAOCoLNt5kh+xU0uM4hz3VdSHVDTCK8WfjRI7kpfUqmo+t1W2zOT51KVn3aXd5XFTsJXwwf4EWAAW
	PLL3RkEA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQ8-007AEf-0X
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 14:51:52 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qslPz-0001wJ-4M
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 16:51:35 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 17 Oct 2023 16:51:24 +0200
Message-Id: <20231017145131.3069283-23-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231017145131.3069283-1-m.felsch@pengutronix.de>
References: <20231017145131.3069283-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_155144_313243_7E7F0151 
X-CRM114-Status: GOOD (  12.01  )
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
Subject: [PATCH v2 22/29] scripts: imx: add hab_qspi support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add 'hab_qspi' command which can be specified by .imxcfg board config
files to request building HAB compatible QSPI images.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v2:
- new patch
- v1-link: https://lore.barebox.org/barebox/20231010143314.2031253-1-m.felsch@pengutronix.de/T/#t

 include/mach/imx/imx-header.h |  1 +
 scripts/imx/imx.c             | 20 ++++++++++++++++++++
 2 files changed, 21 insertions(+)

diff --git a/include/mach/imx/imx-header.h b/include/mach/imx/imx-header.h
index 372dee6cb8e9..d0381f4763ee 100644
--- a/include/mach/imx/imx-header.h
+++ b/include/mach/imx/imx-header.h
@@ -120,6 +120,7 @@ struct config_data {
 	char *signed_hdmi_firmware_file;
 	int encrypt_image;
 	size_t dek_size;
+	bool hab_qspi_support;
 };
 
 #define MAX_RECORDS_DCD_V2 1024
diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 50f44d5cb896..12c0df063469 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -299,6 +299,23 @@ static int do_max_load_size(struct config_data *data, int argc, char *argv[])
 	return 0;
 }
 
+static int do_hab_qspi(struct config_data *data, int argc, char *argv[])
+{
+	/*
+	 * Force 'hab_qspi' to specified before any 'hab' to ensure correct CSF
+	 * generation.
+	 */
+	if (data->csf) {
+		fprintf(stderr,
+			"'hab_qspi' must be specified before any 'hab' command\n");
+		return -EINVAL;
+	}
+
+	data->hab_qspi_support = true;
+
+	return 0;
+}
+
 static int hab_add_str(struct config_data *data, const char *str)
 {
 	data->csf = strcata(data->csf, str);
@@ -709,6 +726,9 @@ struct command cmds[] = {
 	}, {
 		.name = "hab_encrypt_blocks",
 		.parse = do_hab_encrypt_blocks,
+	}, {
+		.name = "hab_qspi",
+		.parse = do_hab_qspi,
 	}, {
 		.name = "super_root_key",
 		.parse = do_super_root_key,
-- 
2.39.2




Delivery-date: Thu, 12 Mar 2026 15:45:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hIL-00ArRt-38
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 15:45:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hIK-00052L-Q9
	for lore@pengutronix.de; Thu, 12 Mar 2026 15:45:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pPCQXQ3BSm3G7QCD8dDn+FNUQIEzEBcJHE8aS1bPQ5c=; b=LQjte8VsYMzpEtjngEIcJ7Tt+j
	JOoNQFcQ05G05WKKAAmTU1S3cTqJQrvDGAEBs/0SERyJueFM0v4VF0UFrg+ICa2HjMj5v7UIpd2KV
	AxxaxvxQTEu727IBN5bomoM2gKJyL0yGEvgGGq5Jqhyce61gVCsglQbhlarSkDuyjq9bBzSdiAjH+
	odM2D1+ELPMz9lOuqerOXwn4Iup0PZtHknbdVgCU82ge6KZA4AyDtL2y+XujuQXHMEm8mjcls72YW
	fw0h0YQJHeAFGHS6euMg5m5F7DxJyvU6aXlMUMA0SxgqksDix7M5zX8l63YZHoiqvj6QSXP0KHMO5
	u5a7YrRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hHi-0000000EEq1-3KXW;
	Thu, 12 Mar 2026 14:45:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hHf-0000000EEm7-34yy
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 14:45:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHd-0004TE-Uz; Thu, 12 Mar 2026 15:45:05 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHc-0052Nw-1J;
	Thu, 12 Mar 2026 15:45:05 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHd-000000093tN-2mcg;
	Thu, 12 Mar 2026 15:45:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Mar 2026 15:44:45 +0100
Message-ID: <20260312144505.2159816-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
References: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_074507_776697_091ABDD2 
X-CRM114-Status: GOOD (  12.98  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 02/16] bootm: split preparatory step from handler invocation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The override handling is currently embedded very deep inside the bootm
code, despite that configuring overrides is only possible from the
boot command. With the switch to a generic loadable abstraction, it will
be possible to switch out loadable objects and avoid this invasiveness,
so prepare for that by splitting the part that would register loadables
from the part that would actually load them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm.c  | 44 +++++++++++++++++++++++++++++++++++---------
 include/bootm.h |  6 +++++-
 2 files changed, 40 insertions(+), 10 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index d43079bb81da..a10f3a4ea9dc 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -569,19 +569,15 @@ int file_read_and_detect_boot_image_type(const char *os_file, void **os_header)
 	return file_detect_boot_image_type(*os_header, PAGE_SIZE);
 }
 
-/*
- * bootm_boot - Boot an application image described by bootm_data
- */
-int bootm_boot(struct bootm_data *bootm_data)
+struct image_data *bootm_boot_prep(const struct bootm_data *bootm_data)
 {
 	struct image_data *data;
-	struct image_handler *handler;
 	int ret;
 	const char *image_type_str;
 
 	if (!bootm_data->os_file) {
 		pr_err("no image given\n");
-		return -ENOENT;
+		return ERR_PTR(-ENOENT);
 	}
 
 	data = xzalloc(sizeof(*data));
@@ -759,6 +755,17 @@ int bootm_boot(struct bootm_data *bootm_data)
 		free(hostname_bootarg);
 	}
 
+	return data;
+err_out:
+	bootm_boot_cleanup(data);
+	return ERR_PTR(ret);
+}
+
+int bootm_boot_handler(struct image_data *data)
+{
+	struct image_handler *handler;
+	int ret;
+
 	pr_info("\nLoading %s '%s'", file_type_to_string(data->kernel_type),
 		data->os_file);
 	if (data->kernel_type == filetype_uimage &&
@@ -777,8 +784,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 		       file_type_to_string(data->kernel_type));
 		if (data->kernel_type == filetype_uimage)
 			pr_err("and OS type: %d\n", data->os_uimage->header.ih_os);
-		ret = -ENODEV;
-		goto err_out;
+		return -ENODEV;
 	}
 
 	if (bootm_verbose(data)) {
@@ -797,7 +803,11 @@ int bootm_boot(struct bootm_data *bootm_data)
 	if (data->dryrun)
 		pr_info("Dryrun. Aborted\n");
 
-err_out:
+	return ret;
+}
+
+void bootm_boot_cleanup(struct image_data *data)
+{
 	release_sdram_region(data->os_res);
 	if (data->initrd_res)
 		of_del_reserve_entry(data->initrd_res->start, data->initrd_res->end);
@@ -819,7 +829,23 @@ int bootm_boot(struct bootm_data *bootm_data)
 	free(data->initrd_file);
 	free(data->tee_file);
 	free(data);
+}
 
+/*
+ * bootm_boot - Boot an application image described by bootm_data
+ */
+int bootm_boot(const struct bootm_data *bootm_data)
+{
+	struct image_data *data;
+	int ret;
+
+	data = bootm_boot_prep(bootm_data);
+	if (IS_ERR(data))
+		return PTR_ERR(data);
+
+	ret = bootm_boot_handler(data);
+
+	bootm_boot_cleanup(data);
 	return ret;
 }
 
diff --git a/include/bootm.h b/include/bootm.h
index 21feb1ca98ae..da6cf7301709 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -52,7 +52,11 @@ struct bootm_data {
 	unsigned long os_entry;
 };
 
-int bootm_boot(struct bootm_data *data);
+int bootm_boot(const struct bootm_data *data);
+
+struct image_data *bootm_boot_prep(const struct bootm_data *bootm_data);
+int bootm_boot_handler(struct image_data *data);
+void bootm_boot_cleanup(struct image_data *data);
 
 struct image_data {
 	/* simplest case. barebox has already loaded the os here */
-- 
2.47.3




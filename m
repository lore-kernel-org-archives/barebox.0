Delivery-date: Mon, 09 Feb 2026 19:17:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpVor-00Adtl-0s
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 19:17:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpVoq-00076K-3J
	for lore@pengutronix.de; Mon, 09 Feb 2026 19:17:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y9MFq43toczmdqTmi4DZr60sl+1xogmy6FFTYHKVslc=; b=t+VwxvLdARff+C2TrK0OLtBPoi
	AHJELzHhZ8lDjHzGm9lTegQftyWgBmw5GAUGxtjPbch4DVfEJTezkaQxmn/0VezfohB1t4+RDzI1v
	PGRRC8Jsds/tBq+nvgzbgX7ZdC9W5bJjE8Zb6n3TA3UgeWA2nc1g1qVKT/uc8htaa/7urAQRwxdly
	yec+vkZxv5JUJd/ezSnfYTDDfby2PrLZxGqOLmnyXEpFpdMQkcq82/IlRkZsSo0fYkNLCGc/2iwHi
	xKAZWfOWHoC059hIrbm0JyDiSJ7/CWkDjH5U8y4NCMNyIq9NjaFaQCb9vKxIpWsAchHhgcT38Bal5
	B/1RYSnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpVoU-0000000Fquq-0ke8;
	Mon, 09 Feb 2026 18:16:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpVoQ-0000000Fqss-0bwK
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 18:16:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVoO-0006u5-Lf; Mon, 09 Feb 2026 19:16:40 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVoP-004vop-0T;
	Mon, 09 Feb 2026 19:16:40 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVjZ-00000008UJ4-2uQH;
	Mon, 09 Feb 2026 19:11:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Feb 2026 19:10:50 +0100
Message-ID: <20260209181138.2023065-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260209181138.2023065-1-a.fatoum@pengutronix.de>
References: <20260209181138.2023065-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_101642_209997_9B0B5075 
X-CRM114-Status: GOOD (  14.78  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 11/13] bootm: factor out file detection into helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Having this function callable on its own will come in handy once we add
boot.image override support as that would need to recompute the file
type.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm.c  | 39 ++++++++++++++++++++++++++++++---------
 include/bootm.h |  2 ++
 2 files changed, 32 insertions(+), 9 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 3c3523644b57..d43079bb81da 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -542,6 +542,33 @@ static int bootm_image_name_and_part(const char *name, char **filename, char **p
 	return 0;
 }
 
+/**
+ * file_read_and_detect_boot_image_type - read file header and detect image type
+ * @os_file: path to the boot image file
+ * @os_header: returns a PAGE_SIZE buffer with the file header (caller frees)
+ *
+ * Return: detected filetype (enum filetype) on success, negative error code
+ *         on failure. On error, *os_header is set to NULL.
+ */
+int file_read_and_detect_boot_image_type(const char *os_file, void **os_header)
+{
+	size_t size;
+	int ret;
+
+	ret = read_file_2(os_file, &size, os_header, PAGE_SIZE);
+	if (ret < 0 && ret != -EFBIG) {
+		pr_err("could not open %s: %pe\n", os_file, ERR_PTR(ret));
+		return ret;
+	}
+	if (size < PAGE_SIZE) {
+		free(*os_header);
+		*os_header = NULL;
+		return -ENODATA;
+	}
+
+	return file_detect_boot_image_type(*os_header, PAGE_SIZE);
+}
+
 /*
  * bootm_boot - Boot an application image described by bootm_data
  */
@@ -550,7 +577,6 @@ int bootm_boot(struct bootm_data *bootm_data)
 	struct image_data *data;
 	struct image_handler *handler;
 	int ret;
-	size_t size;
 	const char *image_type_str;
 
 	if (!bootm_data->os_file) {
@@ -574,15 +600,10 @@ int bootm_boot(struct bootm_data *bootm_data)
 	data->os_entry = bootm_data->os_entry;
 	data->efi_boot = bootm_data->efi_boot;
 
-	ret = read_file_2(data->os_file, &size, &data->os_header, PAGE_SIZE);
-	if (ret < 0 && ret != -EFBIG) {
-		pr_err("could not open %s: %pe\n", data->os_file, ERR_PTR(ret));
+	ret = file_read_and_detect_boot_image_type(data->os_file, &data->os_header);
+	if (ret < 0)
 		goto err_out;
-	}
-	if (size < PAGE_SIZE)
-		goto err_out;
-
-	data->image_type = file_detect_boot_image_type(data->os_header, PAGE_SIZE);
+	data->image_type = ret;
 
 	if (!data->force && data->image_type == filetype_unknown) {
 		pr_err("Unknown OS filetype (try -f)\n");
diff --git a/include/bootm.h b/include/bootm.h
index ef979807505d..21feb1ca98ae 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -186,4 +186,6 @@ bool bootm_efi_check_image(struct image_handler *handler,
 			   struct image_data *data,
 			   enum filetype detected_filetype);
 
+int file_read_and_detect_boot_image_type(const char *os_file, void **os_header);
+
 #endif /* __BOOTM_H */
-- 
2.47.3




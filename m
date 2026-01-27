Delivery-date: Tue, 27 Jan 2026 10:04:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkezz-005qKc-2C
	for lore@lore.pengutronix.de;
	Tue, 27 Jan 2026 10:04:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkezu-0004RL-Hr
	for lore@pengutronix.de; Tue, 27 Jan 2026 10:04:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/MM7CPLHf6rt8a5e3bnyQXTUF4WfYr2gtME41Yts/CA=; b=dIwgasGIQUoIsaLjY2cZbWZh8n
	0CpAuelKxHeWVLjELJ04qTvMjloON64PZ+QZRDomBEs/BmzUjqlzqHlZZKhZwnH2rBEydSWBbCtJf
	f12QONRGIyppCBV+A/PviskNDfsha52GdtiJsA3GsPk8B3HuKZ5tLGqMCte893BZG2nXkczbB/Nnl
	BUcxL4ykvA4O6Ci0kzjURWF7icYtZe+e0obXbXKhf+kNd0ltYQBzslLz3KvhNbRsaWYYwEO42z1ir
	rAdvpadifURD8hziCJ2Ixldc6/yfcqDwN6pagLMY2WNsdnU0t00DyCd9X7nbtC2K7NMXUYJ9MYKWT
	FNBKPP4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkezC-0000000Dtrj-38k6;
	Tue, 27 Jan 2026 09:03:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkez2-0000000DtmW-0P3k
	for barebox@lists.infradead.org;
	Tue, 27 Jan 2026 09:03:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkez0-00045b-Ij; Tue, 27 Jan 2026 10:03:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkez1-002iiL-07;
	Tue, 27 Jan 2026 10:03:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkeht-0000000FmwP-0vVE;
	Tue, 27 Jan 2026 09:45:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 27 Jan 2026 09:39:22 +0100
Message-ID: <20260127084546.3751357-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260127084546.3751357-1-a.fatoum@pengutronix.de>
References: <20260127084546.3751357-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_010336_137042_0DD13506 
X-CRM114-Status: GOOD (  12.52  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 12/15] bootm: factor out file detection into helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Having this function callable on its own will come in handy once we add
boot.image override support as that would need to recompute the file
type.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm.c | 32 ++++++++++++++++++++++----------
 1 file changed, 22 insertions(+), 10 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 7fe0afe24ce8..9e302da36ca6 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -543,6 +543,25 @@ static int bootm_image_name_and_part(const char *name, char **filename, char **p
 	return 0;
 }
 
+static int file_read_and_detect_boot_image_type(const char *os_file, void **os_header)
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
@@ -552,7 +571,6 @@ int bootm_boot(struct bootm_data *bootm_data)
 	struct image_data *data;
 	struct image_handler *handler;
 	int ret;
-	size_t size;
 	const char *image_type_str;
 
 	if (!bootm_data->os_file) {
@@ -577,16 +595,10 @@ int bootm_boot(struct bootm_data *bootm_data)
 	data->efi_boot = bootm_data->efi_boot;
 
 	os_file = xstrdup(data->os_file);
-
-	ret = read_file_2(os_file, &size, &data->os_header, PAGE_SIZE);
-	if (ret < 0 && ret != -EFBIG) {
-		pr_err("could not open %s: %pe\n", os_file, ERR_PTR(ret));
+	ret = file_read_and_detect_boot_image_type(os_file, &data->os_header);
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
-- 
2.47.3




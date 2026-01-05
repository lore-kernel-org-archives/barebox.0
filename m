Delivery-date: Mon, 05 Jan 2026 09:07:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfcw-001S1w-01
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 09:07:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfcv-0008AL-0p
	for lore@pengutronix.de; Mon, 05 Jan 2026 09:07:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=decKlBwPNw//ofKiugLbvnw0gW1kIH7vDHA05nfvX5I=; b=NwhBToZ8g+xKRQnwu8m5RhNA3U
	0yel95TBM8C05vEQvqPR98F0Y/zpAFLOjJS5BWyjohmcKORbQhV5jV/HgtTSOO3A7ElSb6Ubt9S2w
	C1LU9trtJX6Fr0OMH7TVsv+228n06iySH8NEoSyVZ6xG6U6IMm+YQHfGBUb0YGhJDWJHlPpYrjHDH
	rExTigVqzlwHoWAdGmvds/MwTeUx0uCGE6y1sOsUZ04VXqoHUn31wrqs3AAR20XqLeR+GZ5y4Y/he
	O/qvcQYW/XAlf7nA7xmodpK77PDfzAC/tsck3vgdtvNRvrc23FaiP7SZUh+2a3meTxGu6Lv5gROo5
	MvsKiLmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfcG-0000000Ax3E-2x1d;
	Mon, 05 Jan 2026 08:07:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfcB-0000000AwzM-3iP5
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 08:07:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vcfc8-0007f0-W4; Mon, 05 Jan 2026 09:06:57 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  5 Jan 2026 09:03:37 +0100
Message-ID: <20260105080653.3240497-6-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260105080653.3240497-1-a.fatoum@barebox.org>
References: <20260105080653.3240497-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_000659_921952_8A2C1AF3 
X-CRM114-Status: GOOD (  14.73  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 05/10] bootm: refactor for readability and extensibility
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The code is hard to follow with the gotos and the organically grown
ordering. Let's refactor it, so we can start putting a loop around it.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/bootm.c | 71 +++++++++++++++++++++++---------------------------
 1 file changed, 32 insertions(+), 39 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 1554a8f7f3f9..26fd8227f01f 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -280,61 +280,54 @@ int bootm_load_os(struct image_data *data, unsigned long load_address)
 const struct resource *
 bootm_load_initrd(struct image_data *data, unsigned long load_address)
 {
-	struct resource *res;
-	enum filetype type;
+	struct resource *res = NULL;
+	const char *initrd, *initrd_part = NULL;
+	enum filetype type = filetype_unknown;
 	int ret;
 
 	if (!IS_ENABLED(CONFIG_BOOTM_INITRD))
 		return NULL;
 
-	if (bootm_get_override(&data->initrd_file, bootm_overrides.initrd_file))
-		goto initrd_file;
-
-	if (data->initrd_res)
+	/* TODO: This should not be set anywhere, but in case it is, let's print
+	 * a warning to find out if we need this
+	 */
+	if (WARN_ON(data->initrd_res))
 		return data->initrd_res;
 
-	if (data->os_fit) {
-		res = bootm_load_fit_initrd(data, load_address);
-		if (IS_ERR(res))
-			return res;
-		if (res)
-			pr_info("Loaded initrd from FIT image\n");
+	bootm_get_override(&data->initrd_file, bootm_overrides.initrd_file);
 
-		goto done1;
-	}
-
-initrd_file:
-	if (!data->initrd_file)
-		return NULL;
-
-	ret = file_name_detect_type(data->initrd_file, &type);
-	if (ret) {
-		pr_err("could not open initrd \"%s\": %pe\n", data->initrd_file, ERR_PTR(ret));
-		return ERR_PTR(ret);
+	initrd = data->initrd_file;
+	if (initrd) {
+		ret = file_name_detect_type(initrd, &type);
+		if (ret) {
+			pr_err("could not open initrd \"%s\": %pe\n",
+			       initrd, ERR_PTR(ret));
+			return ERR_PTR(ret);
+		}
 	}
 
 	if (type == filetype_uimage) {
 		res = bootm_load_uimage_initrd(data, load_address);
-		if (IS_ERR(res))
-			return res;
+		if (data->initrd->header.ih_type == IH_TYPE_MULTI)
+			initrd_part = data->initrd_part;
+
+	} else if (initrd) {
+		res = file_to_sdram(initrd, load_address, MEMTYPE_LOADER_DATA)
+			?: ERR_PTR(-ENOMEM);
+
+	} else if (data->os_fit) {
+		res = bootm_load_fit_initrd(data, load_address);
+		type = filetype_fit;
 
-		goto done;
 	}
 
-	res = file_to_sdram(data->initrd_file, load_address, MEMTYPE_LOADER_DATA);
-	if (!res)
-		return ERR_PTR(-ENOMEM);
+	if (IS_ERR_OR_NULL(res))
+		return res;
 
-done:
-
-	pr_info("Loaded initrd %s '%s'", file_type_to_string(type),
-	       data->initrd_file);
-	if (type == filetype_uimage && data->initrd->header.ih_type == IH_TYPE_MULTI)
-		pr_info(", multifile image %s", data->initrd_part);
-	pr_info("\n");
-done1:
-	if (res)
-		pr_info("initrd is at %pa-%pa\n", &res->start, &res->end);
+	pr_info("Loaded initrd from %s %s%s%s to %pa-%pa\n",
+		file_type_to_string(type), initrd,
+		initrd_part ? "@" : "", initrd_part ?: "",
+		&res->start, &res->end);
 
 	data->initrd_res = res;
 	return data->initrd_res;
-- 
2.47.3




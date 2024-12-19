Delivery-date: Thu, 19 Dec 2024 12:16:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOEWC-00A0zP-2q
	for lore@lore.pengutronix.de;
	Thu, 19 Dec 2024 12:16:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOEWC-0001sA-PA
	for lore@pengutronix.de; Thu, 19 Dec 2024 12:16:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tOW5Mrc8xOZwE6fCzE5dlP5ZzqqMuI4IS+apvIFbtk0=; b=SxmJ/IgvnHI9FZks6tNagHjXgL
	LQeIjMYViDKoEqW08ULB6NBEUAl7IO7E5szMa8CmZwUYnWS4fLNjEDBuj+ciWxHse5gCMVppAZtPO
	6NS/orjxAGRaIDkUofioUOlrnlxiMlMp8AYcK8/0LvNXfdE+CuOB87KoEm7n+p6PyZ1B+FufKhdW1
	g4zIVdwvajh6r2hGU/WzVpm2SCLtlGjsw4jMhTxUd83c9J9FG8kCSnD+TyltwlNz71SwWdT7YasU0
	DKLJTWt7jXaCbK0fQg0H93llpkFheD//a14Yknc8NrtII5r28v2mOzXNJ8u/if/ju+7hPSeNJP10U
	tRVVlxRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOEVo-00000001dQX-2rfn;
	Thu, 19 Dec 2024 11:16:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOEVh-00000001dNQ-3OTl
	for barebox@lists.infradead.org;
	Thu, 19 Dec 2024 11:16:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tOEVg-0001dh-EK; Thu, 19 Dec 2024 12:16:04 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tOEVf-004CBD-1Y;
	Thu, 19 Dec 2024 12:16:04 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tOEVg-004HTI-0X;
	Thu, 19 Dec 2024 12:16:04 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 19 Dec 2024 12:16:03 +0100
Message-Id: <20241219111603.1020442-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241219111603.1020442-1-a.fatoum@pengutronix.de>
References: <20241219111603.1020442-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_031605_844638_A19E663F 
X-CRM114-Status: GOOD (  13.61  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] FIT: cache uncompressed data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If we decompress the FIT FDT once to check the compatible, it makes
sense to keep the decompressed data around as not to decompress the FIT
again later.

Do this by not directly deleting the uncompressed-data property again and
give it a $ prefix, so FIT images can't provide this data themselves.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/image-fit.c | 25 ++++++++++++++-----------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 9e3dbe9ae054..58ce461623e6 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -576,6 +576,7 @@ static int fit_handle_decompression(struct device_node *image,
 				    int *data_len)
 {
 	const char *compression = NULL;
+	struct property *pp;
 	void *uc_data;
 	int ret;
 
@@ -595,18 +596,21 @@ static int fit_handle_decompression(struct device_node *image,
 		return -ENOSYS;
 	}
 
-	ret = uncompress_buf_to_buf(*data, *data_len, &uc_data,
-				    fit_uncompress_error_fn);
-	if (ret < 0) {
-		pr_err("%s data couldn't be decompressed\n", compression);
-		return ret;
+	pp = of_find_property(image, "$uncompressed-data", NULL);
+	if (!pp) {
+		ret = uncompress_buf_to_buf(*data, *data_len, &uc_data,
+					    fit_uncompress_error_fn);
+		if (ret < 0) {
+			pr_err("%s data couldn't be decompressed\n", compression);
+			return ret;
+		}
+
+		/* associate buffer with FIT, so it's not leaked */
+		pp = __of_new_property(image, "$uncompressed-data", uc_data, ret);
 	}
 
-	*data = uc_data;
-	*data_len = ret;
-
-	/* associate buffer with FIT, so it's not leaked */
-	__of_new_property(image, "uncompressed-data", uc_data, *data_len);
+	*data = of_property_get_value(pp);
+	*data_len = pp->length;
 
 	return 0;
 }
@@ -762,7 +766,6 @@ static int fit_find_compatible_unit(struct fit_handle *handle,
 
 			score = fdt_machine_is_compatible(data, data_len, machine);
 
-			of_delete_property_by_name(image, "uncompressed-data");
 next:
 			if (ret)
 				pr_warn("skipping malformed configuration: %pOF (%pe)\n",
-- 
2.39.5




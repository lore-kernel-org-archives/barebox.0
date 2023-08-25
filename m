Delivery-date: Fri, 25 Aug 2023 12:24:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZTzD-008LG4-UJ
	for lore@lore.pengutronix.de; Fri, 25 Aug 2023 12:24:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZTzB-0005qv-Le
	for lore@pengutronix.de; Fri, 25 Aug 2023 12:24:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BzI5bWTlMEMAB2ju94fIrbCPmg4xh1kaizmysvygfD4=; b=RF0lCil3cb7vR2hxzuM/hKCNn0
	fulBlsFlQ7A8l/m26yTJ+aZAElxLwrKuIlOJtdI6gQtELHwLgNwn2yzt6/LfOElCWLeGKKv/ONpR/
	PWHUDpqYtERCLEYhieHu387w0cxf1bTL/BYAB5f3fIi3fCnz4Q+yvi7o/XrhPgfkG1F142x3NRT7j
	Gd6brqzGIuOwOVQPHXjCs8wARBHcAok1kguawI2nhL5cF6OntQvWCZleSgkydvqDHFAxsdyyfuNvg
	SqeNNtlYGjbq8LGqN4F0Sf8ylBqhP5+TVM2zpUD3pSGzEmQSQOvLfcrYbNIo6FdnPNnOEgfWnkXfw
	IuQE8FPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZTy1-004oGW-0I;
	Fri, 25 Aug 2023 10:23:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZTxy-004oFi-1B
	for barebox@lists.infradead.org;
	Fri, 25 Aug 2023 10:22:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qZTxv-0005is-4G; Fri, 25 Aug 2023 12:22:55 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qZTxu-001UMi-Fu; Fri, 25 Aug 2023 12:22:54 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qZTxt-00HaMF-16;
	Fri, 25 Aug 2023 12:22:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 25 Aug 2023 12:22:45 +0200
Message-Id: <20230825102246.4189465-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_032258_403807_CD1FB15C 
X-CRM114-Status: GOOD (  14.11  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] FIT: refactor compression handling into separate function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There are four conditions that need to be true for successful decompression
and the follow-up commit will add one more. Thus split off the compression
handling to aid readability.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/image-fit.c | 62 ++++++++++++++++++++++++++++------------------
 1 file changed, 38 insertions(+), 24 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index af9b2a94793c..9ceebde02931 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -564,6 +564,40 @@ static void fit_uncompress_error_fn(char *x)
 	pr_err("%s\n", x);
 }
 
+static int fit_handle_decompression(struct device_node *image,
+				    const void **data,
+				    int *data_len)
+{
+	const char *compression = NULL;
+	void *uc_data;
+	int ret;
+
+	of_property_read_string(image, "compression", &compression);
+	if (!compression || !strcmp(compression, "none"))
+		return 0;
+
+	if (!IS_ENABLED(CONFIG_UNCOMPRESS)) {
+		pr_err("image has compression = \"%s\", but support not compiled in\n",
+		       compression);
+		return -ENOSYS;
+	}
+
+	ret = uncompress_buf_to_buf(*data, *data_len, &uc_data,
+				    fit_uncompress_error_fn);
+	if (ret < 0) {
+		pr_err("data couldn't be decompressed\n");
+		return ret;
+	}
+
+	*data = uc_data;
+	*data_len = ret;
+
+	/* associate buffer with FIT, so it's not leaked */
+	__of_new_property(image, "uncompressed-data", uc_data, *data_len);
+
+	return 0;
+}
+
 /**
  * fit_open_image - Open an image in a FIT image
  * @handle: The FIT image handle
@@ -586,8 +620,7 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
 		   unsigned long *outsize)
 {
 	struct device_node *image;
-	const char *unit = name, *type = NULL, *compression = NULL,
-	      *desc= "(no description)";
+	const char *unit = name, *type = NULL, *desc= "(no description)";
 	const void *data;
 	int data_len;
 	int ret = 0;
@@ -619,28 +652,9 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
 	if (ret < 0)
 		return ret;
 
-	of_property_read_string(image, "compression", &compression);
-	if (compression && strcmp(compression, "none") != 0) {
-		void *uc_data;
-
-		if (!IS_ENABLED(CONFIG_UNCOMPRESS)) {
-			pr_err("image has compression = \"%s\", but support not compiled in\n",
-			       compression);
-			return -ENOSYS;
-		}
-
-		data_len = uncompress_buf_to_buf(data, data_len, &uc_data,
-					    fit_uncompress_error_fn);
-		if (data_len < 0) {
-			pr_err("data couldn't be decompressed\n");
-			return data_len;
-		}
-
-		data = uc_data;
-
-		/* associate buffer with FIT, so it's not leaked */
-		__of_new_property(image, "uncompressed-data", uc_data, data_len);
-	}
+	ret = fit_handle_decompression(image, &data, &data_len);
+	if (ret)
+		return ret;
 
 	*outdata = data;
 	*outsize = data_len;
-- 
2.39.2




Delivery-date: Fri, 14 Feb 2025 12:43:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiu6j-002Fff-2I
	for lore@lore.pengutronix.de;
	Fri, 14 Feb 2025 12:43:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiu6i-0006Dp-Fa
	for lore@pengutronix.de; Fri, 14 Feb 2025 12:43:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZFD4FNdBw3wZ9ZDEe2LvkCJgrxBVwuDvLwwzZYi7jSc=; b=qG2u5vOKj37WNSJxaN6NHLn3aJ
	gWFJoxoAdkZvUPMFFF9dlhtoa5Thyn3Shs+zzCkOdvD8x1J4EXiRx0Q5Pk4OofmZSBNOdag/N3MXJ
	YhZlovmuD3HLggkI5RKq4e6Xx0AggAh2i56+b7jJSSmzQEihGs4q36eSzYCeLz191VAIhaeFILZ6o
	38ADZ2tJpX0LxfnUpCoF+ccKVdrX6DXckTquwW+JFIyY2MzVYF/qy9gFzlwkH6J63yQy67npPeiHb
	ukFjIDah0D2gIUVhWTmtr07JZxWZ7n3MOQZqtBrPTk8td2wdSzKUhSofeanvdIgNRzN5+7s9li9eB
	kWZgeU0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiu6C-0000000EidH-0DyI;
	Fri, 14 Feb 2025 11:43:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1titnO-0000000Ef0O-2uaU
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 11:23:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titnN-000398-5O; Fri, 14 Feb 2025 12:23:45 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titnM-000uO3-3A;
	Fri, 14 Feb 2025 12:23:44 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titnM-00Cul5-2s;
	Fri, 14 Feb 2025 12:23:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Feb 2025 12:23:42 +0100
Message-Id: <20250214112343.3076535-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_032346_730465_7D48DE2F 
X-CRM114-Status: GOOD (  11.25  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/2] FIT: factor out fit_fdt_is_compatible for readability
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This introduces no functional change, but makes the code inside
fit_find_compatible_unit() more readable.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/image-fit.c | 67 +++++++++++++++++++++++++---------------------
 1 file changed, 36 insertions(+), 31 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 58ce461623e6..e05161379d04 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -719,6 +719,40 @@ static int fit_config_verify_signature(struct fit_handle *handle, struct device_
 	return ret;
 }
 
+static int fit_fdt_is_compatible(struct fit_handle *handle,
+				 struct device_node *child,
+				 const char *machine)
+{
+	struct device_node *image;
+	const char *unit = "fdt";
+	int data_len;
+	const void *data;
+	int ret;
+
+	if (of_property_present(child, "compatible"))
+		return 0;
+	if (!of_property_present(child, "fdt"))
+		return 0;
+
+	ret = fit_get_image(handle, child, &unit, &image);
+	if (ret)
+		goto err;
+
+	data = of_get_property(image, "data", &data_len);
+	if (!data)
+		goto err;
+
+	ret = fit_handle_decompression(image, "fdt", &data, &data_len);
+	if (ret)
+		goto err;
+
+	return fdt_machine_is_compatible(data, data_len, machine);
+err:
+	pr_warn("skipping malformed configuration \"%pOF\"\n",
+		child);
+	return 0;
+}
+
 static int fit_find_compatible_unit(struct fit_handle *handle,
 				    struct device_node *conf_node,
 				    const char **unit)
@@ -740,37 +774,8 @@ static int fit_find_compatible_unit(struct fit_handle *handle,
 	for_each_child_of_node(conf_node, child) {
 		int score = of_device_is_compatible(child, machine);
 
-		if (!score && !of_property_present(child, "compatible") &&
-		    of_property_present(child, "fdt")) {
-			struct device_node *image;
-			const char *unit = "fdt";
-			int data_len;
-			const void *data;
-			int ret;
-
-			ret = fit_get_image(handle, child, &unit, &image);
-			if (ret)
-				goto next;
-
-			data = of_get_property(image, "data", &data_len);
-			if (!data) {
-				ret = -EINVAL;
-				goto next;
-			}
-
-			ret = fit_handle_decompression(image, "fdt", &data, &data_len);
-			if (ret) {
-				ret = -EILSEQ;
-				goto next;
-			}
-
-			score = fdt_machine_is_compatible(data, data_len, machine);
-
-next:
-			if (ret)
-				pr_warn("skipping malformed configuration: %pOF (%pe)\n",
-					child, ERR_PTR(ret));
-		}
+		if (!score)
+			score = fit_fdt_is_compatible(handle, child, machine);
 
 		if (score > best_score) {
 			best_score = score;
-- 
2.39.5




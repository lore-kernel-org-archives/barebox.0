Delivery-date: Fri, 14 Feb 2025 12:43:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiu6j-002Ffh-2V
	for lore@lore.pengutronix.de;
	Fri, 14 Feb 2025 12:43:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiu6i-0006Dq-Fn
	for lore@pengutronix.de; Fri, 14 Feb 2025 12:43:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ExNd6213jsur4MY6aJoZLMWjakC25WS9lX9YeoiX2Mk=; b=y6riL9+110xDkaPsFGDit4com4
	FjR1xd1ZkbiNjB7CcHImvSOsIJ4ajLg7eB6ZOFt0GS+Ff58bmyQ1su8AcrVndFkizKDKws8anPL13
	v64BcOOKEiTOzYcVnx1Hr1MuYBaftHyOH/BGu1M6h/t3IjfZM/UDxYS2qj2Fs9/BAyRvzgRTpAABO
	O6j9iUTaxRt6X06JeoEdqyZfhwLDYzxImM3D2lmnYhV8Z9IGsQc2YHiPin6ykKrbs59kMk3VzSlxG
	sZ4N/Xpq/rFgaEhOlDZUffiymqm0MPYt/wVK4WAE3UQ6ECY8Egm+2hRNCqvVuuLxmlWv1sk71+3q7
	5R3Q6gUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiu6C-0000000EidO-2DyD;
	Fri, 14 Feb 2025 11:43:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1titnO-0000000Ef0N-2uOh
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 11:23:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titnN-000399-6X; Fri, 14 Feb 2025 12:23:45 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titnN-000uO4-04;
	Fri, 14 Feb 2025 12:23:45 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titnM-00Cul5-31;
	Fri, 14 Feb 2025 12:23:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Feb 2025 12:23:43 +0100
Message-Id: <20250214112343.3076535-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250214112343.3076535-1-a.fatoum@pengutronix.de>
References: <20250214112343.3076535-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_032346_729733_E0379BF3 
X-CRM114-Status: GOOD (  13.69  )
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
Subject: [PATCH master 2/2] FIT: do not decompress device trees to find compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Uncompressing all FDTs just to look up the compatible is detrimental to
boot speed and negatively impacts security. Let's thus throw an error
and expect users to specify a compatible property in the configuration
or just refrain from compressing their DTs.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/image-fit.c | 37 ++++++++++++++++++++++++++++++-------
 1 file changed, 30 insertions(+), 7 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index e05161379d04..959384abd275 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -570,18 +570,29 @@ static void fit_uncompress_error_fn(char *x)
 	pr_err("%s\n", x);
 }
 
+static const char *get_compression_type(struct device_node *image)
+{
+	const char *compression = NULL;
+
+	of_property_read_string(image, "compression", &compression);
+	if (!compression || !strcmp(compression, "none"))
+		return NULL;
+
+	return compression;
+}
+
 static int fit_handle_decompression(struct device_node *image,
 				    const char *type,
 				    const void **data,
 				    int *data_len)
 {
-	const char *compression = NULL;
+	const char *compression;
 	struct property *pp;
 	void *uc_data;
 	int ret;
 
-	of_property_read_string(image, "compression", &compression);
-	if (!compression || !strcmp(compression, "none"))
+	compression = get_compression_type(image);
+	if (!compression)
 		return 0;
 
 	if (!strcmp(type, "ramdisk")) {
@@ -723,6 +734,7 @@ static int fit_fdt_is_compatible(struct fit_handle *handle,
 				 struct device_node *child,
 				 const char *machine)
 {
+	const char *reason = "malformed";
 	struct device_node *image;
 	const char *unit = "fdt";
 	int data_len;
@@ -742,14 +754,25 @@ static int fit_fdt_is_compatible(struct fit_handle *handle,
 	if (!data)
 		goto err;
 
-	ret = fit_handle_decompression(image, "fdt", &data, &data_len);
-	if (ret)
+	/* We have three options here:
+	 *
+	 * 1) Increase our attack surface by all supported compression algos
+	 * 2) Verify all configurations in the image as we search for best
+	 *    OF match score
+	 * 3) Blame the user and expect them to supply a compatible property
+	 *    in the configuration node if they want to compress their FDTs
+	 *
+	 * We go for option 3.
+	 */
+	if (get_compression_type(image)) {
+		reason = "compressed";
 		goto err;
+	}
 
 	return fdt_machine_is_compatible(data, data_len, machine);
 err:
-	pr_warn("skipping malformed configuration \"%pOF\"\n",
-		child);
+	pr_warn("skipping %s configuration \"%pOF\"\n",
+		reason, child);
 	return 0;
 }
 
-- 
2.39.5




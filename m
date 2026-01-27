Delivery-date: Tue, 27 Jan 2026 09:46:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkeie-005q6M-2w
	for lore@lore.pengutronix.de;
	Tue, 27 Jan 2026 09:46:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkeid-00011j-Ix
	for lore@pengutronix.de; Tue, 27 Jan 2026 09:46:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oGlDVpferu/DsUaKasZQWqhbLK87Ev/tE13U7gDpS5M=; b=bMDT/XyIE56Y35BQYGWUQbc3AG
	WKp3tpwpbwsDUgRV9NQrH1dkb6yhUKeOCDztvcjDzs/jWuk6CK9f4ZgAuy8SU6LIUprZfCocRUXvw
	CzAPaUoyiGT7r7j8gHhrC8BFAWN8at8ZffiFAQWzXTiwladOMeZ+l122EUBNPeT+HpHG2gfS/Mpjk
	L0vT33FUyw4X3BBUF2eyOebABXsQFmJTGRxUySLVBzPI5sJgyOmM9RP9ePTiPl5q7Li4Stf982Cm3
	5a9mvigegTr3o8xcGu5OQYI6sPcAfMs1gUw4j7ynDTkBnu037FgeBHLbmAAOk2Cbvasfm0RIJ3s21
	B5PYxldw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkei1-0000000DrPa-1U18;
	Tue, 27 Jan 2026 08:46:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkehu-0000000DrDj-1Lwl
	for barebox@lists.infradead.org;
	Tue, 27 Jan 2026 08:45:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkehs-0000Vi-Fd; Tue, 27 Jan 2026 09:45:52 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkehs-002ifg-37;
	Tue, 27 Jan 2026 09:45:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkehs-0000000FmwP-313K;
	Tue, 27 Jan 2026 09:45:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 27 Jan 2026 09:39:11 +0100
Message-ID: <20260127084546.3751357-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260127084546.3751357-1-a.fatoum@pengutronix.de>
References: <20260127084546.3751357-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_004554_691068_B219585C 
X-CRM114-Status: GOOD (  11.78  )
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
Subject: [PATCH 01/15] FIT: implement fit_count_images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A FIT image can contain multiple images of the same type, e.g. a device
tree followed by overlays or multiple initrds.

To allow checking for that case, let's implement fit_count_images().

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/image-fit.c  | 12 ++++--------
 include/image-fit.h | 27 +++++++++++++++++++++++++--
 2 files changed, 29 insertions(+), 10 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 26bd8e265b25..85096aff31e6 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -495,19 +495,15 @@ static int fit_image_verify_signature(struct fit_handle *handle,
 	return ret;
 }
 
-bool fit_has_image(struct fit_handle *handle, void *configuration,
-		   const char *name)
+int fit_count_images(struct fit_handle *handle, void *configuration,
+		     const char *name)
 {
-	const char *unit;
 	struct device_node *conf_node = configuration;
 
 	if (!conf_node)
-		return false;
+		return -EINVAL;
 
-	if (of_property_read_string(conf_node, name, &unit))
-		return false;
-
-	return true;
+	return of_property_count_strings(conf_node, name);
 }
 
 static int fit_get_address(struct device_node *image, const char *property,
diff --git a/include/image-fit.h b/include/image-fit.h
index c332f77bd374..31b8b54e272d 100644
--- a/include/image-fit.h
+++ b/include/image-fit.h
@@ -34,8 +34,31 @@ struct fit_handle *fit_open_buf(const void *buf, size_t len, bool verbose,
 void *fit_open_configuration(struct fit_handle *handle, const char *name,
 			     bool (*match_valid)(struct fit_handle *handle,
 						 struct device_node *config));
-bool fit_has_image(struct fit_handle *handle, void *configuration,
-		   const char *name);
+/**
+ * fit_count_images() - count images of a given type in a FIT configuration
+ * @handle: FIT handle as returned by fit_open() or fit_open_buf()
+ * @configuration: configuration node as returned by fit_open_configuration()
+ * @name: image type property name (e.g., "kernel", "fdt", "ramdisk")
+ *
+ * Return: number of images on success, negative error code on failure
+ */
+int fit_count_images(struct fit_handle *handle, void *configuration,
+		     const char *name);
+
+/**
+ * fit_has_image() - check if a FIT configuration contains an image type
+ * @handle: FIT handle as returned by fit_open() or fit_open_buf()
+ * @configuration: configuration node as returned by fit_open_configuration()
+ * @name: image type property name (e.g., "kernel", "fdt", "ramdisk")
+ *
+ * Return: true if at least one image of the given type exists, false otherwise
+ */
+static inline bool fit_has_image(struct fit_handle *handle, void *configuration,
+				 const char *name)
+{
+	return fit_count_images(handle, configuration, name) > 0;
+}
+
 int fit_open_image(struct fit_handle *handle, void *configuration,
 		   const char *name, const void **outdata,
 		   unsigned long *outsize);
-- 
2.47.3




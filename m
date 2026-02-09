Delivery-date: Mon, 09 Feb 2026 19:12:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpVkA-00AdXJ-0Y
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 19:12:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpVk7-0006DI-Iu
	for lore@pengutronix.de; Mon, 09 Feb 2026 19:12:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oGlDVpferu/DsUaKasZQWqhbLK87Ev/tE13U7gDpS5M=; b=zm0XmgXA6hO8xAnLg2z46YJbDt
	vR/iXUtnYWMheoD43SSoxaf3VehapfgrFlBnnTddf6krrzPLtq3OPqH7UCnujGrKyIuj0/3io1khB
	SqrdFfDAoZcHS/TPlogf9Cff4S8PINg7vUu8UDna+zbXzcIZBJ1vg1p4kYROYI7QNMqr+5GPolRSI
	h32JJ4FSK8m2wKBRmxYtsQaM1dLOlp1SEQUsyfuMplqQkl0oZ0IR9430bdWt9EXkPO8tptjTsAM4g
	LaHM1WApv49Z05o9rjxVpfoh0rx3XGaEOF3UakL8xKJ8vkqgPC39plqWPphWhZwnQNK2YOKZ8dTgq
	7CudO41g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpVjc-0000000FqBS-3oGk;
	Mon, 09 Feb 2026 18:11:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpVjb-0000000Fq8p-16dG
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 18:11:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVjZ-0005qC-G4; Mon, 09 Feb 2026 19:11:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVjZ-004vne-39;
	Mon, 09 Feb 2026 19:11:41 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVjZ-00000008UJ4-0tnO;
	Mon, 09 Feb 2026 19:11:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Feb 2026 19:10:40 +0100
Message-ID: <20260209181138.2023065-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260209181138.2023065-1-a.fatoum@pengutronix.de>
References: <20260209181138.2023065-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_101143_305439_72F46807 
X-CRM114-Status: GOOD (  11.01  )
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
Subject: [PATCH v2 01/13] FIT: implement fit_count_images
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




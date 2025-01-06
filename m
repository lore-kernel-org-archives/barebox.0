Delivery-date: Mon, 06 Jan 2025 15:05:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUnjo-00HVxm-0q
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 15:05:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUnjl-0000mA-Lx
	for lore@pengutronix.de; Mon, 06 Jan 2025 15:05:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZZhvriu1XwQBY6fKAL8SsOakCsTw+cmHyXAbxCBOeDY=; b=i0izScXG+xv3ygmAB07xima7s0
	rqbdBSWPXzCjlnQjiHy6L7g09lmFjLJ64uWTwhn8fhzXC9+J4wsVrMBYdr01Ho8JTUrwPrcLMCExD
	QuIBajzFnRFCZVViDg4nC39hNCL+afccWjcKLz4tyYjohcw0RgOh4QYG7y2QuNUpXnxN9bp7sLCTp
	RoghAVlQaOf7PqkJGHfZvuoZf2jMCq4nOUWw9QRIKv7EeI2fvd18+BF/XW3JHujV0oGHGqYJeQ2Ee
	ZOlOCKAx9z4c81TTm4cTjX6IdlOjDwUoJtqJjZdJY94seXBNPUv91ocEdRg66XWuPOQLCUQJ8QKTV
	DbG/sYzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUnj9-00000001V2a-129I;
	Mon, 06 Jan 2025 14:05:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUngV-00000001UY7-2d9s
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 14:02:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUngU-000899-A6; Mon, 06 Jan 2025 15:02:22 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUngT-007B6C-19;
	Mon, 06 Jan 2025 15:02:22 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUnRd-00CsVv-1v;
	Mon, 06 Jan 2025 14:47:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 06 Jan 2025 14:47:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250106-k3-r5-v2-15-9de6270089ef@pengutronix.de>
References: <20250106-k3-r5-v2-0-9de6270089ef@pengutronix.de>
In-Reply-To: <20250106-k3-r5-v2-0-9de6270089ef@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736171221; l=4339;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=KmmTvhJjU5pAWvPQ8kdhMm1PX0QvjwzwxN8ARsRDJpo=;
 b=rSExj8k+7uzgpx/pwNVX81JTbcRgul1Rg5wHpQ/cbDOnMRRuZ9SQPj45Lgse1DTdpu542pt6J
 A3lynDIl1iiCVDlA3z2wUMDRVWVioxXPCf58lfXMkjURT+jhjtauy0h
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_060223_701794_6DA5925B 
X-CRM114-Status: GOOD (  16.99  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 15/22] firmware: ti_sci: add function to get global
 handle
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Most users access the ti_sci interface by ti,sci phandles in their
device nodes. The code setting up the images on the A53 cores doesn't
have a device node though, so add a function for accessing the ti_sci
without having a phandle.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/firmware/ti_sci.c        | 59 ++++++++++++++--------------------------
 include/soc/ti/ti_sci_protocol.h |  7 -----
 2 files changed, 21 insertions(+), 45 deletions(-)

diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
index 27cd46b70f..638893a1ed 100644
--- a/drivers/firmware/ti_sci.c
+++ b/drivers/firmware/ti_sci.c
@@ -281,7 +281,7 @@ static int ti_sci_do_xfer(struct ti_sci_info *info,
  *
  * Return: 0 if all went fine, else return appropriate error.
  */
-static int ti_sci_cmd_get_revision(struct ti_sci_handle *handle)
+static __maybe_unused int ti_sci_cmd_get_revision(struct ti_sci_handle *handle)
 {
 	struct ti_sci_msg_resp_version *rev_info;
 	struct ti_sci_version_info *ver;
@@ -2654,29 +2654,20 @@ static void ti_sci_setup_ops(struct ti_sci_info *info)
 	fwl_ops->change_fwl_owner = ti_sci_cmd_change_fwl_owner;
 }
 
-/**
- * ti_sci_get_handle_from_sysfw() - Get the TI SCI handle of the SYSFW
- * @dev:	Pointer to the SYSFW device
- *
- * Return: pointer to handle if successful, else EINVAL if invalid conditions
- *         are encountered.
- */
-const
-struct ti_sci_handle *ti_sci_get_handle_from_sysfw(struct device *sci_dev)
+static struct ti_sci_handle *ti_sci_get_by_node(struct device_node *np)
 {
-	struct ti_sci_info *info;
-	int ret;
+	struct ti_sci_info *entry, *info = NULL;
 
-	if (!sci_dev)
-		return ERR_PTR(-EINVAL);
+	of_device_ensure_probed(np);
 
-	info = dev_get_priv(sci_dev);
-	if (!info)
-		return ERR_PTR(-EINVAL);
+	list_for_each_entry(entry, &ti_sci_list, list)
+		if (dev_of_node(entry->dev) == np) {
+			info = entry;
+			break;
+		}
 
-	ret = ti_sci_cmd_get_revision(&info->handle);
-	if (ret)
-		return ERR_PTR(-EINVAL);
+	if (!info)
+		return ERR_PTR(-ENODEV);
 
 	return &info->handle;
 }
@@ -2690,14 +2681,17 @@ struct ti_sci_handle *ti_sci_get_handle_from_sysfw(struct device *sci_dev)
  */
 const struct ti_sci_handle *ti_sci_get_handle(struct device *dev)
 {
-	struct device *sci_dev;
-
-	if (!dev)
-		return ERR_PTR(-EINVAL);
+	struct device_node *np;
 
-	sci_dev = dev->parent;
+	if (dev) {
+		np = dev->parent->of_node;
+	} else {
+		np = of_find_compatible_node(NULL, NULL, "ti,k2g-sci");
+		if (!np)
+			return ERR_PTR(-ENODEV);
+	}
 
-	return ti_sci_get_handle_from_sysfw(sci_dev);
+	return ti_sci_get_by_node(np);
 }
 
 /**
@@ -2710,25 +2704,14 @@ const struct ti_sci_handle *ti_sci_get_handle(struct device *dev)
 const struct ti_sci_handle *ti_sci_get_by_phandle(struct device *dev,
 						  const char *property)
 {
-	struct ti_sci_info *entry, *info = NULL;
 	struct device_node *np;
 
 	np = of_parse_phandle(dev->of_node, property, 0);
 	if (!np)
 		return ERR_PTR(-EINVAL);
 
-	of_device_ensure_probed(np);
-
-	list_for_each_entry(entry, &ti_sci_list, list)
-		if (dev_of_node(entry->dev) == np) {
-			info = entry;
-			break;
-		}
-
-	if (!info)
-		return ERR_PTR(-ENODEV);
 
-	return &info->handle;
+	return ti_sci_get_by_node(np);
 }
 
 /**
diff --git a/include/soc/ti/ti_sci_protocol.h b/include/soc/ti/ti_sci_protocol.h
index f41ed82b91..e1c9956eb1 100644
--- a/include/soc/ti/ti_sci_protocol.h
+++ b/include/soc/ti/ti_sci_protocol.h
@@ -654,7 +654,6 @@ struct ti_sci_resource {
 
 #if IS_ENABLED(CONFIG_TI_SCI_PROTOCOL)
 
-const struct ti_sci_handle *ti_sci_get_handle_from_sysfw(struct device *dev);
 const struct ti_sci_handle *ti_sci_get_handle(struct device *dev);
 const struct ti_sci_handle *ti_sci_get_by_phandle(struct device *dev,
 						  const char *property);
@@ -663,12 +662,6 @@ devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
 			    struct device *dev, u32 dev_id, char *of_prop);
 #else	/* CONFIG_TI_SCI_PROTOCOL */
 
-static inline
-const struct ti_sci_handle *ti_sci_get_handle_from_sysfw(struct device *dev)
-{
-	return ERR_PTR(-EINVAL);
-}
-
 static inline const struct ti_sci_handle *ti_sci_get_handle(struct device *dev)
 {
 	return ERR_PTR(-EINVAL);

-- 
2.39.5




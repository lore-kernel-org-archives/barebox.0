Delivery-date: Tue, 09 Aug 2022 08:31:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLIm4-00H0CI-D7
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 08:31:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLIm4-0007oL-Ft
	for lore@pengutronix.de; Tue, 09 Aug 2022 08:31:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=b+8TV4Hl98u24fPfx5EqYHQEmwyfhl+FUbzGjqybOlw=; b=UiNoft5ciVT0GHCWF0xA8VcXTu
	Ljy8CBbigYn9l8lmJgBIPDjG/15hpsoRf33MXXF5q6YEliwyRHz8ehtjeQ6n4ZCCEj7B8caAsaWc9
	6RGXivrGmwDjDG6L2F2aL5eJNdjRSOW1F/0HqszJTyUDM9nQ/E/tR2OgiCkq2I08B+l9Td5WNl/TB
	9i+FK/FGRQpWVwHQoLZlSIawLN0rsXVGirsWIOzAMHPBwOpAR0HA0RRKACrsYdrq0U0hXjXH4mQHX
	izYkU3YlQ8FabSHE35/MBiIUx3G1L20DR2weTpOxwl0nwdNQVGn5rmMy+OTYNJYc2Ru7PkMxQJGK2
	asSTWQuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLIkl-001xFf-RC; Tue, 09 Aug 2022 06:30:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLIkK-001x4x-5v
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 06:29:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oLIkI-0007ES-Q1; Tue, 09 Aug 2022 08:29:42 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oLIkF-002eZh-PT; Tue, 09 Aug 2022 08:29:42 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oLIkH-007LNK-0F; Tue, 09 Aug 2022 08:29:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  9 Aug 2022 08:29:35 +0200
Message-Id: <20220809062938.1750369-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_232944_345713_2792ED81 
X-CRM114-Status: GOOD (  12.11  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/4] power: reset: reboot-mode: refactor to allow other mode- prefixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We will add support for one more mode- prefix in the follow-up commit,
so rewrite the code to make this addition seamless.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/power/reset/reboot-mode.c | 33 +++++++++++++++++++------------
 1 file changed, 20 insertions(+), 13 deletions(-)

diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
index d9b51dfea677..ab23c32a4370 100644
--- a/drivers/power/reset/reboot-mode.c
+++ b/drivers/power/reset/reboot-mode.c
@@ -12,8 +12,6 @@
 #include <globalvar.h>
 #include <magicvar.h>
 
-#define PREFIX "mode-"
-
 static int __priority;
 static struct reboot_mode_driver *__boot_mode;
 
@@ -111,6 +109,17 @@ static void reboot_mode_print(struct reboot_mode_driver *reboot,
 	__pr_printk(7, "\n");
 }
 
+static const char *get_mode_name(const struct property *prop)
+{
+	unsigned prefix_len;
+
+	prefix_len = str_has_prefix(prop->name, "mode-");
+	if (!prefix_len)
+		return NULL;
+
+	return prop->name + prefix_len;
+}
+
 /**
  * reboot_mode_register - register a reboot mode driver
  * @reboot: reboot mode driver
@@ -123,7 +132,6 @@ int reboot_mode_register(struct reboot_mode_driver *reboot,
 {
 	struct property *prop;
 	struct device_node *np = reboot->dev->device_node;
-	size_t len = strlen(PREFIX);
 	const char *alias;
 	size_t nmodes = 0;
 	int i = 0;
@@ -132,7 +140,7 @@ int reboot_mode_register(struct reboot_mode_driver *reboot,
 	for_each_property_of_node(np, prop) {
 		u32 magic;
 
-		if (strncmp(prop->name, PREFIX, len))
+		if (!get_mode_name(prop))
 			continue;
 		if (of_property_read_u32(np, prop->name, &magic))
 			continue;
@@ -154,16 +162,9 @@ int reboot_mode_register(struct reboot_mode_driver *reboot,
 		magic = &reboot->magics[i * nelems];
 		mode = &reboot->modes[i];
 
-		if (strncmp(prop->name, PREFIX, len))
-			continue;
-
-		if (of_property_read_u32_array(np, prop->name, magic, nelems)) {
-			dev_err(reboot->dev, "reboot mode %s without magic number\n",
-				*mode);
+		*mode = get_mode_name(prop);
+		if (!*mode)
 			continue;
-		}
-
-		*mode = prop->name + len;
 		if (*mode[0] == '\0') {
 			ret = -EINVAL;
 			dev_err(reboot->dev, "invalid mode name(%s): too short!\n",
@@ -171,6 +172,12 @@ int reboot_mode_register(struct reboot_mode_driver *reboot,
 			goto error;
 		}
 
+		if (of_property_read_u32_array(np, prop->name, magic, nelems)) {
+			dev_err(reboot->dev, "reboot mode %s without magic number\n",
+				*mode);
+			continue;
+		}
+
 		reboot_mode_print(reboot, *mode, magic);
 
 		i++;
-- 
2.30.2




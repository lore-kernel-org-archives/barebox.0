Delivery-date: Thu, 08 Feb 2024 08:52:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rXzDN-008Jhl-2Y
	for lore@lore.pengutronix.de;
	Thu, 08 Feb 2024 08:52:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rXzDM-00083c-Va
	for lore@pengutronix.de; Thu, 08 Feb 2024 08:52:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=M85M051VqgMeVKJoolICEgNJAOMDinrNGTPkzPCLzEU=; b=V4mpNxiC8p+1x23jvoib3DMcpX
	syhuWx7ej1eH5m8tVXLfaq053W2Zp4sj3kgfdz4iQdBCx8f7XFePT3m8Dro8kYbAEDWK9ri/agj5J
	oTGHnSeg7eIdtMp4b6B4da//KmTBkaaFghgZFhRlLHzxIxLyBq7R183t72hxzANoUctg/PR85+1nC
	QY5TpXGJKAvjsNuqdop0+TPGb804htdRdL2qpbatxv0LaxiZPM2BU7J8AQjP2v25UfoJ8I+yOnNYD
	G87cuF0w2AK01tstFIe0aHgcjfwsQIDKBlpelTH2GsgXaahTHY0+H3y0FCMPSSifH5/TF8nkz18v0
	ZZsN7haA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXzCp-0000000CwNU-1VlZ;
	Thu, 08 Feb 2024 07:52:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXzCm-0000000CwMf-2mK0
	for barebox@lists.infradead.org;
	Thu, 08 Feb 2024 07:52:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rXzCk-0007yI-Ta; Thu, 08 Feb 2024 08:52:18 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rXzCk-005AjE-H8; Thu, 08 Feb 2024 08:52:18 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rXzCk-002vmV-1P;
	Thu, 08 Feb 2024 08:52:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  8 Feb 2024 08:52:16 +0100
Message-Id: <20240208075217.697668-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240207_235220_730065_EDF9C920 
X-CRM114-Status: GOOD (  18.58  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] bbu: create a standard bbu handler for eMMC boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds a standard bbu handler to be used when an update is just
a matter of writing an image to the eMMC boot partitions.
As these may also want to set the BBU_FLAG_MMC_BOOT_ACK flag, it is
moved up one level to struct bbu_handler::flags to make it configurable
when struct bbu_data is not yet instantiated.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-stm32mp/bbu.c |  2 +-
 common/bbu.c                | 38 ++++++++++++++++++++++++++++++++-----
 include/bbu.h               | 13 ++++++++++++-
 3 files changed, 46 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-stm32mp/bbu.c b/arch/arm/mach-stm32mp/bbu.c
index 56fd4941d0..5d6d61db7d 100644
--- a/arch/arm/mach-stm32mp/bbu.c
+++ b/arch/arm/mach-stm32mp/bbu.c
@@ -129,7 +129,7 @@ static int stm32mp_bbu_mmc_fip_handler(struct bbu_handler *handler,
 
 	pr_debug("Handling %s\n", file_type_to_string(filetype));
 
-	data->flags |= BBU_FLAG_MMC_BOOT_ACK;
+	handler->flags |= BBU_HANDLER_FLAG_MMC_BOOT_ACK;
 
 	ret = bbu_mmcboot_handler(handler, data, stm32mp_bbu_mmc_update);
 	if (ret == -ENOENT) {
diff --git a/common/bbu.c b/common/bbu.c
index ed41c92f38..f08ce7e0d5 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -360,11 +360,7 @@ int bbu_mmcboot_handler(struct bbu_handler *handler, struct bbu_data *data,
 	if (ret < 0)
 		goto out;
 
-	/*
-	 * This flag can be set in the chained handler or by
-	 * bbu_mmcboot_handler's caller
-	 */
-	if ((_data.flags | data->flags) & BBU_FLAG_MMC_BOOT_ACK) {
+	if (handler->flags & BBU_HANDLER_FLAG_MMC_BOOT_ACK) {
 		ret = asprintf(&bootackvar, "%s.boot_ack", devname);
 		if (ret < 0)
 			goto out;
@@ -385,6 +381,38 @@ int bbu_mmcboot_handler(struct bbu_handler *handler, struct bbu_data *data,
 	return ret;
 }
 
+static int bbu_internal_mmcboot_update(struct bbu_handler *handler,
+				       struct bbu_data *data)
+{
+	int ret;
+
+	ret = bbu_mmcboot_handler(handler, data, bbu_std_file_handler);
+	if (ret == -ENOENT)
+		pr_err("Couldn't read the value of .boot parameter\n");
+
+	return ret;
+}
+
+int bbu_mmcboot_register_handler(const char *name,
+				 const char *devicefile,
+				 unsigned long flags)
+{
+	struct bbu_handler *handler;
+	int ret;
+
+	handler = xzalloc(sizeof(*handler));
+	handler->devicefile = devicefile;
+	handler->name = name;
+	handler->handler = bbu_internal_mmcboot_update;
+	handler->flags = flags;
+
+	ret = bbu_register_handler(handler);
+	if (ret)
+		free(handler);
+
+	return ret;
+}
+
 int bbu_std_file_handler(struct bbu_handler *handler,
 			 struct bbu_data *data)
 {
diff --git a/include/bbu.h b/include/bbu.h
index 0a4f324ade..5105d2ac70 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -10,7 +10,6 @@
 struct bbu_data {
 #define BBU_FLAG_FORCE	(1 << 0)
 #define BBU_FLAG_YES	(1 << 1)
-#define BBU_FLAG_MMC_BOOT_ACK	(1 << 2)
 	unsigned long flags;
 	int force;
 	const void *image;
@@ -27,6 +26,7 @@ struct bbu_handler {
 	struct list_head list;
 #define BBU_HANDLER_FLAG_DEFAULT	(1 << 0)
 #define BBU_HANDLER_CAN_REFRESH		(1 << 1)
+#define BBU_HANDLER_FLAG_MMC_BOOT_ACK	(1 << 16)
 	/*
 	 * The lower 16bit are generic flags, the upper 16bit are reserved
 	 * for handler specific flags.
@@ -66,6 +66,10 @@ int bbu_register_std_file_update(const char *name, unsigned long flags,
 
 void bbu_append_handlers_to_file_list(struct file_list *files);
 
+int bbu_mmcboot_register_handler(const char *name,
+				 const char *devicefile,
+				 unsigned long flags);
+
 #else
 
 static inline int bbu_register_handler(struct bbu_handler *unused)
@@ -84,6 +88,13 @@ static inline void bbu_append_handlers_to_file_list(struct file_list *files)
 	/* none could be registered, so nothing to do */
 }
 
+static inline int bbu_mmcboot_register_handler(const char *name,
+					       const char *devicefile,
+					       unsigned long flags)
+{
+	return -ENOSYS;
+}
+
 #endif
 
 #if defined(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB)
-- 
2.39.2




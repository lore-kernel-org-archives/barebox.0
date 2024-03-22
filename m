Delivery-date: Fri, 22 Mar 2024 17:46:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rni2T-00077i-1S
	for lore@lore.pengutronix.de;
	Fri, 22 Mar 2024 17:46:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rni2S-0001Bu-Ph
	for lore@pengutronix.de; Fri, 22 Mar 2024 17:46:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vu9sJ+ZNDl4UI41+ibHylHoOzN+5JyX5THeiYefc7bY=; b=p7mDO56rb4pdkPDh97u7GfvcZi
	vqWyUggBeYrsgRKEdVnfwftVG8Ez8exW9FJh/7yp7VZ5HwET6GkDcHirJPkonu8mw9aD4/3MpS/FE
	1Rdtz0lcas8PkwKvlmR2nnU89pUMpjvbfGzWxKpari/JyQLKnQ1ffUnPLCvZA5PYLZhKvhQ+VW7F6
	VDrNV59Q2znYY+ce9Ewe841rS+kqgzV+HlUnQ1vkZGlfw86oq33gwkFz3zN6wHUSBNCR/odp1+Jya
	16FsA2jKk9oZ7O3EJ5lsrMuPYA1KQIzuHG/D9/EaM+kEuMhnax1eEXfESiIC/brdSDzBE/90Kh3u+
	dy2zlAMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rni1z-0000000805m-2L2I;
	Fri, 22 Mar 2024 16:46:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rni1t-0000000802O-3zji
	for barebox@lists.infradead.org;
	Fri, 22 Mar 2024 16:46:08 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rni1r-0000uV-6S
	for barebox@lists.infradead.org; Fri, 22 Mar 2024 17:46:03 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 22 Mar 2024 17:45:58 +0100
Message-Id: <20240322164559.1768983-4-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240322164559.1768983-1-m.felsch@pengutronix.de>
References: <20240322164559.1768983-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_094606_020457_6DC48F9B 
X-CRM114-Status: GOOD (  11.45  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] nvmem: allow single and dynamic device ids
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Right now the core implementation always make use of DEVICE_ID_DYNAMIC.
This does not allow us having static devices supplied via the of-aliases
node. Therefore sync the code base with Linux to allow single ids,
albeit the id handling is still different.

While on it fix the nvmem_register_cdev() by using the dev_name() which
honors the DEVICE_ID_* cases else we end up with different names for the
devfs and the device itself.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/nvmem/core.c           | 16 +++++++++++-----
 include/linux/nvmem-provider.h |  4 ++++
 2 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 7d795d5873dc..c5ed1ce962dd 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -421,10 +421,16 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 	if (config->read_only || !config->reg_write || of_property_read_bool(np, "read-only"))
 		nvmem->read_only = true;
 
-	dev_set_name(&nvmem->dev, config->name);
-	nvmem->dev.id = DEVICE_ID_DYNAMIC;
-
-	dev_dbg(nvmem->dev.parent, "Registering nvmem device %s\n", config->name);
+	dev_set_name(&nvmem->dev, config->name ? : "nvmem");
+	switch (config->id) {
+	case NVMEM_DEVID_NONE:
+		nvmem->dev.id = DEVICE_ID_SINGLE;
+		break;
+	case NVMEM_DEVID_AUTO:
+	default:
+		nvmem->dev.id = DEVICE_ID_DYNAMIC;
+		break;
+	}
 
 	rval = register_device(&nvmem->dev);
 	if (rval) {
@@ -433,7 +439,7 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 	}
 
 	if (!config->cdev) {
-		rval = nvmem_register_cdev(nvmem, config->name);
+		rval = nvmem_register_cdev(nvmem, dev_name(&nvmem->dev));
 		if (rval) {
 			kfree(nvmem);
 			return ERR_PTR(rval);
diff --git a/include/linux/nvmem-provider.h b/include/linux/nvmem-provider.h
index ccac60696a28..33db9ba53d35 100644
--- a/include/linux/nvmem-provider.h
+++ b/include/linux/nvmem-provider.h
@@ -17,6 +17,9 @@
 
 struct nvmem_device;
 
+#define NVMEM_DEVID_NONE	(-1)
+#define NVMEM_DEVID_AUTO	(-2)
+
 /**
  * struct nvmem_cell_info - NVMEM cell description
  * @name:	Name.
@@ -47,6 +50,7 @@ typedef int (*nvmem_cell_post_process_t)(void *priv, const char *id,
 struct nvmem_config {
 	struct device		*dev;
 	const char		*name;
+	int			id;
 	bool			read_only;
 	struct cdev		*cdev;
 	int			stride;
-- 
2.39.2




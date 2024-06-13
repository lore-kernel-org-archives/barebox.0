Delivery-date: Thu, 13 Jun 2024 15:16:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHkJH-005O39-1e
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 15:16:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHkJG-0006rV-QK
	for lore@pengutronix.de; Thu, 13 Jun 2024 15:16:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4lhzT8LWr0Ll0whGk61WAJsZZ7ggfXKhF6PNN7xYZr0=; b=RSNhBVvEf4WNw1MaZr48S9BIp8
	HrSqzaIelYYiHWy2OuJ6hz7r3ahbE6aWZIS8uqLrCTbubGU4yp6kXjZUM+t+bRW0f/SSdZf4NKg3q
	xQS9h0FMGJcxYuWD4Qdd702Pkqz3q1X2weCwMvef1BoeXV82dJQnVuuh9SVfYXj3SesnEmOGL1Sr5
	I60Vqg4xS3M+E+JK7K/WSN8GwRtHfuGtm0M8aOF+z2uzrGQ2IcU4+UeVgEjauUbmgwSDdkxLtBYxj
	vqp8Cnw+yxPaGz++NAwEcAaEjkxM/nTb3YD/WMu5Orpp6xk9cGMvq4YumI4K/qLBzzjq1hOoju4eG
	YV6YGQHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkIm-0000000GetA-3eSD;
	Thu, 13 Jun 2024 13:15:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkIg-0000000GeoM-0pTB
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 13:15:37 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sHkIe-0006cd-Tb
	for barebox@lists.infradead.org; Thu, 13 Jun 2024 15:15:32 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 13 Jun 2024 15:15:30 +0200
Message-Id: <20240613131531.364894-4-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240613131531.364894-1-m.felsch@pengutronix.de>
References: <20240613131531.364894-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_061534_370044_BEDFA8AA 
X-CRM114-Status: GOOD (  12.07  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 4/5] nvmem: allow single and dynamic device ids
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
v2:
- no changes

 drivers/nvmem/core.c           | 16 +++++++++++-----
 include/linux/nvmem-provider.h |  4 ++++
 2 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 8e91d9c0fc8a..c4d397d07080 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -415,10 +415,16 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
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
@@ -427,7 +433,7 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 	}
 
 	if (!config->cdev) {
-		rval = nvmem_register_cdev(nvmem, config->name);
+		rval = nvmem_register_cdev(nvmem, dev_name(&nvmem->dev));
 		if (rval)
 			goto err_unregister;
 	}
diff --git a/include/linux/nvmem-provider.h b/include/linux/nvmem-provider.h
index 6cfd38a75dd5..047b6f1902bf 100644
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




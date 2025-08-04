Delivery-date: Mon, 04 Aug 2025 17:32:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uixAe-006z9j-2A
	for lore@lore.pengutronix.de;
	Mon, 04 Aug 2025 17:32:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uixAb-0006Ks-5o
	for lore@pengutronix.de; Mon, 04 Aug 2025 17:32:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u4R7DP4GOR0s0PUdXFpCcU6eo+FcBgvuYV5VlcPSizc=; b=3Fu7sqSihECKAsp8Er1GEK6W4K
	NNR1rAXwwHbtFJcu1uPRNss9AxIuImM+K0+UmNMwuw7ezNWy4aW5Ytqlm5/oUbh8B+9JBzuosu6qQ
	wjwZxsAumfKEsTHzy9yF39qnlaXDGude3DeT4ztRG1KnoJMXvJnONQtn7tPqGasMf7gP/HNQ8Redb
	aiX2jI/3Tpk5tIxNfY/ufbJy4mHkrXaMahb9Hg3iGHwhD0JaguZmlKxn8Uoo6rmo7hRYALwPHFMWY
	Y2LploLJR1R/wamgvDfXyVpX76E4VyH5uGtb7EVQoDYsaqOMSjdLFPpD8F74I64Cft0cPncIH2Phh
	3xdU+Xjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uix9m-0000000Anu5-1J87;
	Mon, 04 Aug 2025 15:31:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiwJ2-0000000AgmG-1mjC
	for barebox@lists.infradead.org;
	Mon, 04 Aug 2025 14:36:55 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uiwIz-0000aW-DC; Mon, 04 Aug 2025 16:36:49 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 04 Aug 2025 16:36:53 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250804-v2025-06-0-topic-nvmem-v1-7-7603eaa4d2b0@pengutronix.de>
References: <20250804-v2025-06-0-topic-nvmem-v1-0-7603eaa4d2b0@pengutronix.de>
In-Reply-To: <20250804-v2025-06-0-topic-nvmem-v1-0-7603eaa4d2b0@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_073652_613302_F3556031 
X-CRM114-Status: GOOD (  12.41  )
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
Subject: [PATCH 07/15] nvmem: core: allow single and dynamic device ids
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

At the moment only DEVICE_ID_DYNAMIC is supported. Add support for
NVMEM_DEVID_NONE to allow static device names via of-aliases and to
align our core with Linux.

While on it fix the nvmem_register_cdev() by using the dev_name() which
honors the DEVICE_ID_* cases else we end up with different names for the
devfs and the device itself.

The dev_dbg() message can be dropped as well since the register_device()
can print this message too.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/nvmem/core.c           | 16 +++++++++++-----
 include/linux/nvmem-provider.h |  4 ++++
 2 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 328e2839cc47326de53a5950ffaa676926882c32..29a18cbeb517bdf23a8620f19a0ec21a1ac1b4e2 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -410,17 +410,23 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 	if (config->read_only || !config->reg_write || of_property_read_bool(np, "read-only"))
 		nvmem->read_only = true;
 
-	dev_set_name(&nvmem->dev, "%s", config->name);
-	nvmem->dev.id = DEVICE_ID_DYNAMIC;
-
-	dev_dbg(nvmem->dev.parent, "Registering nvmem device %s\n", config->name);
+	dev_set_name(&nvmem->dev, "%s", config->name ? : "nvmem");
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
 	if (rval)
 		goto err_remove_cells;
 
 	if (!config->cdev) {
-		rval = nvmem_register_cdev(nvmem, config->name);
+		rval = nvmem_register_cdev(nvmem, dev_name(&nvmem->dev));
 		if (rval)
 			goto err_unregister;
 	}
diff --git a/include/linux/nvmem-provider.h b/include/linux/nvmem-provider.h
index a7d1653afb5805adb4edb6b136bac13d3c63797c..08e16d49497a9e71f55e3827a0b28c6c6f9e24ae 100644
--- a/include/linux/nvmem-provider.h
+++ b/include/linux/nvmem-provider.h
@@ -25,6 +25,9 @@ typedef int (*nvmem_cell_post_process_t)(void *priv, const char *id,
 					 unsigned int offset, void *buf,
 					 size_t bytes);
 
+#define NVMEM_DEVID_NONE	(-1)
+#define NVMEM_DEVID_AUTO	(-2)
+
 /**
  * struct nvmem_cell_info - NVMEM cell description
  * @name:	Name.
@@ -62,6 +65,7 @@ struct nvmem_cell_info {
 struct nvmem_config {
 	struct device		*dev;
 	const char		*name;
+	int			id;
 	bool			read_only;
 	struct cdev		*cdev;
 	nvmem_reg_read_t	reg_read;

-- 
2.39.5




Delivery-date: Mon, 11 Mar 2024 11:22:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjcnl-000tWP-0j
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 11:22:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjcng-0008BE-9k
	for lore@pengutronix.de; Mon, 11 Mar 2024 11:22:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ee4zn16POYJ6J6J66SaWDceEzPC3iKneBrZoqFUpvGM=; b=VE50+AH1zHIX+VPo2URAwY8Zrt
	6ieoP4s8neK9GpjDGS1r+5j5OcAeBvGI0P1H3G6gEmMHB9aWDe5oqmVt4bamtn5mm9NgOArYCli4p
	KB9Nig/SkFwrDVB2YEkbDC+Alafk3PG2XGxFdW6mtH4xYY1JgiBxOBEnmY84hzhWpeauznZDIdc6q
	ioHIzr6qyuJ2/Z/LCiPUEcdPjeouh6Y/kc7jv9QVSL+OlVK1WxQNYwqINxGx1sJ9gRYGrGUepUWyH
	ygQNIw+yMiDynOxE1xZVihbQCw0Wlp8LllYNovj7ohpgzSmGKVeKskuw8E2aT3RIS0JgLB9lKNAAX
	6mHfugDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjcnB-000000014o7-2Gsu;
	Mon, 11 Mar 2024 10:22:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjcn6-000000014l5-3JEd
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 10:21:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rjcn4-0007fN-UQ; Mon, 11 Mar 2024 11:21:54 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rjcn4-005gyt-Hh; Mon, 11 Mar 2024 11:21:54 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rjcn4-001WE1-1S;
	Mon, 11 Mar 2024 11:21:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 11 Mar 2024 11:21:51 +0100
Message-Id: <20240311102152.360762-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240311102152.360762-1-s.hauer@pengutronix.de>
References: <20240311102152.360762-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_032156_903266_9212F03E 
X-CRM114-Status: GOOD (  13.05  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/5] nvmem: add nvmem_device_get_device()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We'll want to add a device parameter to the imx_ocotp0 device in the
next step, but the device is private to the nvmem core. Add a getter
function for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nvmem/core.c           | 6 ++++++
 include/linux/nvmem-provider.h | 5 +++++
 2 files changed, 11 insertions(+)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 67bb1d7993..ad145a4242 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -858,3 +858,9 @@ int nvmem_cell_read_variable_le_u32(struct device *dev, const char *cell_id,
 	return 0;
 }
 EXPORT_SYMBOL_GPL(nvmem_cell_read_variable_le_u32);
+
+struct device *nvmem_device_get_device(struct nvmem_device *nvmem)
+{
+	return &nvmem->dev;
+}
+EXPORT_SYMBOL_GPL(nvmem_device_get_device);
diff --git a/include/linux/nvmem-provider.h b/include/linux/nvmem-provider.h
index 3c30e18409..b3b4372d30 100644
--- a/include/linux/nvmem-provider.h
+++ b/include/linux/nvmem-provider.h
@@ -48,6 +48,7 @@ struct nvmem_device *nvmem_regmap_register(struct regmap *regmap, const char *na
 struct nvmem_device *nvmem_regmap_register_with_pp(struct regmap *regmap,
 		const char *name, nvmem_cell_post_process_t cell_post_process);
 struct nvmem_device *nvmem_partition_register(struct cdev *cdev);
+struct device *nvmem_device_get_device(struct nvmem_device *nvmem);
 
 #else
 
@@ -73,5 +74,9 @@ static inline struct nvmem_device *nvmem_partition_register(struct cdev *cdev)
 	return ERR_PTR(-ENOSYS);
 }
 
+static struct device *nvmem_device_get_device(struct nvmem_device *nvmem)
+{
+	return ERR_PTR(-ENOSYS);
+}
 #endif /* CONFIG_NVMEM */
 #endif  /* ifndef _LINUX_NVMEM_PROVIDER_H */
-- 
2.39.2




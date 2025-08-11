Delivery-date: Mon, 11 Aug 2025 14:30:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfq-009Ko8-21
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:30:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfS-0006XI-IS
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:30:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6c6iOwnbuEaxCFMG2oTOp0tYbTqWAmcElNh8Ok4xEhU=; b=QT6RfUjO6fELoKQaNPXctrDNuk
	WWPrjhZGcATw+YU8yfCZIpHQ9SSvdHq5ESdu+UNNZm5YnLiXTLzEy/3iGtpD8EEFASJkg+BAUcd8o
	2zWZVg0z1JIOWRuOJ9NzC3ZqeNeEJs36zOJVDGDKnYgk6Lh2jXTq57OAgJsO/JhFCEUCKhQUCsizK
	FMSS1wjs4LM5qYeW7tDzGc4jZsRdY2nRITJxkTecSVX4Q9r9sqSzBA+v+UD62aPFqPt4C/Vcb8K47
	kApCoi0HKoUsU1axfS67BWpM1o1l0aEBBH8y46paj1qedSgMN242V6SuQp5pApuamWQo51YZdjMBz
	tw3GreEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulReB-00000007eNI-0ohy;
	Mon, 11 Aug 2025 12:29:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdi-00000007dbU-2SM2
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdh-0004WP-04; Mon, 11 Aug 2025 14:28:33 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:28:07 +0200
Message-Id: <20250811122824.1667791-28-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052834_718911_A2E42FA4 
X-CRM114-Status: GOOD (  10.10  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 27/44] nvmem: export functions to query NVMEM size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Allow users to query how much bytes are in a NVMEM device given a struct
device that was retrieved by iterating the NVMEM class.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/nvmem/core.c           | 12 ++++++++++++
 include/linux/nvmem-consumer.h | 13 ++++++++++++-
 2 files changed, 24 insertions(+), 1 deletion(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 253c00575d88..1e701426c9ad 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -374,6 +374,12 @@ struct nvmem_device *nvmem_device_get(struct device *dev,
 }
 EXPORT_SYMBOL_GPL(nvmem_device_get);
 
+struct nvmem_device *nvmem_from_device(struct device *dev)
+{
+	return container_of_safe(dev, struct nvmem_device, dev);
+}
+EXPORT_SYMBOL_GPL(nvmem_from_device);
+
 /**
  * nvmem_device_put() - put alredy got nvmem device
  *
@@ -829,6 +835,12 @@ int nvmem_device_write(struct nvmem_device *nvmem,
 }
 EXPORT_SYMBOL_GPL(nvmem_device_write);
 
+ssize_t nvmem_device_size(struct nvmem_device *nvmem)
+{
+	return nvmem->size;
+}
+EXPORT_SYMBOL_GPL(nvmem_device_size);
+
 void *nvmem_cell_get_and_read(struct device_node *np, const char *cell_name,
 			      size_t bytes)
 {
diff --git a/include/linux/nvmem-consumer.h b/include/linux/nvmem-consumer.h
index c711b63aeeb0..25591d166a02 100644
--- a/include/linux/nvmem-consumer.h
+++ b/include/linux/nvmem-consumer.h
@@ -44,6 +44,7 @@ int nvmem_cell_write(struct nvmem_cell *cell, void *buf, size_t len);
 
 /* direct nvmem device read/write interface */
 struct nvmem_device *nvmem_device_get(struct device *dev, const char *name);
+struct nvmem_device *nvmem_from_device(struct device *dev);
 void nvmem_device_put(struct nvmem_device *nvmem);
 int nvmem_device_read(struct nvmem_device *nvmem, unsigned int offset,
 		      size_t bytes, void *buf);
@@ -53,7 +54,7 @@ ssize_t nvmem_device_cell_read(struct nvmem_device *nvmem,
 			       struct nvmem_cell_info *info, void *buf);
 int nvmem_device_cell_write(struct nvmem_device *nvmem,
 			    struct nvmem_cell_info *info, void *buf);
-
+ssize_t nvmem_device_size(struct nvmem_device *nvmem);
 void nvmem_devices_print(void);
 
 #else
@@ -99,6 +100,11 @@ static inline struct nvmem_device *nvmem_device_get(struct device *dev,
 	return ERR_PTR(-EOPNOTSUPP);
 }
 
+static inline struct nvmem_device *nvmem_from_device(struct device *dev)
+{
+	return IS_ERR(dev) ? ERR_CAST(dev) : ERR_PTR(-EOPNOTSUPP);
+}
+
 static inline void nvmem_device_put(struct nvmem_device *nvmem)
 {
 }
@@ -131,6 +137,11 @@ static inline int nvmem_device_write(struct nvmem_device *nvmem,
 	return -EOPNOTSUPP;
 }
 
+static inline ssize_t nvmem_device_size(struct nvmem_device *nvmem)
+{
+	return -EOPNOTSUPP;
+}
+
 #endif /* CONFIG_NVMEM */
 
 #if IS_ENABLED(CONFIG_NVMEM) && IS_ENABLED(CONFIG_OFTREE)
-- 
2.39.5




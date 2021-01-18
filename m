Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1bYj-0003K7-DL
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 20:55:34 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1l1bYi-0002Na-1w
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 21:55:32 +0100
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1l1bYh-0002a7-Oi
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 21:55:31 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 18 Jan 2021 21:55:26 +0100
Message-Id: <20210118205528.9797-2-m.felsch@pengutronix.de>
In-Reply-To: <20210118205528.9797-1-m.felsch@pengutronix.de>
References: <20210118205528.9797-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/4] nvmem: add missing stubs
To: barebox@lists.infradead.org

Add missing stubs for nvmem_device_cell_read/write().

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/linux/nvmem-consumer.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/include/linux/nvmem-consumer.h b/include/linux/nvmem-consumer.h
index 2f79014c0f..d86377bfda 100644
--- a/include/linux/nvmem-consumer.h
+++ b/include/linux/nvmem-consumer.h
@@ -84,6 +84,20 @@ static inline struct nvmem_device *nvmem_device_get(struct device_d *dev,
 static inline void nvmem_device_put(struct nvmem_device *nvmem)
 {
 }
+
+static inline ssize_t nvmem_device_cell_read(struct nvmem_device *nvmem,
+					 struct nvmem_cell_info *info,
+					 void *buf)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline int nvmem_device_cell_write(struct nvmem_device *nvmem,
+					  struct nvmem_cell_info *info,
+					  void *buf)
+{
+	return -EOPNOTSUPP;
+}
 #endif /* CONFIG_NVMEM */
 
 #if IS_ENABLED(CONFIG_NVMEM) && IS_ENABLED(CONFIG_OFTREE)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

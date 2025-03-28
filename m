Delivery-date: Fri, 28 Mar 2025 09:36:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ty5Cl-005DY5-0Y
	for lore@lore.pengutronix.de;
	Fri, 28 Mar 2025 09:36:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ty5Ck-0000lk-Gw
	for lore@pengutronix.de; Fri, 28 Mar 2025 09:36:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nbxptZ6AQYjVZZUyMuwzEe3mv6eVcFEdZAcZngaO/FI=; b=uVUHrPmp+oylN9jLm9wddKf/1M
	r9uGU7dQ5IzlODptjmIv1oc+1kTxIvQuuZ3tZI7v+g7zPyqs3W5vMR7NJgVjjssw08T1Tn9Z083gK
	zsu+paIYMqkhaPnGBeaOAaCFS4v4ndl1pSJLFnZRut7tqfJh+beHwWsWCxgQtsCGmlDrYjcSzK0zM
	cCck9SRCpvupvYVea1VJM0eSWp5PIdKYLKvfznC+luOo4IfDC/IgZddKVcQVNh6RdxUyksNVefaSj
	Msnmitugtm5vpGXOD70+ey0m0cinSEFwDLTgWbOSeCeGXQgRrkp0e7pfU4p55TpguEkk6SxXpEDyF
	/6W8evPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty5CE-0000000CwAo-3jf7;
	Fri, 28 Mar 2025 08:36:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty5Bv-0000000Cw7q-3FrL
	for barebox@lists.infradead.org;
	Fri, 28 Mar 2025 08:35:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ty5Bu-0000SJ-Hm; Fri, 28 Mar 2025 09:35:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ty5Bu-0024MR-18;
	Fri, 28 Mar 2025 09:35:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ty5Bu-0029u6-0p;
	Fri, 28 Mar 2025 09:35:50 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 28 Mar 2025 09:35:48 +0100
Message-Id: <20250328083549.514506-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250328083549.514506-1-a.fatoum@pengutronix.de>
References: <20250328083549.514506-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250328_013551_828159_63538D71 
X-CRM114-Status: GOOD (  13.37  )
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
Subject: [PATCH 2/3] treewide: export symbols needed for i2c-mux-pca954x.ko
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The module support in barebox is an experimental feature, but it can
prove useful in some situations.

Building most drivers as modules currently fails, because e.g. pr_print
and dev_printf are not exported.

Add EXPORT_SYMBOL annotations for all symbols currently used
by i2c-mux-pca954x.

Cc: David Dgien <dgienda125@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
David, are you still using the module support? We have added an
allyesconfig build to CI and an allmodconfig build may be added as well
if there are users.
---
 common/console_common.c | 2 ++
 drivers/base/driver.c   | 1 +
 drivers/dma/map.c       | 6 ++++++
 drivers/i2c/i2c.c       | 1 +
 4 files changed, 10 insertions(+)

diff --git a/common/console_common.c b/common/console_common.c
index a8527eee1e5a..5b7a64c99c29 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -135,6 +135,7 @@ int pr_print(int level, const char *fmt, ...)
 
 	return i;
 }
+EXPORT_SYMBOL(pr_print);
 
 int dev_printf(int level, const struct device *dev, const char *format, ...)
 {
@@ -161,6 +162,7 @@ int dev_printf(int level, const struct device *dev, const char *format, ...)
 
 	return ret;
 }
+EXPORT_SYMBOL(dev_printf);
 
 #ifdef CONFIG_CONSOLE_ALLOW_COLOR
 static unsigned int __console_allow_color = 1;
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 6363b3948f1d..edba037fa2dd 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -725,6 +725,7 @@ const void *device_get_match_data(struct device *dev)
 
 	return NULL;
 }
+EXPORT_SYMBOL(device_get_match_data);
 
 static void device_set_deferred_probe_reason(struct device *dev,
 					     const struct va_format *vaf)
diff --git a/drivers/dma/map.c b/drivers/dma/map.c
index cd0f5c3d3497..2980d4c2e790 100644
--- a/drivers/dma/map.c
+++ b/drivers/dma/map.c
@@ -7,6 +7,7 @@ void *dma_alloc(size_t size)
 {
 	return xmemalign(DMA_ALIGNMENT, ALIGN(size, DMA_ALIGNMENT));
 }
+EXPORT_SYMBOL(dma_alloc);
 
 void *dma_zalloc(size_t size)
 {
@@ -18,6 +19,7 @@ void *dma_zalloc(size_t size)
 
 	return buf;
 }
+EXPORT_SYMBOL(dma_zalloc);
 
 void dma_sync_single_for_cpu(struct device *dev, dma_addr_t address,
 			     size_t size, enum dma_data_direction dir)
@@ -29,6 +31,7 @@ void dma_sync_single_for_cpu(struct device *dev, dma_addr_t address,
 	if (!dev_is_dma_coherent(dev))
 		arch_sync_dma_for_cpu(ptr, size, dir);
 }
+EXPORT_SYMBOL(dma_sync_single_for_cpu);
 
 void dma_sync_single_for_device(struct device *dev, dma_addr_t address,
 					      size_t size, enum dma_data_direction dir)
@@ -40,6 +43,7 @@ void dma_sync_single_for_device(struct device *dev, dma_addr_t address,
 	if (!dev_is_dma_coherent(dev))
 		arch_sync_dma_for_device(ptr, size, dir);
 }
+EXPORT_SYMBOL(dma_sync_single_for_device);
 
 dma_addr_t dma_map_single(struct device *dev, void *ptr,
 					size_t size, enum dma_data_direction dir)
@@ -53,6 +57,7 @@ dma_addr_t dma_map_single(struct device *dev, void *ptr,
 
 	return dma_addr;
 }
+EXPORT_SYMBOL(dma_map_single);
 
 void dma_unmap_single(struct device *dev, dma_addr_t dma_addr,
 				    size_t size, enum dma_data_direction dir)
@@ -62,3 +67,4 @@ void dma_unmap_single(struct device *dev, dma_addr_t dma_addr,
 
 	debug_dma_unmap(dev, dma_addr, size, dir);
 }
+EXPORT_SYMBOL(dma_unmap_single);
diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 7df645ba1c3f..49b87bb47c00 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -765,6 +765,7 @@ struct bus_type i2c_bus = {
 	.name = "i2c",
 	.match = device_match_of_modalias,
 };
+EXPORT_SYMBOL(i2c_bus);
 
 static int i2c_bus_init(void)
 {
-- 
2.39.5




Delivery-date: Fri, 30 May 2025 13:44:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKyA2-001vqP-0k
	for lore@lore.pengutronix.de;
	Fri, 30 May 2025 13:44:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKyA0-0002If-Cm
	for lore@pengutronix.de; Fri, 30 May 2025 13:44:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3WH85iSgDB5wnBznoR/O1eq8xhU3pkpjJ5cqKqXrN7c=; b=VSFOKeR2NZ6EKITq19ply74GL8
	L6NPbvseU7lWyAUjpBHlDvclbYpIX/nsfaqbDDuXVc5lNRi8O4pjP1q2L8Whx03IHECZMxIoYfUEB
	Ev/JYD0BlPHZlkT6v/qIUZs1OJGZUFtQKt+g24jqyFQx0y6ufHQRyk4DqNHwH9QbmsYAq3xTZS/4n
	01xku7LjhfydfVSCREBJJw2VTnrAFA0KXawjoOu4PJd5B8U1si+iSettkAsZ4mgJlq/8v5YlG+iFH
	1MjUbk6/WFcJHZbqm6MxVSraY4kmga20VU8fT4vwgGqFWpET2Odb61Qr710BuPS28azUqcDAi4oZQ
	xCuyLpNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKy9K-00000000Rpx-2bVI;
	Fri, 30 May 2025 11:43:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKy6n-00000000RbV-3QeC
	for barebox@lists.infradead.org;
	Fri, 30 May 2025 11:41:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1uKy6l-0008Tf-SO; Fri, 30 May 2025 13:41:07 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uKy6l-000y4k-1v;
	Fri, 30 May 2025 13:41:07 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uKy6l-004EcD-1l;
	Fri, 30 May 2025 13:41:07 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 30 May 2025 13:41:00 +0200
Message-Id: <20250530114106.1009454-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250530114106.1009454-1-o.rempel@pengutronix.de>
References: <20250530114106.1009454-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250530_044109_902274_1B3E0B80 
X-CRM114-Status: GOOD (  15.40  )
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
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v1 1/7] nvmem: Add 'protect' operation to core framework
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Introduce a generic "protect" operation to the NVMEM framework.
This allows NVMEM providers to expose hardware-specific protection or
locking mechanisms through the character device interface. Existing
read/write operations do not cover this type of state-altering
protection.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/nvmem/core.c           | 48 ++++++++++++++++++++++++++++++++++
 drivers/nvmem/partition.c      |  7 +++++
 include/linux/nvmem-provider.h |  5 ++++
 3 files changed, 60 insertions(+)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 38dfb2cf2d1f..ac54a56f3c9f 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -30,6 +30,8 @@ struct nvmem_device {
 					     const void *val, size_t val_size);
 	int			(*reg_read)(void *ctx, unsigned int reg,
 					    void *val, size_t val_size);
+	int			(*reg_protect)(void *ctx, unsigned int reg,
+					       size_t bytes, int prot);
 };
 
 struct nvmem_cell {
@@ -93,9 +95,54 @@ static ssize_t nvmem_cdev_write(struct cdev *cdev, const void *buf, size_t count
 	return retlen;
 }
 
+static int nvmem_cdev_protect(struct cdev *cdev, size_t count, loff_t offset,
+			      int prot)
+{
+	struct nvmem_device *nvmem;
+	int nvmem_prot;
+
+	if (cdev->master)
+		nvmem = container_of(cdev->master, struct nvmem_device, cdev);
+	else
+		nvmem = container_of(cdev, struct nvmem_device, cdev);
+
+	dev_dbg(cdev->dev, "protect ofs: 0x%08llx count: 0x%08zx prot: %d\n",
+		offset, count, prot);
+
+	if (!nvmem->reg_protect) {
+		dev_warn(cdev->dev, "NVMEM device %s does not support protect operation\n",
+			 nvmem->name);
+		return -EOPNOTSUPP;
+	}
+
+	if (!count)
+		return 0;
+
+	if (offset >= nvmem->size || count > nvmem->size - offset) {
+		dev_err(cdev->dev, "protect range out of bounds (ofs: 0x%08llx, count 0x%08zx, size 0x%08zx)\n",
+			offset, count, nvmem->size);
+		return -EINVAL;
+	}
+
+	switch (prot) {
+	case 0:
+		nvmem_prot = NVMEM_PROTECT_ENABLE_WRITE;
+		break;
+	case 1:
+		nvmem_prot = NVMEM_PROTECT_DISABLE_WRITE;
+		break;
+	default:
+		dev_err(cdev->dev, "unsuported protection type %d\n", prot);
+		return -EINVAL;
+	}
+
+	return nvmem->reg_protect(nvmem->priv, offset, count, nvmem_prot);
+}
+
 static struct cdev_operations nvmem_chrdev_ops = {
 	.read  = nvmem_cdev_read,
 	.write  = nvmem_cdev_write,
+	.protect = nvmem_cdev_protect,
 };
 
 static int nvmem_register_cdev(struct nvmem_device *nvmem, const char *name)
@@ -213,6 +260,7 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 	nvmem->dev.parent = config->dev;
 	nvmem->reg_read = config->reg_read;
 	nvmem->reg_write = config->reg_write;
+	nvmem->reg_protect = config->reg_protect;
 	np = config->cdev ? cdev_of_node(config->cdev) : config->dev->of_node;
 	nvmem->dev.of_node = np;
 	nvmem->priv = config->priv;
diff --git a/drivers/nvmem/partition.c b/drivers/nvmem/partition.c
index d1127c1401af..bb6dbad7b5f6 100644
--- a/drivers/nvmem/partition.c
+++ b/drivers/nvmem/partition.c
@@ -18,6 +18,12 @@ static int nvmem_cdev_read(void *ctx, unsigned offset, void *buf, size_t bytes)
 	return cdev_read(ctx, buf, bytes, offset, 0);
 }
 
+static int nvmem_cdev_protect(void *ctx, unsigned int offset, size_t bytes,
+			      int prot)
+{
+	return cdev_protect(ctx, bytes, offset, prot);
+}
+
 static int nvmem_cells_probe(struct device *dev)
 {
 	struct nvmem_config config = {};
@@ -37,6 +43,7 @@ static int nvmem_cells_probe(struct device *dev)
 	config.size = cdev->size;
 	config.reg_read = nvmem_cdev_read;
 	config.reg_write = nvmem_cdev_write;
+	config.reg_protect = nvmem_cdev_protect;
 
 	return PTR_ERR_OR_ZERO(nvmem_register(&config));
 }
diff --git a/include/linux/nvmem-provider.h b/include/linux/nvmem-provider.h
index c1765673eb23..991f4f9d2fa0 100644
--- a/include/linux/nvmem-provider.h
+++ b/include/linux/nvmem-provider.h
@@ -17,6 +17,9 @@
 
 struct nvmem_device;
 
+#define NVMEM_PROTECT_ENABLE_WRITE	0
+#define NVMEM_PROTECT_DISABLE_WRITE	1
+
 /* used for vendor specific post processing of cell data */
 typedef int (*nvmem_cell_post_process_t)(void *priv, const char *id,
 					 unsigned int offset, void *buf,
@@ -34,6 +37,8 @@ struct nvmem_config {
 					     const void *val, size_t val_size);
 	int			(*reg_read)(void *ctx, unsigned int reg,
 					    void *val, size_t val_size);
+	int			(*reg_protect)(void *ctx, unsigned int offset,
+					       size_t bytes, int prot);
 	void			*priv;
 	nvmem_cell_post_process_t cell_post_process;
 };
-- 
2.39.5




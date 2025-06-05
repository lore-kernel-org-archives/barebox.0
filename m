Delivery-date: Thu, 05 Jun 2025 23:14:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNHv6-0049R4-1n
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 23:14:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNHuz-00061k-7i
	for lore@pengutronix.de; Thu, 05 Jun 2025 23:14:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PA3vnhHqTierU5o69p0nEg3WXNlmB54ZeA1YFRyPo2w=; b=K4NHDM+m40onKMIoSdCh3lHr4w
	9yqPZw6bSRLn0fm1z9vGEco3/hrAOVy6K5l8YMeObSK+Vj3R4M9A7MY4pTZOLI2rG53ydQi4F/cWQ
	i67NOzrMMUI2CaObSobdpU4681v0S2jNIIePYjoY7NzAkbmKcfR5Nge5sZCOOXqudtuG+IvZDtUdY
	joJVmief1SeqETHck1V+tAnYPIMe003zFbYQJ49GnqMmt/5bKF4eqLRtihDFnEzwk8rDgnFJlAB8H
	bN5uJCNmJN+0kRUI3z0PVUv4t6snMUysJLdriXgoZSwnYUCcXpw/rnli+TNjYjPnUKHDeoi6B5D0D
	QHsOzDvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNHuA-0000000Geql-3rmG;
	Thu, 05 Jun 2025 21:13:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNHo8-0000000GeDi-48Fp
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 21:07:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNHo7-00079B-NQ; Thu, 05 Jun 2025 23:07:27 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu,  5 Jun 2025 23:07:11 +0200
Message-Id: <20250605210726.1916656-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605210726.1916656-1-a.fatoum@barebox.org>
References: <20250605210726.1916656-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_140729_020770_44686FC3 
X-CRM114-Status: GOOD (  13.80  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/16] driver: bus: embed bus driver node into bus
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of keeping the bus device in a separate allocation, fold it into
the bus struct itself.

The benefit is that this would allow us to arrive at the bus from the
device and thus be able to chain them using device classes.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/devinfo.c    | 2 +-
 common/tlv/bus.c      | 4 ++--
 drivers/amba/bus.c    | 2 +-
 drivers/base/bus.c    | 7 +++----
 drivers/base/driver.c | 2 +-
 include/driver.h      | 2 +-
 6 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/commands/devinfo.c b/commands/devinfo.c
index b1918787a3b6..3c791e4464ac 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -84,7 +84,7 @@ static int do_devinfo(int argc, char *argv[])
 
 		devinfo(dev);
 
-		if (dev->parent && (!dev->bus || dev->bus->dev != dev->parent))
+		if (dev->parent && (!dev->bus || &dev->bus->dev != dev->parent))
 			printf("Parent: %s\n", dev_name(dev->parent));
 
 		first = true;
diff --git a/common/tlv/bus.c b/common/tlv/bus.c
index ab0f4f8b82aa..62d7b7504576 100644
--- a/common/tlv/bus.c
+++ b/common/tlv/bus.c
@@ -29,7 +29,7 @@ struct tlv_device *tlv_register_device(struct tlv_header *header,
 	devinfo_add(dev, tlv_devinfo);
 	dev->platform_data = header;
 	tlvdev->magic = be32_to_cpu(header->magic);
-	dev->parent = parent ?: tlv_bus.dev;
+	dev->parent = parent ?: &tlv_bus.dev;
 	dev->id = DEVICE_ID_SINGLE;
 
 	if (parent)
@@ -122,7 +122,7 @@ static int tlv_bus_register(void)
 	if (ret)
 		return ret;
 
-	devinfo_add(tlv_bus.dev, tlv_bus_info);
+	devinfo_add(&tlv_bus.dev, tlv_bus_info);
 
 	return 0;
 }
diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index 8d6525cca967..4e10dd72368f 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -143,7 +143,7 @@ int amba_device_add(struct amba_device *dev)
 		cid = amba_device_get_cid(tmp, size);
 
 		if (IS_ENABLED(CONFIG_ARM_AMBA_DABT_MASK) && data_abort_unmask()) {
-			dev_err(amba_bustype.dev,
+			dev_err(&amba_bustype.dev,
 				"data abort during MMIO read of PID/CID for %pOF\n",
 				dev->dev.of_node);
 			ret = -EFAULT;
diff --git a/drivers/base/bus.c b/drivers/base/bus.c
index 58fcd2e032da..6a4e654b3cea 100644
--- a/drivers/base/bus.c
+++ b/drivers/base/bus.c
@@ -30,11 +30,10 @@ int bus_register(struct bus_type *bus)
 	if (get_bus_by_name(bus->name))
 		return -EEXIST;
 
-	bus->dev = xzalloc(sizeof(*bus->dev));
-	dev_set_name(bus->dev, bus->name);
-	bus->dev->id = DEVICE_ID_SINGLE;
+	dev_set_name(&bus->dev, bus->name);
+	bus->dev.id = DEVICE_ID_SINGLE;
 
-	ret = register_device(bus->dev);
+	ret = register_device(&bus->dev);
 	if (ret)
 		return ret;
 
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 2192ba9812cb..21bf88a74e50 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -269,7 +269,7 @@ int register_device(struct device *new_device)
 
 	if (new_device->bus) {
 		if (!new_device->parent)
-			new_device->parent = new_device->bus->dev;
+			new_device->parent = &new_device->bus->dev;
 
 		list_add_tail(&new_device->bus_list, &new_device->bus->device_list);
 
diff --git a/include/driver.h b/include/driver.h
index e9a919f9bbb5..c6b7b37aa00f 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -358,7 +358,7 @@ struct bus_type {
 	int (*probe)(struct device *dev);
 	void (*remove)(struct device *dev);
 
-	struct device *dev;
+	struct device dev;
 
 	struct list_head list;
 	struct list_head device_list;
-- 
2.39.5




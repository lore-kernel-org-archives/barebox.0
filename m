Delivery-date: Fri, 06 Jun 2025 07:59:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNQ6X-004HKZ-1n
	for lore@lore.pengutronix.de;
	Fri, 06 Jun 2025 07:59:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNQ6Q-0004vQ-PM
	for lore@pengutronix.de; Fri, 06 Jun 2025 07:59:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tjtmol9oNAOPAbCBEViOuxoACsgp9AdjeH5T/i38X58=; b=osI9Z6jRKdW2IKQ419H4suDmS6
	uMwlRU2x8sSG0rSwiRduU9MUWeiY7EGOMqheIo3Tc414pkfclv9Y+01a8rhOwcgvnoD1ihbODJD6L
	OgPzuw0gNljFlh5U3nQFFY0P/EwTgppqx1PSqJ3KqLAilsVK/zDvSDY0TQ9Aq26iJBr9rIXfntJ2O
	0wk788KDaq4OOYDtCR8EdMYRsr2/1+1FPI8Uk5x9PoTXDFa1lv6rUjrlQOGHhRbjIwHm9G2oc9cxA
	A1MWA1UKlljgPDojk+5Lcpfv2xsNBACnehZehETrWMOrr6EmOYSL97EqWqa9Ow4WLPAzf/Gn55G/u
	iEWa0+PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNQ5Y-0000000H9Ju-06JM;
	Fri, 06 Jun 2025 05:58:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNQ5Q-0000000H9DN-2mRO
	for barebox@lists.infradead.org;
	Fri, 06 Jun 2025 05:57:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNQ5O-0003r4-HR; Fri, 06 Jun 2025 07:57:50 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  6 Jun 2025 07:57:33 +0200
Message-Id: <20250606055748.1990383-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250606055748.1990383-1-a.fatoum@barebox.org>
References: <20250606055748.1990383-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_225752_729204_F7F44FD5 
X-CRM114-Status: GOOD (  17.20  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 01/16] driver: bus: embed bus driver node into bus
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of keeping the bus device in a separate allocation, fold it into
the bus struct itself.

The benefit is that this would allow us to arrive at the bus from the
device and thus be able to chain them using device classes.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/devinfo.c       |  2 +-
 common/tlv/bus.c         |  4 ++--
 drivers/amba/bus.c       |  2 +-
 drivers/base/bus.c       |  7 +++----
 drivers/base/driver.c    |  2 +-
 drivers/bus/acpi.c       | 12 ++++++------
 drivers/efi/efi-device.c | 14 +++++++-------
 include/driver.h         |  2 +-
 8 files changed, 22 insertions(+), 23 deletions(-)

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
 
diff --git a/drivers/bus/acpi.c b/drivers/bus/acpi.c
index 92325c16e234..f586b605d0d4 100644
--- a/drivers/bus/acpi.c
+++ b/drivers/bus/acpi.c
@@ -138,7 +138,7 @@ static struct device *acpi_add_device(struct bus_type *bus,
 	dev = xzalloc(sizeof(*dev));
 
 	dev->bus = bus;
-	dev->parent = bus->dev;
+	dev->parent = &bus->dev;
 	dev->id = DEVICE_ID_DYNAMIC;
 	devinfo_add(dev, acpi_devinfo);
 
@@ -149,7 +149,7 @@ static struct device *acpi_add_device(struct bus_type *bus,
 
 static int acpi_register_devices(struct bus_type *bus)
 {
-	struct efi_config_table *table = bus->dev->priv;
+	struct efi_config_table *table = bus->dev.priv;
 	struct acpi_rsdp *rsdp;
 	struct acpi_rsdt *root;
 	size_t entry_count;
@@ -165,7 +165,7 @@ static int acpi_register_devices(struct bus_type *bus)
 	 * 5.2.5.2 Finding the RSDP on UEFI Enabled Systems
 	 */
 	if (memcmp("RSD PTR ", rsdp->signature, sizeof(rsdp->signature))) {
-		dev_dbg(bus->dev, "unexpected signature at start of config table: '%.8s'\n",
+		dev_dbg(&bus->dev, "unexpected signature at start of config table: '%.8s'\n",
 			rsdp->signature);
 		return -ENODEV;
 	}
@@ -183,12 +183,12 @@ static int acpi_register_devices(struct bus_type *bus)
 	}
 
 	if (acpi_sigcmp(sig, root->sdt.signature)) {
-		dev_err(bus->dev, "Expected %s, but found '%.4s'.\n",
+		dev_err(&bus->dev, "Expected %s, but found '%.4s'.\n",
 			sig, root->sdt.signature);
 		return -EIO;
 	}
 
-	dev_info(bus->dev, "Found %s (OEM: %.8s) with %zu entries\n",
+	dev_info(&bus->dev, "Found %s (OEM: %.8s) with %zu entries\n",
 		sig, root->sdt.oem_id, entry_count);
 
 	for (i = 0; i < entry_count; i++) {
@@ -232,7 +232,7 @@ static int efi_acpi_probe(void)
 	if (!table)
 		return 0;
 
-	acpi_bus.dev->priv = table;
+	acpi_bus.dev.priv = table;
 	return acpi_register_devices(&acpi_bus);
 }
 postcore_efi_initcall(efi_acpi_probe);
diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index d5eda66cd55a..46328d12bcdf 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -418,17 +418,17 @@ static int efi_init_devices(void)
 
 	bus_register(&efi_bus);
 
-	dev_add_param_fixed(efi_bus.dev, "fw_vendor", fw_vendor);
+	dev_add_param_fixed(&efi_bus.dev, "fw_vendor", fw_vendor);
 	free(fw_vendor);
 
-	dev_add_param_uint32_fixed(efi_bus.dev, "major", sys_major, "%u");
-	dev_add_param_uint32_fixed(efi_bus.dev, "minor", sys_minor, "%u");
-	dev_add_param_uint32_fixed(efi_bus.dev, "fw_revision", efi_sys_table->fw_revision, "%u");
-	dev_add_param_bool_fixed(efi_bus.dev, "secure_boot", secure_boot);
-	dev_add_param_bool_fixed(efi_bus.dev, "secure_mode",
+	dev_add_param_uint32_fixed(&efi_bus.dev, "major", sys_major, "%u");
+	dev_add_param_uint32_fixed(&efi_bus.dev, "minor", sys_minor, "%u");
+	dev_add_param_uint32_fixed(&efi_bus.dev, "fw_revision", efi_sys_table->fw_revision, "%u");
+	dev_add_param_bool_fixed(&efi_bus.dev, "secure_boot", secure_boot);
+	dev_add_param_bool_fixed(&efi_bus.dev, "secure_mode",
 				 secure_boot & setup_mode);
 
-	devinfo_add(efi_bus.dev, efi_businfo);
+	devinfo_add(&efi_bus.dev, efi_businfo);
 
 	efi_register_devices();
 
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




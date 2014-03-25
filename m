Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.reverze.net ([82.161.88.7] helo=fsm.reverze.net)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WSPHW-0000rG-MT
 for barebox@lists.infradead.org; Tue, 25 Mar 2014 11:12:35 +0000
Message-ID: <53316480.2030103@reverze.net>
Date: Tue, 25 Mar 2014 12:12:00 +0100
From: Michel Stam <michel@reverze.net>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] x86: Add support for IDE on the legacy I/O ports
To: barebox@lists.infradead.org

---
  arch/x86/boards/x86_generic/generic_pc.c | 71 ++++++++++++++++++++++++
  drivers/ata/ide-sff.c                    | 94 
++++++++++++++++++++++++++------
  drivers/ata/intf_platform_ide.c          | 14 ++++-
  include/ata_drive.h                      |  1 +
  4 files changed, 161 insertions(+), 19 deletions(-)

diff --git a/arch/x86/boards/x86_generic/generic_pc.c 
b/arch/x86/boards/x86_generic/generic_pc.c
index 74a7224..6152afc 100644
--- a/arch/x86/boards/x86_generic/generic_pc.c
+++ b/arch/x86/boards/x86_generic/generic_pc.c
@@ -27,6 +27,10 @@
  #include <ns16550.h>
  #include <linux/err.h>
  +#ifdef CONFIG_DISK_INTF_PLATFORM_IDE
+#include <platform_ide.h>
+#endif
+
  /*
   * These datas are from the MBR, created by the linker and filled by the
   * setup tool while installing barebox on the disk drive
@@ -41,6 +45,55 @@ extern uint8_t pers_env_drive;
   */
  #define PATCH_AREA_PERS_SIZE_UNUSED 0x000
  +#ifdef CONFIG_DISK_INTF_PLATFORM_IDE
+
+static struct ide_port_info ide_plat = {
+	.ioport_shift = 0,
+	.dataif_be = 0,
+};
+
+static struct resource primary_ide_resources[] = {
+	{
+		.name = "base",
+		.start = 0x1f0,
+		.end =  0x1f8,
+		.flags = IORESOURCE_IO
+	},
+	{
+		.name = "alt",
+		.start = 0x3f6,
+		.end =  0x3f8,
+		.flags = IORESOURCE_IO
+	}
+};
+
+static struct resource secondary_ide_resources[] = {
+	{
+		.name = "base",
+		.start = 0x170,
+		.end =  0x177,
+		.flags = IORESOURCE_IO
+	},
+};
+
+static struct device_d primary_ide_device = {
+	.name = "ide_intf",
+	.id = 0,
+	.platform_data = &ide_plat,
+	.resource = primary_ide_resources,
+	.num_resources = ARRAY_SIZE( primary_ide_resources ),
+};
+
+static struct device_d secondary_ide_device = {
+	.name = "ide_intf",
+	.id = 1,
+	.platform_data = &ide_plat,
+	.resource = secondary_ide_resources,
+	.num_resources = ARRAY_SIZE( secondary_ide_resources ),
+};
+
+#endif /* CONFIG_DISK_INTF_PLATFORM_IDE */
+
  static int devices_init(void)
  {
  	struct cdev *cdev;
@@ -48,9 +101,26 @@ static int devices_init(void)
  	/* extended memory only */
  	add_mem_device("ram0", 0x0, bios_get_memsize() << 10,
  		       IORESOURCE_MEM_WRITEABLE);
+#ifdef CONFIG_DISK_BIOS
  	add_generic_device("biosdrive", DEVICE_ID_DYNAMIC, NULL, 0, 0, 
IORESOURCE_MEM,
  			NULL);
+#endif
+
+#ifdef CONFIG_DISK_INTF_PLATFORM_IDE
+	platform_device_register( &primary_ide_device );
+	platform_device_register( &secondary_ide_device );
+
+	if (pers_env_size != PATCH_AREA_PERS_SIZE_UNUSED) {
+		cdev = devfs_add_partition("ata0",
+				pers_env_storage * 512,
+				(unsigned)pers_env_size * 512,
+				DEVFS_PARTITION_FIXED, "env0");
+		printf("Partition: %ld\n", IS_ERR(cdev) ? PTR_ERR(cdev) : 0);
+	} else
+		printf("No persistent storage defined\n");
+#endif /* CONFIG_DISK_INTF_PLATFORM_IDE */
  +#ifdef CONFIG_DISK_BIOS
  	if (pers_env_size != PATCH_AREA_PERS_SIZE_UNUSED) {
  		cdev = devfs_add_partition("biosdisk0",
  				pers_env_storage * 512,
@@ -59,6 +129,7 @@ static int devices_init(void)
  		printf("Partition: %ld\n", IS_ERR(cdev) ? PTR_ERR(cdev) : 0);
  	} else
  		printf("No persistent storage defined\n");
+#endif
           return 0;
  }
diff --git a/drivers/ata/ide-sff.c b/drivers/ata/ide-sff.c
index 3d5932e..809a129 100644
--- a/drivers/ata/ide-sff.c
+++ b/drivers/ata/ide-sff.c
@@ -15,13 +15,71 @@
  #define DISK_SLAVE 1
   /**
+ * Read a byte from the ATA controller
+ * @param ide IDE port structure
+ * @param addr Register adress
+ * @return Register's content
+ */
+static inline uint8_t ata_rd_byte(struct ide_port *ide, void __iomem 
*addr )
+{
+	if (!ide->io.mmio)
+		return (uint8_t) inb((int) addr);
+	else
+		return readb(addr);
+}
+
+/**
+ * Write a byte to the ATA controller
+ * @param ide IDE port structure
+ * @param value Value to write
+ * @param addr Register adress
+ * @return Register's content
+ */
+static inline void ata_wr_byte(struct ide_port *ide, uint8_t value, 
void __iomem *addr )
+{
+	if (!ide->io.mmio)
+		outb(value, (int) addr);
+	else
+		writeb(value,addr);
+}
+
+/**
+ * Read a word from the ATA controller
+ * @param ide IDE port structure
+ * @param addr Register adress
+ * @return Register's content
+ */
+static inline uint16_t ata_rd_word(struct ide_port *ide, void __iomem 
*addr )
+{
+	if (!ide->io.mmio)
+		return (uint16_t) inw((int) addr);
+	else
+		return readw(addr);
+}
+
+/**
+ * Write a word to the ATA controller
+ * @param ide IDE port structure
+ * @param value Value to write
+ * @param addr Register adress
+ * @return Register's content
+ */
+static inline void ata_wr_word(struct ide_port *ide, uint16_t value, 
void __iomem *addr )
+{
+	if (!ide->io.mmio)
+		outw(value, (int) addr);
+	else
+		writew(value,addr);
+}
+
+/**
   * Read the status register of the ATA drive
   * @param io Register file
   * @return Register's content
   */
  static uint8_t ata_rd_status(struct ide_port *ide)
  {
-	return readb(ide->io.status_addr);
+	return ata_rd_byte(ide,ide->io.status_addr);
  }
   /**
@@ -83,12 +141,12 @@ static int ata_set_lba_sector(struct ide_port *ide, 
unsigned drive, uint64_t num
  	if (num > 0x0FFFFFFF || drive > 1)
  		return -EINVAL;
  -	writeb(0xA0 | LBA_FLAG | drive << 4 | num >> 24, ide->io.device_addr);
-	writeb(0x00, ide->io.error_addr);
-	writeb(0x01, ide->io.nsect_addr);
-	writeb(num, ide->io.lbal_addr);	/* 0 ... 7 */
-	writeb(num >> 8, ide->io.lbam_addr); /* 8 ... 15 */
-	writeb(num >> 16, ide->io.lbah_addr); /* 16 ... 23 */
+	ata_wr_byte(ide, 0xA0 | LBA_FLAG | drive << 4 | num >> 24, 
ide->io.device_addr);
+	ata_wr_byte(ide, 0x00, ide->io.error_addr);
+	ata_wr_byte(ide, 0x01, ide->io.nsect_addr);
+	ata_wr_byte(ide, num, ide->io.lbal_addr);	/* 0 ... 7 */
+	ata_wr_byte(ide, num >> 8, ide->io.lbam_addr); /* 8 ... 15 */
+	ata_wr_byte(ide, num >> 16, ide->io.lbah_addr); /* 16 ... 23 */
   	return 0;
  }
@@ -107,7 +165,7 @@ static int ata_wr_cmd(struct ide_port *ide, uint8_t cmd)
  	if (rc != 0)
  		return rc;
  -	writeb(cmd, ide->io.command_addr);
+	ata_wr_byte(ide, cmd, ide->io.command_addr);
  	return 0;
  }
  @@ -118,7 +176,7 @@ static int ata_wr_cmd(struct ide_port *ide, 
uint8_t cmd)
   */
  static void ata_wr_dev_ctrl(struct ide_port *ide, uint8_t val)
  {
-	writeb(val, ide->io.ctl_addr);
+	ata_wr_byte(ide, val, ide->io.ctl_addr);
  }
   /**
@@ -133,10 +191,10 @@ static void ata_rd_sector(struct ide_port *ide, 
void *buf)
   	if (ide->io.dataif_be) {
  		for (; u > 0; u--)
-			*b++ = be16_to_cpu(readw(ide->io.data_addr));
+			*b++ = be16_to_cpu(ata_rd_word(ide, ide->io.data_addr));
  	} else {
  		for (; u > 0; u--)
-			*b++ = le16_to_cpu(readw(ide->io.data_addr));
+			*b++ = le16_to_cpu(ata_rd_word(ide, ide->io.data_addr));
  	}
  }
  @@ -152,10 +210,10 @@ static void ata_wr_sector(struct ide_port *ide, 
const void *buf)
   	if (ide->io.dataif_be) {
  		for (; u > 0; u--)
-			writew(cpu_to_be16(*b++), ide->io.data_addr);
+			ata_wr_word(ide, cpu_to_be16(*b++), ide->io.data_addr);
  	} else {
  		for (; u > 0; u--)
-			writew(cpu_to_le16(*b++), ide->io.data_addr);
+			ata_wr_word(ide, cpu_to_le16(*b++), ide->io.data_addr);
  	}
  }
  @@ -169,10 +227,10 @@ static int ide_read_id(struct ata_port *port, 
void *buf)
  	struct ide_port *ide = to_ata_drive_access(port);
  	int rc;
  -	writeb(0xA0, ide->io.device_addr);	/* FIXME drive */
-	writeb(0x00, ide->io.lbal_addr);
-	writeb(0x00, ide->io.lbam_addr);
-	writeb(0x00, ide->io.lbah_addr);
+	ata_wr_byte(ide, 0xA0, ide->io.device_addr);	/* FIXME drive */
+	ata_wr_byte(ide, 0x00, ide->io.lbal_addr);
+	ata_wr_byte(ide, 0x00, ide->io.lbam_addr);
+	ata_wr_byte(ide, 0x00, ide->io.lbah_addr);
   	rc = ata_wr_cmd(ide, ATA_CMD_ID_ATA);
  	if (rc != 0)
@@ -327,6 +385,8 @@ int ide_port_register(struct ide_port *ide)
  	ide->port.ops = &ide_ops;
   	ret = ata_port_register(&ide->port);
+	if ( !ret )
+		ata_port_detect(&ide->port);
   	if (ret)
  		free(ide);
diff --git a/drivers/ata/intf_platform_ide.c 
b/drivers/ata/intf_platform_ide.c
index 8ae0f05..24f78f4 100644
--- a/drivers/ata/intf_platform_ide.c
+++ b/drivers/ata/intf_platform_ide.c
@@ -89,8 +89,18 @@ static int platform_ide_probe(struct device_d *dev)
  	}
   	ide = xzalloc(sizeof(*ide));
-	reg_base = dev_request_mem_region(dev, 0);
-	alt_base = dev_request_mem_region(dev, 1);
+	reg_base = dev_request_region(dev, 0, IORESOURCE_MEM);
+	if (reg_base != NULL)
+	{
+		alt_base = dev_request_region(dev, 1, IORESOURCE_MEM);
+		ide->io.mmio = 1;
+	}
+	else
+	{
+		reg_base = dev_request_region(dev, 0, IORESOURCE_IO);
+		alt_base = dev_request_region(dev, 1, IORESOURCE_IO);
+	}
+
  	platform_ide_setup_port(reg_base, alt_base, &ide->io, 
pdata->ioport_shift);
  	ide->io.reset = pdata->reset;
  	ide->io.dataif_be = pdata->dataif_be;
diff --git a/include/ata_drive.h b/include/ata_drive.h
index 6d6cca4..44073cb 100644
--- a/include/ata_drive.h
+++ b/include/ata_drive.h
@@ -119,6 +119,7 @@ struct ata_ioports {
  	/* hard reset line handling */
  	void (*reset)(int);	/* true: assert reset, false: de-assert reset */
  	int dataif_be;	/* true if 16 bit data register is big endian */
+	int mmio; /* true if memory-mapped io */
  };
   struct ata_port;
-- 
1.8.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

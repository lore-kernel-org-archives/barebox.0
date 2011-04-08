Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8CzH-00014b-Li
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 14:48:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Apr 2011 16:48:36 +0200
Message-Id: <1302274116-9215-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302274116-9215-1-git-send-email-s.hauer@pengutronix.de>
References: <1302274116-9215-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/4] mci: make write support optional
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/Kconfig    |    5 +++++
 drivers/mci/mci-core.c |    6 ++++++
 2 files changed, 11 insertions(+), 0 deletions(-)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 9cb7eb6..cfed72f 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -25,6 +25,11 @@ config MCI_INFO
 	  This entry adds more info about the attached MCI card, when the
 	  'devinfo' command is used on the mci device.
 
+config MCI_WRITE
+	bool "Support writing to MCI cards"
+	default y
+	select ATA_WRITE
+
 comment "--- MCI host drivers ---"
 
 config MCI_MXS
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 8fd948c..4752b3d 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -106,6 +106,7 @@ static void *sector_buf;
  * @param blocknum Block number to write
  * @return Transaction status (0 on success)
  */
+#ifdef CONFIG_MCI_WRITE
 static int mci_block_write(struct device_d *mci_dev, const void *src, unsigned blocknum)
 {
 	struct mci *mci = GET_MCI_DATA(mci_dev);
@@ -132,6 +133,7 @@ static int mci_block_write(struct device_d *mci_dev, const void *src, unsigned b
 
 	return mci_send_cmd(mci_dev, &cmd, &data);
 }
+#endif
 
 /**
  * Read one block of data from the card
@@ -944,6 +946,7 @@ static int sd_send_if_cond(struct device_d *mci_dev)
  *
  * This routine expects the buffer has the correct size to read all data!
  */
+#ifdef CONFIG_MCI_WRITE
 static int mci_sd_write(struct device_d *disk_dev, uint64_t sector_start,
 			unsigned sector_count, const void *buffer)
 {
@@ -980,6 +983,7 @@ static int mci_sd_write(struct device_d *disk_dev, uint64_t sector_start,
 
 	return 0;
 }
+#endif
 
 /**
  * Read a chunk of sectors from media
@@ -1218,7 +1222,9 @@ static int mci_card_probe(struct device_d *mci_dev)
 	disk_dev = xzalloc(sizeof(struct device_d) + sizeof(struct ata_interface));
 	p = (struct ata_interface*)&disk_dev[1];
 
+#ifdef CONFIG_MCI_WRITE
 	p->write = mci_sd_write;
+#endif
 	p->read = mci_sd_read;
 	p->priv = mci_dev;
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

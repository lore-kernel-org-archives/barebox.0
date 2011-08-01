Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo4.mail-out.ovh.net ([188.165.36.253]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qno33-0008Si-Pt
	for barebox@lists.infradead.org; Mon, 01 Aug 2011 08:40:30 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 5C86FFFA2E8
	for <barebox@lists.infradead.org>;
	Mon,  1 Aug 2011 10:41:23 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  1 Aug 2011 10:21:16 +0200
Message-Id: <1312186876-13193-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110801080301.GC6255@game.jcrosoft.org>
References: <20110801080301.GC6255@game.jcrosoft.org>
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
Subject: [PATCH 21/23] mci-core: switch to resource
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mci/mci-core.c |   10 ++--------
 1 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 3cf364c..fea2691 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1175,7 +1175,6 @@ static int mci_card_probe(struct device_d *mci_dev)
 {
 	struct mci *mci = GET_MCI_DATA(mci_dev);
 	struct mci_host *host = GET_MCI_PDATA(mci_dev);
-	struct device_d *disk_dev;
 	struct ata_interface *p;
 	int rc;
 
@@ -1221,8 +1220,7 @@ static int mci_card_probe(struct device_d *mci_dev)
 	 * An MMC/SD card acts like an ordinary disk.
 	 * So, re-use the disk driver to gain access to this media
 	 */
-	disk_dev = xzalloc(sizeof(struct device_d) + sizeof(struct ata_interface));
-	p = (struct ata_interface*)&disk_dev[1];
+	p = xzalloc(sizeof(struct ata_interface));
 
 #ifdef CONFIG_MCI_WRITE
 	p->write = mci_sd_write;
@@ -1230,11 +1228,7 @@ static int mci_card_probe(struct device_d *mci_dev)
 	p->read = mci_sd_read;
 	p->priv = mci_dev;
 
-	strcpy(disk_dev->name, "disk");
-	disk_dev->size = mci->capacity;
-	disk_dev->platform_data = p;
-
-	register_device(disk_dev);
+	add_generic_device("disk", -1, NULL, 0, mci->capacity, IORESOURCE_MEM, p);
 
 	pr_debug("SD Card successfully added\n");
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

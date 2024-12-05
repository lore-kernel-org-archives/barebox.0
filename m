Delivery-date: Thu, 05 Dec 2024 09:57:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJ7gH-004GEu-0f
	for lore@lore.pengutronix.de;
	Thu, 05 Dec 2024 09:57:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJ7gH-0002EH-24
	for lore@pengutronix.de; Thu, 05 Dec 2024 09:57:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HjbB+0vA71GvAvjfG/xgx+AdHQf9WBF1qlbCosBoHYY=; b=p0a6O8PgxdPXEzzUFzkcqLEzIz
	xJF+JC0oCUAbcgyXca2tdZLAGprWdN/kvpzel0odiCqN4puy770oB5427O95MZLxFJMfgvtofdzld
	937+epJ3h0bU+s8BK7Hz+wL7OmSzihHM6VR+PXeRyLkvvZ4lKwkloGzhZJEbmMPkTXt/VogHAIKNC
	6LBvNgDzPTDvr9dyiZzGI3rdFOB/ZRPra66BPdRd3Cb8xT2hIyj2KtCE+YlNJzSCSUnxUskMhSdxK
	FI9JdNcUsYQpW0uSPf6XaYYcx2IxkKEkoCntOf/roKLL6PLNT5EHoEKYg2C9v5aECCfrW6dfrn+jr
	BLNt/BUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ7fe-0000000FFn8-1fjq;
	Thu, 05 Dec 2024 08:57:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ7e7-0000000FFRv-1TXK
	for barebox@lists.infradead.org;
	Thu, 05 Dec 2024 08:55:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJ7e4-0001vQ-3U; Thu, 05 Dec 2024 09:55:36 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJ7e3-001nHz-0V;
	Thu, 05 Dec 2024 09:55:35 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJ7e3-00GLtK-2b;
	Thu, 05 Dec 2024 09:55:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  5 Dec 2024 09:55:29 +0100
Message-Id: <20241205085530.3897385-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_005539_392477_48D9B6C3 
X-CRM114-Status: GOOD (  16.77  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] mci: parse upstream boot/gp partition binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux recently added support for device tree partition binding for
SD/eMMC devices. Linux supports partitioning the main area as well as
the boot and gp areas. This adds support for the same binding to
barebox.

barebox already had support for partitioning the eMMC boot partitions,
unfortunately with different node names. Try the upstream binding first
and fall back to the barebox binding if upstream compatible nodes are
not found.

Note that not only the node names for the boot partitions differ in
both bindings, but also the numbering. "boot0-partitions" in the
barebox binding matches "partitions-boot1" in the upstream binding.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../devicetree/bindings/mtd/partition.rst     |  3 +
 drivers/mci/mci-core.c                        | 62 ++++++++++++-------
 2 files changed, 43 insertions(+), 22 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/partition.rst b/Documentation/devicetree/bindings/mtd/partition.rst
index 0ba117dffc..fb228c63a3 100644
--- a/Documentation/devicetree/bindings/mtd/partition.rst
+++ b/Documentation/devicetree/bindings/mtd/partition.rst
@@ -23,6 +23,9 @@ the partition table node is named appropriately:
 * ``boot0-partitions`` : boot0 partition
 * ``boot1-partitions`` : boot1 partition
 
+``boot0-partitions`` and ``boot1-partitions`` are deprecated. Use ``partitions-boot1``
+and ``partitions-boot2`` instead which is supported under Linux as well.
+
 Examples:
 
 .. code-block:: none
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 48a3df9ec9..eb723a2711 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -2582,11 +2582,49 @@ static const char *mci_boot_names[] = {
 	"user",
 };
 
+static struct device_node *mci_get_partition_node(struct device_node *hwnode,
+						  unsigned int type,
+						  unsigned int index)
+{
+	struct device_node *np;
+	char partnodename[sizeof("bootx-partitions")];
+
+	if (index > 8)
+		return NULL;
+
+	switch (type) {
+	case MMC_BLK_DATA_AREA_BOOT:
+		sprintf(partnodename, "partitions-boot%u", index + 1);
+		break;
+	case MMC_BLK_DATA_AREA_MAIN:
+		return hwnode;
+	case MMC_BLK_DATA_AREA_GP:
+		sprintf(partnodename, "partitions-gp%u", index + 1);
+		break;
+	default:
+		return NULL;
+	}
+
+	np = of_get_child_by_name(hwnode, partnodename);
+	if (np)
+		return np;
+
+	if (type != MMC_BLK_DATA_AREA_BOOT)
+		return NULL;
+
+	/*
+	 * barebox historically understands "bootx-partitions" with x starting
+	 * at zero.
+	 */
+	sprintf(partnodename, "boot%u-partitions", index);
+
+	return of_get_child_by_name(hwnode, partnodename);
+}
+
 static int mci_register_partition(struct mci_part *part)
 {
 	struct mci *mci = part->mci;
 	struct mci_host *host = mci->host;
-	const char *partnodename = NULL;
 	struct device_node *np;
 	int rc;
 
@@ -2605,27 +2643,7 @@ static int mci_register_partition(struct mci_part *part)
 	}
 	dev_info(&mci->dev, "registered %s\n", part->blk.cdev.name);
 
-	np = host->hw_dev->of_node;
-
-	/* create partitions on demand */
-	switch (part->area_type) {
-	case MMC_BLK_DATA_AREA_BOOT:
-		if (part->idx == 0)
-			partnodename = "boot0-partitions";
-		else
-			partnodename = "boot1-partitions";
-
-		np = of_get_child_by_name(host->hw_dev->of_node,
-					  partnodename);
-		break;
-	case MMC_BLK_DATA_AREA_MAIN:
-		break;
-	case MMC_BLK_DATA_AREA_GP:
-		break;
-	default:
-		return 0;
-	}
-
+	np = mci_get_partition_node(host->hw_dev->of_node, part->area_type, part->idx);
 	if (np) {
 		of_parse_partitions(&part->blk.cdev, np);
 
-- 
2.39.5




Delivery-date: Mon, 11 Aug 2025 14:29:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRf1-009KfD-13
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:29:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRej-0005ib-L4
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:29:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i7y/ZXh6/xlD5O78XA93ZY2Bc5JYB/WvNp9C7bZDy3w=; b=LUaUMPF2jDx9bZ5c+d/BD7iBcx
	OH54JGLDKEovVYLRiabmKyroUIJ+k8GWwEr6scmF7Fku8S54agPpemO3nWqRDFEOIcszZ2CEjNip8
	jfkdmyakLaM7ljZXOjwImDbcypDdo8ShduZPfq5v4it1Y1ps/BWgz8p+T7RAQx31ZOrHmrCF/sb5E
	9QPaEGhUO7i+miLu2xTM5S3SnMs6AjVk91p+5AwVzEIrYVTfF6/SOPkABQ23EgURkHDyA1GEJC4Ym
	k4RNG4PGKV5bdfO8ZXj7cyqG5raDGGl9/0/jQwuOtzImdOwo3XZ3iQCP0Da9GAz2hUAi+B30cjh7L
	WK7xOp7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdu-00000007dsG-0uOX;
	Mon, 11 Aug 2025 12:28:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdf-00000007dW3-0En7
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdd-0004WP-PU; Mon, 11 Aug 2025 14:28:29 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:27:53 +0200
Message-Id: <20250811122824.1667791-14-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052831_090386_5F16C635 
X-CRM114-Status: GOOD (  10.24  )
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
Subject: [PATCH 13/44] drivers: use dev_add_param_uint32_fixed for IDs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Cut down on the use of temporary buffers for formatting integers in
fixed parameters by using the dev_add_param_uint32_fixed that's
especially meant for this.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/mfd/superio.c |  7 ++-----
 drivers/pci/bus.c     | 16 +++++-----------
 drivers/w1/w1.c       | 10 +++-------
 3 files changed, 10 insertions(+), 23 deletions(-)

diff --git a/drivers/mfd/superio.c b/drivers/mfd/superio.c
index 891c8ace52e2..9917c0ff9a59 100644
--- a/drivers/mfd/superio.c
+++ b/drivers/mfd/superio.c
@@ -68,7 +68,6 @@ void superio_chip_add(struct superio_chip *siochip)
 {
 	struct regmap *regmap;
 	char *chipname;
-	char str[5];
 	int ret;
 
 	chipname = xasprintf("superio-%04x:%04x@%02x",
@@ -79,10 +78,8 @@ void superio_chip_add(struct superio_chip *siochip)
 
 	siochip->dev->priv = siochip;
 
-	sprintf(str, "%04x", siochip->vid);
-	dev_add_param_fixed(siochip->dev, "vendor", str);
-	sprintf(str, "%04x", siochip->devid);
-	dev_add_param_fixed(siochip->dev, "device", str);
+	dev_add_param_uint32_fixed(siochip->dev, "vendor", siochip->vid, "%04x");
+	dev_add_param_uint32_fixed(siochip->dev, "device", siochip->devid, "%04x");
 
 	regmap = regmap_init(siochip->dev, &superio_regmap_bus, siochip,
 			     &superio_regmap_config);
diff --git a/drivers/pci/bus.c b/drivers/pci/bus.c
index c8f5b592428d..a5da84d282b4 100644
--- a/drivers/pci/bus.c
+++ b/drivers/pci/bus.c
@@ -133,7 +133,6 @@ int pci_register_driver(struct pci_driver *pdrv)
 
 int pci_register_device(struct pci_dev *pdev)
 {
-	char str[6];
 	struct device *dev = &pdev->dev;
 	int ret;
 
@@ -149,16 +148,11 @@ int pci_register_device(struct pci_dev *pdev)
 	if (ret)
 		return ret;
 
-	sprintf(str, "%02x", pdev->devfn);
-	dev_add_param_fixed(dev, "devfn", str);
-	sprintf(str, "%04x", (pdev->class >> 8) & 0xffff);
-	dev_add_param_fixed(dev, "class", str);
-	sprintf(str, "%04x", pdev->vendor);
-	dev_add_param_fixed(dev, "vendor", str);
-	sprintf(str, "%04x", pdev->device);
-	dev_add_param_fixed(dev, "device", str);
-	sprintf(str, "%04x", pdev->revision);
-	dev_add_param_fixed(dev, "revision", str);
+	dev_add_param_uint32_fixed(dev, "devfn", pdev->devfn, "%02x");
+	dev_add_param_uint32_fixed(dev, "class", (pdev->class >> 8) & 0xffff, "%04x");
+	dev_add_param_uint32_fixed(dev, "vendor", pdev->vendor, "%04x");
+	dev_add_param_uint32_fixed(dev, "device", pdev->device, "%04x");
+	dev_add_param_uint32_fixed(dev, "revision", pdev->revision, "%04x");
 
 	return 0;
 }
diff --git a/drivers/w1/w1.c b/drivers/w1/w1.c
index 61f21ff446b8..3944c4676ee8 100644
--- a/drivers/w1/w1.c
+++ b/drivers/w1/w1.c
@@ -411,7 +411,6 @@ static bool w1_is_registered(struct w1_bus *bus, u64 rn)
 
 static int w1_device_register(struct w1_bus *bus, struct w1_device *dev)
 {
-	char str[18];
 	int ret;
 
 	dev_set_name(&dev->dev, "w1-%x-", dev->fid);
@@ -425,12 +424,9 @@ static int w1_device_register(struct w1_bus *bus, struct w1_device *dev)
 	if (ret)
 		return ret;
 
-	sprintf(str, "0x%x", dev->fid);
-	dev_add_param_fixed(&dev->dev, "fid", str);
-	sprintf(str, "0x%llx", dev->id);
-	dev_add_param_fixed(&dev->dev, "id", str);
-	sprintf(str, "0x%llx", dev->reg_num);
-	dev_add_param_fixed(&dev->dev, "reg_num", str);
+	dev_add_param_uint32_fixed(&dev->dev, "fid", dev->fid, "0x%x");
+	dev_add_param_uint64_fixed(&dev->dev, "id", dev->id, "0x%llx");
+	dev_add_param_uint64_fixed(&dev->dev, "reg_num", dev->reg_num, "0x%llx");
 
 	return ret;
 }
-- 
2.39.5




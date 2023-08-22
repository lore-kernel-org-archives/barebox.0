Delivery-date: Tue, 22 Aug 2023 09:49:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYM9H-004TvA-Pi
	for lore@lore.pengutronix.de; Tue, 22 Aug 2023 09:49:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYM9F-0002Ug-FO
	for lore@pengutronix.de; Tue, 22 Aug 2023 09:49:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/xUjzQg5ZW2qAWU3DSJC/6zdBHNHxBpF75jj3oT1/KY=; b=H29vI4mduf4JHgATViP1JfQgiA
	oB+cGWCUeCCa1cITuRTMZgqNQuA5TQcNgNOkR8tBMGH+8XyHwvUMGsIi494RerN2IZp0KH6LUN6r7
	ScW5xPU/+LCP0GUv76QBFPc+XjC7U7xx5YkD4mV96UPJPIWr4Q3fMbygI5i+EIK+OIbTEut5kEQzt
	nK9v+K0PsfuuDIpJma0LM1Vllv/R431fOQJ6/vkpFoHIwQrcAvDuxrKyyx+hqMxjjwTPl9Qyf221T
	a1H7Yegqgl11GkJpuuf+DCwB36Prb1PU6ebym5sYdvBIfV19hZSr2EcgI08vynCRN6kBZjETMZhUy
	xObrQmQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYM8A-00FOLP-0z;
	Tue, 22 Aug 2023 07:48:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYM87-00FOJw-2O
	for barebox@bombadil.infradead.org;
	Tue, 22 Aug 2023 07:48:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=/xUjzQg5ZW2qAWU3DSJC/6zdBHNHxBpF75jj3oT1/KY=; b=H8LxvpI3W7oUBrRubJDIbtM7OU
	Z1B36JEa+1kf3psUyTmuoFdlBDkRjTWsRfoqB7Gic30oe4V6TtJgIMb9T3vmu26zSH4HFuGoa4Lzk
	byr6rUhKB1rJc3Hj9e0PFYJUEStfEJxX2I/JHLG1WGpQtYqjediZiBoFDKl/xb6dbKjEWIKf6UOS/
	4S7B/ZxWzvCMfbYf6RPvzoEIPcDtlrJzRUUcgTCtafu6t1GUiuzmfV7Fv/PoZpkFcDVpZFYoP3nQo
	DRBh/Q+CJLEtdE+uKFGPpQK5tuIAGGNmtLsKa7M6QEEnkryH3r0Lr4e0DnibMKnWeQBN5gAKlopXT
	i5cKdQKA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYM81-002aaw-2I
	for barebox@lists.infradead.org;
	Tue, 22 Aug 2023 07:48:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qYM7w-00024K-0o; Tue, 22 Aug 2023 09:48:36 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qYM7v-000lPf-CY; Tue, 22 Aug 2023 09:48:35 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qYM7u-00GO0i-2y;
	Tue, 22 Aug 2023 09:48:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Aug 2023 09:48:32 +0200
Message-Id: <20230822074832.3905525-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230822074832.3905525-1-a.fatoum@pengutronix.de>
References: <20230822074832.3905525-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_084841_821117_AA3DDD49 
X-CRM114-Status: GOOD (  16.19  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] virtio: pci: add support for transitional devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

So far, barebox required that Virt I/O devices it consumes are
parameterized with pci,disable-legacy=on. Otherwise, it bails out with:

  Legacy and transitional devices unsupported

because only modern (specification >= v1.0) devices were supported.

By default, Qemu provides its guests with transitional virtio-pci
devices: These enumerate like legacy devices, but implement the bars of
both legacy and modern devices. Add support for transitional device, so
pci,disable-legacy=on is not required any longer. we still leave
pci,disable-modern=off in the scripts, but it should not be needed with
any recent Qemu version.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/virtio.rst      | 14 ++++++++------
 drivers/virtio/virtio_pci_common.c |  2 +-
 drivers/virtio/virtio_pci_modern.c | 18 +++++++++++-------
 test/conftest.py                   |  2 +-
 4 files changed, 21 insertions(+), 15 deletions(-)

diff --git a/Documentation/user/virtio.rst b/Documentation/user/virtio.rst
index a8624649f473..046e5dac8225 100644
--- a/Documentation/user/virtio.rst
+++ b/Documentation/user/virtio.rst
@@ -72,15 +72,17 @@ malta VM with one HWRNG and 2 block VirtIO PCI devices::
 
   $ qemu-system-mips -m 256M -M malta -serial stdio         \
     	-bios ./images/barebox-qemu-malta.img -monitor null \
-  	-device virtio-rng-pci,disable-legacy=on            \
+  	-device virtio-rng-pci                              \
   	-drive if=none,file=image1.hdimg,format=raw,id=hd0  \
-  	-device virtio-blk-pci,drive=hd0,disable-legacy=on  \
+  	-device virtio-blk-pci,drive=hd0                    \
   	-drive if=none,file=image2.hdimg,format=raw,id=hd1  \
-  	-device virtio-blk-pci,drive=hd1,disable-legacy=on
+  	-device virtio-blk-pci,drive=hd1
 
-Note the use of ``disable-legacy=on``. barebox doesn't support legacy
-or transitional VirtIO devices. Some versions of QEMU may need to
-have ``,disable-modern=off`` specfied as well.
+Note that barebox does not support non-transitional legacy Virt I/O devices.
+Depending on QEMU version used, it may be required to add
+``disable-legacy=on``, ``disable-modern=off`` or both, e.g.::
+
+  	-device virtio-blk-pci,drive=hd1,disable-legacy=on,disable-modern=off
 
 .. _VirtIO: http://docs.oasis-open.org/virtio/virtio/v1.0/virtio-v1.0.pdf
 .. _qemu: https://www.qemu.org
diff --git a/drivers/virtio/virtio_pci_common.c b/drivers/virtio/virtio_pci_common.c
index b0ac8befd49b..c4644834c797 100644
--- a/drivers/virtio/virtio_pci_common.c
+++ b/drivers/virtio/virtio_pci_common.c
@@ -46,7 +46,7 @@ static int virtio_pci_probe(struct pci_dev *pci_dev,
 
 	rc = virtio_pci_modern_probe(vp_dev);
 	if (rc == -ENODEV)
-		dev_err(&pci_dev->dev, "Legacy and transitional devices unsupported\n");
+		dev_err(&pci_dev->dev, "Legacy devices unsupported\n");
 	if (rc)
 		goto err_enable_device;
 
diff --git a/drivers/virtio/virtio_pci_modern.c b/drivers/virtio/virtio_pci_modern.c
index 5cdea79fbc13..26eefba85bea 100644
--- a/drivers/virtio/virtio_pci_modern.c
+++ b/drivers/virtio/virtio_pci_modern.c
@@ -359,15 +359,19 @@ int virtio_pci_modern_probe(struct virtio_pci_device *vp_dev)
 	int common, notify, device;
 	int offset;
 
-	/*
-	 * We only own devices >= 0x1000 and <= 0x107f. We don't support
-	 * transitional devices, so start at 0x1040 and leave the rest.
-	 */
-	if (pci_dev->device < 0x1040 || pci_dev->device > 0x107f)
+	/* We only own devices >= 0x1000 and <= 0x107f: leave the rest. */
+	if (pci_dev->device < 0x1000 || pci_dev->device > 0x107f)
 		return -ENODEV;
 
-	/* Modern devices: simply use PCI device id, but start from 0x1040. */
-	vp_dev->vdev.id.device = pci_dev->device - 0x1040;
+	if (pci_dev->device < 0x1040) {
+		/* Transitional devices: use the PCI subsystem device id as
+		 * virtio device id, same as legacy driver always did.
+		 */
+		vp_dev->vdev.id.device = pci_dev->subsystem_device;
+	} else {
+		/* Modern devices: simply use PCI device id, but start from 0x1040. */
+		vp_dev->vdev.id.device = pci_dev->device - 0x1040;
+	}
 	vp_dev->vdev.id.vendor = pci_dev->subsystem_vendor;
 
 	/* Check for a common config: if not, driver could fall back to legacy mode (bar 0) */
diff --git a/test/conftest.py b/test/conftest.py
index 2bca3c37e5fb..d2eef5156423 100644
--- a/test/conftest.py
+++ b/test/conftest.py
@@ -61,7 +61,7 @@ def strategy(request, target, pytestconfig):
     if "virtio-mmio" in features:
         virtio = "device"
     if "virtio-pci" in features:
-        virtio = "pci,disable-legacy=on,disable-modern=off"
+        virtio = "pci,disable-modern=off"
         features.append("pci")
 
     if virtio and pytestconfig.option.qemu_rng:
-- 
2.39.2




Delivery-date: Tue, 05 Jul 2022 13:57:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8hBR-006UHL-Tw
	for lore@lore.pengutronix.de; Tue, 05 Jul 2022 13:57:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8hBT-0004jN-JL
	for lore@pengutronix.de; Tue, 05 Jul 2022 13:57:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TcOFr1s9j18rSrZHaPSfyQJnrLOsG2Kwy0MVxOc9PUI=; b=GJpNH783rsGmUZOUEb0t6UPE/K
	huWkOcpbHHYCyiDZSKhcClgJFHXoZhNueZMUBT7/TyrHX21F/Ekwc3v54boOLKiP0PdpvT3KkAY4d
	8H/T+1JjTwcTL7OZgaBlUUfHj3Rme1eMyQvbKjwXjgU0s3vm90BLpc8pCZsIzse4IX3GI+d3YnZuF
	VN+ndVcbxY2XFl48OpXGEfFpUQ7M2JE7p57Oww/ETa6rXDHr/7vUdb+E3v0jPC/wHDkHRVx/6472p
	rmmFWFvhMA7+ZANB8W/VnrNU4TzezMA9JJFxYkn2VoBFFAFYMzm9/Uqtej13St4rpqfnB8FeWZsc1
	ZGlYjXiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8h9r-00HYMa-LV; Tue, 05 Jul 2022 11:56:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8h9e-00HYIH-0x
	for barebox@lists.infradead.org; Tue, 05 Jul 2022 11:55:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1o8h9Y-0004Cx-Oi; Tue, 05 Jul 2022 13:55:40 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o8h9U-004YSu-FA; Tue, 05 Jul 2022 13:55:39 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o8h9X-00Diuj-4J; Tue, 05 Jul 2022 13:55:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  5 Jul 2022 13:55:38 +0200
Message-Id: <20220705115538.3248502-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220705115538.3248502-1-a.fatoum@pengutronix.de>
References: <20220705115538.3248502-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_045546_094652_F999FF93 
X-CRM114-Status: GOOD (  17.57  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 3/3] block: efi: allow disabling /dev/usbdiskX renaming
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some buggy UEFI implementations have been observed to not set
EFI_USB_IO protocol on handles that were instantiated from
USB mass storage. This leads to confusing behavior when barebox
uses /dev/usbdisk for some USB sticks and doesn't for some others.

The proper behavior is not relying on the UEFI and instead check
e.g. GUID of the boot disk image:

  if [ "$bootsource" = usb ]; then
    mydisk = /dev/usbdisk${bootsource_instance}
  else
    mydisk = /dev/disk${bootsource_instance}
  fi

  devlookup -v bootdiskguid $mydisk guid
  if [ "$bootdiskguid" = "my-guid" ]; then
    boot ${mydisk}.1
  else
    boot boochooser
  fi

When going that way, the renaming to usbdisk is just annoying,
so allow disabling it to simplify scripting.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 drivers/block/Kconfig        | 21 +++++++++++++++++++++
 drivers/block/Makefile       |  2 +-
 drivers/block/efi-block-io.c |  3 ++-
 3 files changed, 24 insertions(+), 2 deletions(-)

diff --git a/drivers/block/Kconfig b/drivers/block/Kconfig
index 68a11438dcf3..625e81a4ec97 100644
--- a/drivers/block/Kconfig
+++ b/drivers/block/Kconfig
@@ -5,3 +5,24 @@ config VIRTIO_BLK
         help
           This is the virtual block driver for virtio.  It can be used with
           QEMU based VMMs (like KVM or Xen).
+
+config EFI_BLK
+	bool "EFI block I/O driver"
+	default y
+	depends on EFI_BOOTUP
+
+config EFI_BLK_SEPARATE_USBDISK
+	bool "rename USB devices to /dev/usbdiskX"
+	default y
+	depends on EFI_BLK
+	help
+	  EFI block devices will be normally called /dev/diskX. Setting this
+	  option will cause block devices instantiated from handles with a
+	  EFI_USB_IO protocol to be called /dev/usbdiskX instead. Note that
+	  some buggy UEFI implementations have been observed to not do this
+	  consistently for all USB mass storage. If you need to absolutely
+	  be sure your boot device is a USB mass storage device and you can't
+	  fix your UEFI, consider disabling this options and setting a GUID
+	  for your disk and checking against it with
+
+	    devlookup -v $bootguid /dev/disk$bootsource_instance guid
diff --git a/drivers/block/Makefile b/drivers/block/Makefile
index c50bdc1d02bd..a4e14a559cf7 100644
--- a/drivers/block/Makefile
+++ b/drivers/block/Makefile
@@ -1,3 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-$(CONFIG_EFI_BOOTUP) += efi-block-io.o
+obj-$(CONFIG_EFI_BLK) += efi-block-io.o
 obj-$(CONFIG_VIRTIO_BLK) += virtio_blk.o
diff --git a/drivers/block/efi-block-io.c b/drivers/block/efi-block-io.c
index 086afb378ab4..120e4d8f1ad2 100644
--- a/drivers/block/efi-block-io.c
+++ b/drivers/block/efi-block-io.c
@@ -140,7 +140,8 @@ static void efi_bio_print_info(struct device_d *dev)
 
 static bool is_bio_usbdev(struct efi_device *efidev)
 {
-	return efi_device_has_guid(efidev, EFI_USB_IO_PROTOCOL_GUID);
+	return IS_ENABLED(CONFIG_EFI_BLK_SEPARATE_USBDISK) &&
+		efi_device_has_guid(efidev, EFI_USB_IO_PROTOCOL_GUID);
 }
 
 static int efi_bio_probe(struct efi_device *efidev)
-- 
2.30.2




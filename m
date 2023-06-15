Delivery-date: Thu, 15 Jun 2023 15:38:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9nB8-0083Nx-DP
	for lore@lore.pengutronix.de; Thu, 15 Jun 2023 15:38:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9nB5-00006A-Kd
	for lore@pengutronix.de; Thu, 15 Jun 2023 15:38:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=c+9rJRD/5Jw26c1RNQGNjW+8D+I9TFRIabXN3FJreKE=; b=K4ebxLiXVsb08WMNyvJImG4rsC
	v2fHVToh0rAN6zGp90kfJ0cUXl7U8QAZ/3kunhcc3E304R1IOG8RHbByLqhNz0umgHa0j8B3sFTC2
	wVVW1xmxdqZuzYk/chSjFUOaIuShcGBoJx9YI60Y4G25jD0qA4HXJsVEIMVhUTc5WfzsSXZcG0PtU
	H8gOJZBEKdT0CXUa7KAK7AP/+16WbiFDOkp29SyNZJlqZ2k6SG4x2sPaJgRvyPPHnxJviZ7ts1oOS
	N3JBcJ75OyFZ9oa+arB0cJS+Nl7IH0fZSA6TECGSQ8SmTodU7czcybwxY3gKXsbn0b4HOjBL6hCGx
	u55uI3XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9n9l-00F1jm-0k;
	Thu, 15 Jun 2023 13:36:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9n9i-00F1ip-12
	for barebox@lists.infradead.org;
	Thu, 15 Jun 2023 13:36:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q9n9f-0008Qg-C2; Thu, 15 Jun 2023 15:36:51 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9n9e-007bII-MZ; Thu, 15 Jun 2023 15:36:50 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9n9d-00HGqV-OL; Thu, 15 Jun 2023 15:36:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 15 Jun 2023 15:36:47 +0200
Message-Id: <20230615133647.4115139-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_063654_362756_D2D7E758 
X-CRM114-Status: GOOD (  18.67  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] Documentation: user: usb: bring up to date
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The USB support got a few features since the docs were last touched.
Document them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/usb.rst | 35 ++++++++++++++++++++++++++---------
 1 file changed, 26 insertions(+), 9 deletions(-)

diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
index eaee342956f9..402f76d8da33 100644
--- a/Documentation/user/usb.rst
+++ b/Documentation/user/usb.rst
@@ -13,9 +13,9 @@ devices are not disconnected while barebox is running.
 USB Networking
 ^^^^^^^^^^^^^^
 
-barebox supports ASIX-compatible devices and the SMSC95xx. After
-detection, the device shows up as eth0 and can be used like a regular network
-device.
+barebox supports r8152, ASIX-compatible devices and the SMSC95xx. After
+detection, the device shows up as an extra network device (e.g. eth1) and
+can be used like a regular network device.
 
 To use a USB network device together with the :ref:`command_ifup` command, add the
 following to ``/env/network/eth0-discover``:
@@ -26,6 +26,9 @@ following to ``/env/network/eth0-discover``:
 
   usb
 
+Alternatively, a ``detect -a`` (all) can be forced in ``ifup`` by setting
+``global.net.ifup_force_detect=1``.
+
 USB mass storage
 ^^^^^^^^^^^^^^^^
 
@@ -39,18 +42,21 @@ barebox supports several different USB gadget drivers:
 
 - Device Firmware Upgrade (DFU)
 - Android Fastboot
+- USB mass storage
 - serial gadget
 
 The recommended way to use USB gadget is with the :ref:`command_usbgadget` command.
 While there are individual commands for :ref:`command_dfu` and :ref:`command_usbserial`,
-the :ref:`command_usbgadget` commands supports registering composite gadgets.
+the :ref:`command_usbgadget` commands supports registering composite gadgets, which
+exports multiple functions at once. This happens in the "background" without impacting
+use of the shell.
 
 Partition description
 ^^^^^^^^^^^^^^^^^^^^^
 
-The USB gadget commands for Android Fastboot and DFU take a partition description
-which describes which barebox partitions are exported via USB. The partition
-description is referred to as ``<desc>`` in the command help texts. It has
+The USB gadget commands for Android Fastboot, DFU and the mass storage gadget
+take a partition description which describes which barebox partitions are exported via USB.
+The partition description is referred to as ``<desc>`` in the command help texts. It has
 the general form ``partition(name)flags,partition(name)flags,...``.
 
 The **partition** field is the partition as accessible in barebox. This can be a
@@ -65,7 +71,8 @@ Several **flags** are supported, each denoted by a single character:
 * ``r`` Readback. The partition is allowed to be read back (DFU specific)
 * ``c`` The file shall be created if it doesn't exist. Needed when a regular file is exported.
 * ``u`` The partition is a MTD device and shall be flashed with a UBI image.
-* ``o`` The partition is optional, i.e. if it is not available at initialization time, it is skipped instead of aborting the initialization
+* ``o`` The partition is optional, i.e. if it is not available at initialization time, it is skipped
+        instead of aborting the initialization. This is currently only supported for fastboot.
 
 Example:
 
@@ -223,6 +230,16 @@ and initrd:
   fi
   timeout -k 5 3 fastboot -i 7531 oem exec -- bootm -o /devicetree -r /initrd /kernel
 
+USB Mass storage gadget
+^^^^^^^^^^^^^^^^^^^^^^^
+
+Example exporting barebox block devices to a USB host::
+
+.. code-block:: sh
+
+  usbgadget -S /dev/mmc0(emmc),/dev/mmc1(sd)
+
+
 USB Composite Multifunction Gadget
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 
@@ -244,7 +261,7 @@ after creating the gadget. The gadget can be removed with ``usbgadget -d``.
 USB OTG support
 ---------------
 
-barebox does not have USB OTG support. However, barebox supports some USB cores in
+barebox does not have true USB OTG support. However, barebox supports some USB cores in
 both host and device mode. If these are specified for otg in the device tree
 (dr_mode = "otg";) barebox registers a OTG device which can be used to decide which
 mode shall be used. The device has a ``mode`` parameter which by default has the
-- 
2.39.2




Delivery-date: Tue, 07 Jan 2025 16:52:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVBsT-000NII-1O
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 16:52:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVBsQ-0007S2-1f
	for lore@pengutronix.de; Tue, 07 Jan 2025 16:52:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nQPyDiJjTxj5dZMtyTsCsXoOQ7vvTz708FpTZsTGs8M=; b=0bm1J3180gYOerRhsoWozmGl+I
	iOeM7PO59WTUWc7AB9H6dauSI2dvs9pTD9R8mKAWPhgBqRYkxQBGV5Vbe1QWtq9E+tOY3QKgSZ0rH
	lesjImtS3/H9ScDSv2+VVCnJZ0Nf06vKHdlc2pVsXcepMEXwyK9sKMAphroPbO6RNswTI5Gpjs3NG
	+tPCiyMDoTioX1zZgFihWCQpX95mT64Ifj5A7EtuWiwSohaj688yLPKuitIx+J0TtIYCI+O5peQFp
	AMNgDRbnOgcMbgG52srW/YCvss07pzOMRzDXmxsRacTCDPq1rzF9yJfjFl8LPdPDguSzPi8hy2LBp
	DOYBZkOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVBsC-00000005VlG-1I4T;
	Tue, 07 Jan 2025 15:52:04 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVAia-00000005FEd-15Ps
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 14:38:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1736260669;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nQPyDiJjTxj5dZMtyTsCsXoOQ7vvTz708FpTZsTGs8M=;
	b=uMYR96HvESmFP2b7nvC8C9Cd5LwMVW71k0c5SY4o9sbEmLZ/9fXUTwdPIj3O+Pzn1Vq+2L
	YZ4rDayiRygjbMOlyJg4c2rpPiEMISBLM0JrDl/FNXn/6ZnFOsw8Kjl4bUlaJ2nonMYvUs
	NBEHSJGJGw/a7ZG95kisclmNNkqnL8iVxHPGnfF8m+BnvYnVfuRKHvkzXcq+UYf+1+dOHj
	z/mFFV/oI9p8zFvkkbIcsWdz4gKXPXyLEEuU4aGHS2Flp6mJ0jfV7FAAxYtSDNxIHtrmVi
	05IGj3B/wy8nxPFVl7ojyVxJ73H8gOdTOw3vCGPJ96vGtoKW4JFFZ+BsGTZEhA==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:cfea:c4a:f4aa:bbd])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 7e73f891 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Tue, 7 Jan 2025 15:37:49 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Tue,  7 Jan 2025 15:37:40 +0100
Message-ID: <20250107143740.16903-7-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250107143740.16903-1-jmaselbas@zdiv.net>
References: <20250107143740.16903-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_063804_607778_2B3B5297 
X-CRM114-Status: GOOD (  25.83  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 6/6] Documentation: sunxi: Add some documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add some informations about Allwinner sunxi boardsupport: the general
boot process, how to use sunxi-fel tool, and how to create a bootable
image disk.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 Documentation/boards/sunxi.rst | 132 +++++++++++++++++++++++++++++++++
 1 file changed, 132 insertions(+)
 create mode 100644 Documentation/boards/sunxi.rst

diff --git a/Documentation/boards/sunxi.rst b/Documentation/boards/sunxi.rst
new file mode 100644
index 0000000000..46832559c9
--- /dev/null
+++ b/Documentation/boards/sunxi.rst
@@ -0,0 +1,132 @@
+..
+  SPDX-License-Identifier: GPL-2.0+
+
+  Copyright (C) 2022, Jules Maselbas
+
+Allwinner sunxi
+===============
+
+Because of size constraints Barebox proper cannot boot directly, the uses
+of :doc:`PBL` allows to compress the Barebox image and it's device-tree.
+However this is not enough, and two images are acctually needed. The first
+image is suffixed *_xload* and it only consist of the PBL with a special
+entry point that looks for ``barebox.bin`` the root of a FAT partition.
+Only the SD card is currently searched, but this could also be in eMMC.
+The second image is your standard Barebox plus PBL image (suffixed ``.pblb``).
+
+Boot process
+------------
+
+On power-up Allwinner SoC starts in boot ROM, aka BROM, which will search
+for an eGON image: first from the SD card, then from eMMC. If no image is
+found then the BROM will enter into FEL mode that can be used for initial
+programming and recovery of devices using USB.
+
+Some board may have a button to enter FEL mode at startup. If not, another
+way to enter FEL mode is to not have a valid image eGON image, this can be
+achived by erasing existing eGON image headers.
+
+eGON header
+-----------
+
+The eGON header structure is described in the file ``include/mach/sunxi/egon.h``.
+This is also documented on https://linux-sunxi.org/EGON .
+
+The eGON header, followed by the actual image, must be located at the fixed
+offset of 8192 bytes (8KB) from the start of the disk (sector 16), either
+from SD card; or from eMMC.
+
+.. code-block:: sh
+
+  # copy the "pine64_xload" eGON image into disk sdX
+  dd if=images/start_pine64_pine64_xload.pblb.egonimg of=/dev/sdX bs=512 seek=16
+
+The above will write the entire "pine64_xload" Barebox PBL plus the eGON
+header into the disk "/dev/sdX".
+
+The boot ROM will load, at most, the first 32KB of the image into SRAM,
+including the header itself! The eGON header starts with a jump instruction
+to jump over the header, this jump instruction needs to be patched accordingly
+with the header size.
+
+.. note::
+
+  On sunxi platforms the boot ROM loads the entire image **including**
+  the eGON header. The actual base address will be offset by the eGON header
+  (currently 96 bytes), this bad because arm instructions used for relocation
+  expect the base address to be aligned on 4K boundary.
+  As a workaround, a eGON header is included and linked into the Barebox
+  PBL image, this dummy header will be filled later by egon_mkimage.
+
+
+Board images are defined in ``images/Makefile.sunxi``, here is an example::
+
+.. code-block:: none
+
+  pblb-$(CONFIG_MACH_PINE64_PINE64) += start_pine64_pine64_xload
+  MAX_PBL_IMAGE_SIZE_start_pine64_pine64_xload = 0x8000
+  FILE_barebox-pine64-pine64_xload.img = start_pine64_pine64_xload.pblb.egonimg
+  image-$(CONFIG_MACH_PINE64_PINE64) += barebox-pine64-pine64_xload.img
+
+
+RMR aarch64 switch
+------------------
+
+Aarch64 capable SoC (A64/sun50i) boot by default in 32-bit mode. A special header
+is added to the start of the PBL image in order to switch to aarch64 mode as soon
+as possible. This must be done very early in the boot process since both ISA are
+not compatible. The code to switch mode is already assembled (mostly arm 32bit)
+and is documented in the header file ``include/mach/sunxi/rmr_switch.h``.
+
+FEL
+---
+
+The ``sunxi-fel`` tool is used to interact, through USB, with sunxi devices
+in FEL mode. ``sunxi-fel`` is part of the sunxi-tools_.
+
+.. _sunxi-tools: https://github.com/linux-sunxi/sunxi-tools
+
+More documentation about FEL_ and how to use the sunxi-fel tool can be
+found on https://linux-sunxi.org/FEL/USBBoot .
+
+.. note::
+
+  ``sunxi-fel`` has a commands dedicated to boot u-boot images but theses
+  commands require a valid eGON header, if not more. This can be easily bypassed.
+
+The ``sunxi-fel`` tool can be used to load any arbitrary image at a given address
+and can also request the processor to jump and start executing at any address.
+This can be achieved by the following two commands::
+
+.. code-block:: sh
+
+  sunxi-fel write-with-progress 0x00018000 images/start_pine64_pinephone.pblb
+  sunxi-fel exe 0x00018000
+
+These two commands allows the use of a different and bigger SRAM than the
+default 32KB used by the boot ROM.
+
+The ``sunxi-fel`` tool might require additional permissions to acces the USB device,
+this can be fixed by using a udev rule to add the most appropriated group to the device,
+as an exemple adding the device to the dialout group can be done with the following rule::
+
+  SUBSYSTEMS=="usb", ATTRS{idVendor}=="1f3a", ATTRS{idProduct}=="efe8", GROUP+="dialout"
+
+
+Arm Trusted Firmware (TF-A)
+---------------------------
+
+Boards using a 64-bit Soc (A64, H5, H6, H616, R329) require the BL31 stage of
+the `Arm Trusted Firmware-A`_ firmware. This provides the reference
+implementation of secure software for Armv8-A, offering PSCI and SMCCC
+services. Allwinner support is fully mainlined. To build bl31.bin::
+
+.. code-block:: sh
+
+  git clone https://git.trustedfirmware.org/TF-A/trusted-firmware-a.git
+  cd trusted-firmware-a
+  make CROSS_COMPILE=aarch64-linux-gnu- PLAT=sun50i_a64 DEBUG=1
+  cp build/sun50i_a64/debug/bl31.bin ${barebox_dir}/firmware/sun50i-a64-bl31.bin
+
+The target platform (``PLAT=``) for A64 and H5 SoCs is sun50i_a64, for the H6
+sun50i_h6, for the H616 sun50i_h616, and for the R329 sun50i_r329.
-- 
2.47.1




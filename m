Delivery-date: Thu, 25 May 2023 01:45:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1yAL-00CreV-6G
	for lore@lore.pengutronix.de; Thu, 25 May 2023 01:45:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1yAI-00073P-0j
	for lore@pengutronix.de; Thu, 25 May 2023 01:45:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vHOHZnA85MUUP7Gg+uGuog5B6RqxvECxoTrFWDpbAKg=; b=TjNQzY0xocV+EUwrw4FdwzZXuO
	aTHBC9hpQ4LIrFG1Pgf9MjsuIy1wKj0FsqklCOeTD1A9CA2/088PkPjTzv9X7sqFghSsPS6uW59IJ
	FUktuRlnrPwtphl6MktVpI0f6lu1RtgEqtlNKBAHtq4jwMZswrrOdK1V0zvXeS75F4PK4stNFo1Ds
	yTFr6Y86Rao5vlYSYhLwIkq9giHhD7kxH7PBY1WxXGbSbvGJfDJwrrp8B1Y/DjwEJqjsyAh+HyZ9y
	yVuSi/ppn7jKxG7Bl0KaLbbu8+UIvT5t7+I6I8mwohsDOgCWB/QVLZuVswcpNpLa43VCQDcOW9cze
	ZVLh2L3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1y96-00EzOH-0I;
	Wed, 24 May 2023 23:43:56 +0000
Received: from relay5-d.mail.gandi.net ([2001:4b98:dc4:8::225])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1y8w-00EzHg-0L
	for barebox@lists.infradead.org;
	Wed, 24 May 2023 23:43:50 +0000
Received: (Authenticated sender: jmaselbas@zdiv.net)
	by mail.gandi.net (Postfix) with ESMTPSA id A65F71C0003;
	Wed, 24 May 2023 23:43:36 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Thu, 25 May 2023 01:43:16 +0200
Message-Id: <20230524234328.82741-2-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230524234328.82741-1-jmaselbas@zdiv.net>
References: <20230524234328.82741-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_164346_460775_05A5F483 
X-CRM114-Status: GOOD (  24.97  )
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
Subject: [PATCH v2 01/13] Documentation: sunxi: Add some documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add some informations about Allwinner sunxi boardssupport: the general
boot process, how to use sunxi-fel tool, and how to create a bootable
image disk.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 Documentation/boards/sunxi.rst | 95 ++++++++++++++++++++++++++++++++++
 1 file changed, 95 insertions(+)
 create mode 100644 Documentation/boards/sunxi.rst

diff --git a/Documentation/boards/sunxi.rst b/Documentation/boards/sunxi.rst
new file mode 100644
index 0000000000..535c9671b2
--- /dev/null
+++ b/Documentation/boards/sunxi.rst
@@ -0,0 +1,95 @@
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
+The eGON header, followed by the actual image, must be located at a fixed
+offset of 8192 bytes (4K) from the start of the disk, either SD; or eMMC.
+
+.. code-block:: sh
+
+  # copy the "pine64_xload" eGON image into disk sdd
+  dd if=images/start_pine64_pine64_xload.pblb.egonimg of=/dev/sdd bs=1024 seek=8
+
+The above will write the entire "pine64_xload" Barebox PBL plus the eGON
+header into the disk "/dev/sdd".
+
+BROM will load, at most, the first 32KB of the image into SRAM, including
+the header itself! The jump instruction in the header needs to be patched
+accordingly with the image size.
+
+Note that on on sunxi platforms the boot ROM will load the entire image
+**including** the eGON header. The actual load address will be offset by
+the eGON header (currently 96 bytes), this bad because arm instructions
+used for relocation expect the base address to be aligned on 4K boundary.
+As a workaround, a egon header is included and linked into the Barebox
+pbl image, this dummy header will be filled later by egon_mkimage.
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
+**Note:** ``sunxi-fel`` has a commands dedicated to boot u-boot images but theses
+commands require a valid eGON header, if not more. This can be easily bypassed.
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
-- 
2.40.1




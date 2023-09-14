Delivery-date: Thu, 14 Sep 2023 15:22:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgmII-00F4WJ-Tv
	for lore@lore.pengutronix.de; Thu, 14 Sep 2023 15:22:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgmIG-0000IY-NN
	for lore@pengutronix.de; Thu, 14 Sep 2023 15:22:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QfyNBK2JxvJFLqDld4XNKYBX8SbSZicF56D05u2e3z8=; b=s8MQOZ+rXCeB9bLqGbAIq8qKj8
	9Ogqs8wbLilZPNaqKC80C8SJiCZnNI5KmsCLX6uw1HER+kAWBAmCETkeBS86T2JZWQZCXo1+DYDRD
	Pmp8C5VYgqfiBct6x2OzK/3I/psr654Zcmx/BCqk4GytQKsYxs42nvEC30VnsCrenuS10k2nSNa8W
	Js5XHCCuINhfD1GMN9Q3VjbjrZ6Oq3ygNtKhgmaBMApqJPOnNKqlhVbqkhH32gLkT0jrpRfjhW03f
	x6uw9zA1ttk5j3oeemwtuwbozIvovTq27mb5z9EafmXaXjEbEziJYGRuInjYqzu0u8cAnE+LAgRoo
	IDoWBxiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgmGs-008RG2-2n;
	Thu, 14 Sep 2023 13:20:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgmGp-008RFT-2m
	for barebox@lists.infradead.org;
	Thu, 14 Sep 2023 13:20:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1qgmGn-0007vw-6P; Thu, 14 Sep 2023 15:20:33 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1qgmGm-006JVF-QA; Thu, 14 Sep 2023 15:20:32 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1qgmGm-000D7Z-2Q;
	Thu, 14 Sep 2023 15:20:32 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Thu, 14 Sep 2023 15:20:28 +0200
Message-Id: <20230914132028.50261-1-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_062035_897049_CB2BA764 
X-CRM114-Status: GOOD (  17.07  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] doc: booting-linux: improve Bootloader spec section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Improve language and clarity of the text, and add formatting.

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 Documentation/user/booting-linux.rst | 36 ++++++++++++++--------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 0ba6229797cd..76883862b938 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -172,13 +172,14 @@ https://uapi-group.org/specifications/specs/boot_loader_specification/
 
 It follows another philosophy than the :ref:`boot_entries`. With Boot Entries
 booting is completely configured in the bootloader. Bootloader Spec Entries
-on the other hand the boot entries are on a boot medium. This gives a boot medium
-the possibility to describe where a Kernel is and what parameters it needs.
+on the other hand are part of the boot medium. This gives a boot medium
+the possibility to describe where a kernel is located and which parameters are
+needed to boot it.
 
-All Bootloader Spec Entries are in a partition on the boot medium under ``/loader/entries/*.conf``.
-In the Bootloader Spec a boot medium has a dedicated partition to use for
-boot entries. barebox is less strict, it accepts Bootloader Spec Entries on
-every partition barebox can read.
+All Bootloader Spec Entries are located in a partition on the boot medium under
+``/loader/entries/*.conf``. According to the Bootloader Spec, a boot medium has
+to use a dedicated partition for boot entries. barebox is less strict, it
+accepts Bootloader Spec Entries on every partition that barebox can read.
 
 A Bootloader Spec Entry consists of key value pairs::
 
@@ -194,7 +195,7 @@ A Bootloader Spec Entry consists of key value pairs::
 All paths are absolute paths in the partition. Bootloader Spec Entries can
 be created manually, but there also is the ``scripts/kernel-install`` tool to
 create/list/modify entries directly on a MMC/SD card or other media. To use
-it create a SD card / USB memory stick with a /boot partition with type 0xea.
+it, create an SD card / USB memory stick with a ``/boot`` partition with type ``0xea``.
 The partition can be formatted with FAT or EXT4 filesystem. If you wish to write
 to it from barebox later you must use FAT. The following creates a Bootloader
 Spec Entry on a SD card:
@@ -206,7 +207,7 @@ Spec Entry on a SD card:
                 --kernel=/home/sha/linux/arch/arm/boot/zImage --add-root-option \
                 --root=/dev/mmcblk0p1 -o "console=ttymxc0,115200"
 
-The entry can be listed with the -l option:
+The entry can be listed with the ``-l`` option:
 
 .. code-block:: sh
 
@@ -219,23 +220,22 @@ The entry can be listed with the -l option:
         options:    console=ttymxc0,115200 root=PARTUUID=0007CB20-01
         linux:      11ab7c89d02c4f66a4e2474ea25b2b84.15/linux
 
-When on barebox the SD card shows up as ``mmc1`` then this entry can be booted with
-``boot mmc1`` or with setting ``global.boot.default`` to ``mmc1``.
+When the SD card shows up as ``mmc1`` in barebox, this entry can be booted with
+``boot mmc1`` or by setting ``global.boot.default`` to ``mmc1``.
 
-``machine-id`` is an optional key. If ``global.boot.machine_id`` variable is set to
-non-empty value, then barebox accepts only Bootloader Spec entries with ``machine-id``
-key. In case if value of global variable and Bootloader Spec key match each other,
-barebox will choose the boot entry for booting. All other Bootloader Spec entries will
-be ignored.
+``machine-id`` is an optional key. If the ``global.boot.machine_id`` variable
+is set to a non-empty value, barebox will only boot the Bootloader Spec Entry
+whose ``machine-id`` key matches the ``global.boot.machine_id`` variable.
+All other Bootloader Spec entries will be ignored.
 
-A bootloader spec entry can also reside on an NFS server in which case a RFC2224
-compatible NFS URI string must be passed to the boot command:
+A bootloader spec entry can also reside on an NFS server in which case an
+RFC2224-compatible NFS URI string must be passed to the boot command:
 
 .. code-block:: sh
 
   boot nfs://nfshost[:port]//path/
 
-Additionally to the options defined in the original spec barebox understands the
+In addition to the options defined in the original spec barebox understands the
 ``linux-appendroot`` option. This is a boolean value and if set to ``true`` barebox
 will automatically append a ``root=`` string to the Linux commandline based on the
 device where the entry is found on. This makes it possible to use the same rootfs
-- 
2.39.2




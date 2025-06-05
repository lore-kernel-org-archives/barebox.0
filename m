Delivery-date: Thu, 05 Jun 2025 15:13:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNAPd-0041N6-10
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 15:13:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNAPX-0000xQ-0A
	for lore@pengutronix.de; Thu, 05 Jun 2025 15:13:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CQM+9jFXg1zhV/4v9F3eLxD2RtM22OwB7FMkKTy+3dI=; b=Tp9CZbcIDpmiPWXr+9aFTJz7sT
	hPvi3eMAarZ0QanO4KC45hmx6pAwhlffuMD+yLKnp8IlvPQxcGOGP7lZkctgiTVpP1TlvyppL56vS
	qcN/77D/zX9afykDqlavFpqziF9h75lABOgIGU1rDFNa9uwH/s9Hx7R9+ukYAj65+Sby5NVokDU0s
	sFLUZZRPtySIMK95UNzyVr5ZkZi7gnAQX5E6r190qI0Ke7hlLBX+cbZNBtvlvQ5k83dGoXMJ39J5t
	6NL7RxuT+wvrF0eJg0ldmT+kf3RJVXm8QLq/caTaBOZi+7I8hR42wCiRN13YyHUworzgoRjcjlDfn
	VWJUoLXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAOs-0000000FZBR-1EG1;
	Thu, 05 Jun 2025 13:12:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAFD-0000000FXq5-426L
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 13:02:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFC-00010F-Rq; Thu, 05 Jun 2025 15:02:54 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFC-001xj2-2B;
	Thu, 05 Jun 2025 15:02:54 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0024bQ-1x;
	Thu, 05 Jun 2025 14:42:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 05 Jun 2025 14:42:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-arm-k3-am62l-v2-33-53257d4b2dd2@pengutronix.de>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
In-Reply-To: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749127350; l=5072;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=stEX1CKHXivyKsOSj+ez6oQS+jJMrbvk+/6tX/+9rsI=;
 b=3+kFZLpXNsQKC3dxXW3g3IeMs/FOpAE6Hil36aWrrXKG96843h6Kyt9khAajevF7YTbeedHEV
 bKit2KdnO6+DAZkh9mNpkn5J9YbPky/soZZN2bXHO10UfLSuKTOqWie
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_060256_012021_7440753A 
X-CRM114-Status: GOOD (  21.29  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 33/33] Documentation: boards: k3: add AM62lx
 documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/ti-k3-am62lx.rst | 79 +++++++++++++++++++++++++++++++++++
 Documentation/boards/ti-k3.rst        | 23 ++++++++++
 2 files changed, 102 insertions(+)

diff --git a/Documentation/boards/ti-k3-am62lx.rst b/Documentation/boards/ti-k3-am62lx.rst
new file mode 100644
index 0000000000000000000000000000000000000000..3cd7a6debf137c4e2eed700e7a570b0a23740f9e
--- /dev/null
+++ b/Documentation/boards/ti-k3-am62lx.rst
@@ -0,0 +1,79 @@
+.. _ti_k3_am62lx:
+
+TI K3 AM62lx based boards
+=========================
+
+The TI AM62lx is SoC in the line of TI K3 64-bit ARM SoCs.
+
+The boot process of the TI AM62x SoCs is a two step process. The first stage boot loader
+is loaded by the ROM code and executed on the Cortex-A53 processor. This stage contains
+some firmware files and a BL1 which is responsible for setting up the initial clocks,
+power domains and DRAM. When this is done the BL1 branches back to the ROM which loads
+the second stage which contains the TF-A BL31, barebox proper and optionally OP-TEE.
+
+Building TF-A
+-------------
+
+The Arm Trusted Firmware is built from https://github.com/ARM-software/arm-trusted-firmware.git::
+
+  make CROSS_COMPILE=$CROSS_COMPILE_64 ARCH=aarch64 PLAT=k3 SPD=opteed \
+        TARGET_BOARD=am62l
+  cp build/k3/am62l/release/bl1.bin $BAREBOX_SOURCE/firmware/am62lx-bl1.bin
+  cp build/k3/am62l/release/bl31.bin $BAREBOX_SOURCE/firmware/am62lx-bl31.bin
+
+.. note::
+
+  As time of writing the AM62lx support is not yet supported in upstream TF-A. Build from
+  https://github.com/TexasInstruments/arm-trusted-firmware.git 11.00.11 instead.
+
+Bulding OP-TEE
+--------------
+
+OP-TEE is built from https://github.com/OP-TEE/optee_os.git::
+
+  make CROSS_COMPILE64=$CC64 CFG_ARM64_core=y CFG_WITH_SOFTWARE_PRNG=y \
+        PLATFORM=k3-am62lx
+  cp out/arm-plat-k3/core/tee-raw.bin $BAREBOX_SOURCE/firmware/am62lx-bl32.bin
+
+OP-TEE is optional. barebox will continue without OP-TEE when the file
+does not exist. In that case drop the ``SPD=opteed`` option above when building the TF-A
+
+.. note::
+
+  As time of writing the AM62lx OP-TEE support has not yet landed in a release. Use the
+  master branch for building OP-TEE
+
+Building barebox
+----------------
+
+The am62lx images are built as part of the ``multi_v8_defconfig``::
+
+  export ARCH=arm CROSS_COMPILE=CROSS_COMPILE_64
+  make multi_v8_defconfig
+  make
+  cp images/barebox-am62lx-evm-tiboot3.img $TI_BOOT/tiboot3.bin
+  cp images/barebox-am62lx-evm.img $TI_BOOT/tispl.bin
+
+USB DFU boot
+------------
+K3 Boards can be booted via USB DFU. When in USB boot mode the initial stage can be uploaded
+using ``dfu-util``::
+
+  dfu-util -D images/barebox-am62lx-evm-tiboot3.img -a 0
+
+This will start the initial stage which then expects the following stage which can
+be uploaded with ``dfu-util`` as well::
+
+  dfu-util -D images/barebox-am62lx-evm.img -a 0
+
+eMMC boot
+---------
+K3 boards can boot from eMMC boot partitions. In this mode the ROM reads the tiboot3.bin
+raw from the active boot partition. In this mode barebox expects the FIP image with the
+following stages in the same boot partition at offset 1MiB. There is a barebox update handler
+which takes a combined image consisting of tiboot3.bin and the FIP image to allow for a
+failsafe update. This image can't be generated by the barebox build system though. It has
+to be generated by a build system or manually::
+
+  dd if=images/barebox-am62lx-evm-tiboot3.img of=barebox-am62lx-evm-emmc.img
+  dd if=images/barebox-am62lx-evm.img of=barebox-am62lx-evm-emmc.img bs=1024 seek=512
diff --git a/Documentation/boards/ti-k3.rst b/Documentation/boards/ti-k3.rst
new file mode 100644
index 0000000000000000000000000000000000000000..937752e4bb933cf0ec57f8b3411ef930d6737d24
--- /dev/null
+++ b/Documentation/boards/ti-k3.rst
@@ -0,0 +1,23 @@
+TI K3 based boards
+==================
+
+The TI K3 is a line of 64-bit ARM SoCs. The build and boot process differs between the
+different SoC types. This document contains the general prerequisites for all K3 SoCs.
+Refer to the section for the actual SoC type for building and booting barebox.
+
+Prerequisites
+-------------
+
+There are several binary blobs required for building barebox for TI K3 SoCs. Find them
+in git://git.ti.com/processor-firmware/ti-linux-firmware.git. The repository is assumed
+to be checked out at ``firmware/ti-linux-firmware``. Alternatively the barebox repository
+has a ti-linux-firmware submodule which checks out at the correct place. The K3 SoCs boot
+from a FAT partition on SD/eMMC cards. During the next steps the files are copied to
+``$TI_BOOT``. This is assumed to be an empty directory. After the build process copy its
+contents to a FAT filesystem on an SD/eMMC card.
+
+TI K3 SoC specific documentation
+================================
+
+* :ref:`ti_k3_am62x`
+* :ref:`ti_k3_am62lx`

-- 
2.39.5




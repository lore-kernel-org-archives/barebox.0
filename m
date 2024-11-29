Delivery-date: Fri, 29 Nov 2024 14:07:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tH0iP-001rko-05
	for lore@lore.pengutronix.de;
	Fri, 29 Nov 2024 14:07:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tH0iO-0002by-S7
	for lore@pengutronix.de; Fri, 29 Nov 2024 14:07:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S5rGL/vsaINAbJqGC21jtWbA8sJ0D3GleUqYRWjWtLU=; b=HKRyS2ekMAb8IQ09VMYW6YQxnU
	P2ew8AVjHHJ7WE8LP4uqGPYFcZWYfTJVmbu4Vd9+ld5gQ4+wVByHT496C/d3vhPN4QL2R3R7O8reL
	2P05KWhXCRDQAIcNpm43bi0QdrdXONSEu30/IFQnEOKLb010CfFUWv67eCk3UiAOZy3Q0FC4BmWph
	obvLnCPWu8wZXYg7K075vsDwYVg3ru6LUa2XO9uxMsAw8lnr9dtnGvoQGwMTUGsMvn4oh6WaQwqww
	4ELbeeS5CzVTTPOs3fDS+XIwBoZqhcVqXOlQSSmn3zIR1esH+tch1UciEHnispChmZkoihzpGbUB4
	yxKlcz9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tH0iF-000000009Jh-0a2d;
	Fri, 29 Nov 2024 13:07:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzhL-000000001Pj-0lV6
	for barebox@lists.infradead.org;
	Fri, 29 Nov 2024 12:02:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzhJ-0001NZ-Se; Fri, 29 Nov 2024 13:02:09 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzhI-000mME-2T;
	Fri, 29 Nov 2024 13:02:09 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzQ9-000vyS-2R;
	Fri, 29 Nov 2024 12:44:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Nov 2024 12:44:35 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241129-k3-r5-v1-20-67c4bb42a5c7@pengutronix.de>
References: <20241129-k3-r5-v1-0-67c4bb42a5c7@pengutronix.de>
In-Reply-To: <20241129-k3-r5-v1-0-67c4bb42a5c7@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732880665; l=3452;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=/RE/I18Px5O9mWNXrzai7fOkQOyd0ahMrCvNZpp/bEQ=;
 b=aXdFiuCopmrpq+cLHoqzAyjDSDRzWRJ9bbrKeeeS7CVCH83n2KbIxOiH/Qf2zCcCbrxTo3Mbq
 3udh6q6VE37Bh4PYsaJPp/Gj+G8seD4rDw7naGQNweupK3jbjk5PpU0
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_040211_231550_5E424F26 
X-CRM114-Status: GOOD (  17.21  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 20/20] Documentation: add build documentation for TI K3
 SoCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/ti-k3.rst | 79 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/Documentation/boards/ti-k3.rst b/Documentation/boards/ti-k3.rst
new file mode 100644
index 0000000000..a1bf0b92e8
--- /dev/null
+++ b/Documentation/boards/ti-k3.rst
@@ -0,0 +1,79 @@
+TI K3 based boards
+==================
+
+The TI K3 is a line of 64-bit ARM SoCs.
+
+The boot process of the TI K3 SoCs is a two step process. The first stage boot loader
+is loaded by the ROM code and executed on a Cortex-R5 processor. The code on this
+processor is responsible for setting up the initial clocks, power domains and DRAM.
+It then loads the binaries for the A53 cores into DRAM and starts the A53 core. From
+this point on the Cortex-R5 processor is used as a system controller which controls
+clocks and power domains of the SoC.
+
+Prerequisites
+-------------
+
+There are several binary blobs required for building barebox for TI K3 SoCs. Find them
+in git://git.ti.com/processor-firmware/ti-linux-firmware.git. The repository is assumed
+to be checked out at ``$TI_LINUX_FIRMWARE``. The K3 SoCs boot from a FAT partition on
+SD/eMMC cards. During the next steps the files are copied to ``$TI_BOOT``. This is assumed
+to be an empty directory. After the build process copy its contents to a FAT filesystem
+on an SD/eMMC card.
+
+The Cortex-R5 is a 32-bit processors whereas the Cortex-A53 are 64-bit processors, so
+both 32-bit and 64-bit toolchains are needed::
+
+  export CROSS_COMPILE_32=arm-linux-gnueabihf-
+  export CROSS_COMPILE_64=aarch64-v8a-linux-gnu-
+
+Building barebox for the Cortex-R5 processor
+--------------------------------------------
+
+The following assumes barebox is built for a BeaglePlay board. The exact filenames
+need to be adjusted for other boards.
+
+There's a single ``k3-r5_defconfig`` for all K3 boards. This builds the boot images
+for the Cortex-R5 processors::
+
+  cp $TI_LINUX_FIRMWARE/ti-linux-firmware/ti-sysfw/ti-fs-firmware-am62x-gp.bin firmware/
+  export ARCH=arm CROSS_COMPILE=$CROSS_COMPILE_32
+  make k3-r5_defconfig
+  make
+  cp images/barebox-beagleplay-r5.img $TI_BOOT/tiboot3.bin
+
+Building barebox for the Cortex-A53 processors
+----------------------------------------------
+
+The BeaglePlay image is built as part of the ``multi_v8_defconfig``::
+
+  export ARCH=arm CROSS_COMPILE=CROSS_COMPILE_64
+  make multi_v8_defconfig
+  make
+  cp images/barebox-beagleplay.img $TI_BOOT/barebox.bin
+
+Building TF-A
+-------------
+
+The Arm Trusted Firmware is built from https://github.com/ARM-software/arm-trusted-firmware.git::
+
+  make CROSS_COMPILE=$CROSS_COMPILE_64 ARCH=aarch64 PLAT=k3 SPD=opteed \
+        TARGET_BOARD=lite
+  cp build/k3/lite/release/bl31.bin $TI_BOOT/bl31.bin
+
+Bulding OP-TEE
+--------------
+
+OP-TEE is built from https://github.com/OP-TEE/optee_os.git::
+
+  make CROSS_COMPILE64=$CC64 CFG_ARM64_core=y CFG_WITH_SOFTWARE_PRNG=y \
+        PLATFORM=k3-am62x
+  cp out/arm-plat-k3/core/tee-raw.bin $TI_BOOT/optee.bin
+
+Copying ti-dm.bin
+-----------------
+
+The ``ti-dm.bin`` binary is part of ti-linux-firmware.git, this needs to be
+copied to the eMMC/SD as well::
+
+  cp $TI_LINUX_FIRMWARE/ti-dm/am62xx/ipc_echo_testb_mcu1_0_release_strip.xer5f $TI_BOOT/ti-dm.bin
+

-- 
2.39.5




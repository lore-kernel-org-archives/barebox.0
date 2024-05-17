Delivery-date: Fri, 17 May 2024 15:27:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7xcj-001lQG-2O
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 15:27:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7xci-0003cV-Qp
	for lore@pengutronix.de; Fri, 17 May 2024 15:27:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NSQkS+0FEUfnSgb9SAKEogTsAlH86GmWAorq12szPvc=; b=tKKBw+T8A9GZ7V
	qSspg7JLEAAZveDcJV4s6bRNfmgpsLKQsBqY12F/ZAtWz9ri49C7hhCe45H/6+vU5S7IwNPOhT2AY
	lk8pAggBm2TdL8jOdtq1Essr9dDYTu15Z3I7MjR7Zj6RaMW6iUIgqdnoFtVlJkZw/4GayoIsEA8tV
	2HfrGoTx7ahG2+OLkvZr+/rIcem3SvPU3r5F1wJ3m8wQm/eXRl0cKehZMRVUDi5eeRaljT4NwncVN
	7i96b0ZEvDL/rYwJuXB6q6WsOZbEHAZvhg4dNjefMtS2Q9PTufhGZ3BO5JfbJSYdlvZIv0abMGyFX
	JHUTb42aTO7FJGvY9VMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7xc5-00000007woQ-29i2;
	Fri, 17 May 2024 13:27:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7xbx-00000007wjZ-3n3B
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 13:27:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7xbt-00032j-M1; Fri, 17 May 2024 15:26:57 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7xbt-001sCL-7P; Fri, 17 May 2024 15:26:57 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7xbt-00DEM4-0S;
	Fri, 17 May 2024 15:26:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 17 May 2024 15:26:52 +0200
Message-Id: <20240517132656.3151273-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240517132656.3151273-1-a.fatoum@pengutronix.de>
References: <20240517132656.3151273-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_062702_167157_28169C5C 
X-CRM114-Status: GOOD (  14.51  )
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
Cc: Denis Orlov <denorl2009@gmail.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/8] MIPS: make use of merged defconfigs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

QEmu's Malta emulation can be used in four flavors depending on
endianness and CPU register width. So far we only had two defconfigs and
expected users to adjust the config to arrive at the other two flavors
to cut down on duplication in the config files. Let's use the new merged
defconfigs mechanism instead to merge the configs on the fly.

Cc: Denis Orlov <denorl2009@gmail.com>
Cc: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/mips/qemu-malta.rst   | 11 +++
 arch/mips/Makefile                         |  8 ++
 arch/mips/configs/le.config                |  1 +
 arch/mips/configs/mips64.config            |  2 +
 arch/mips/configs/qemu-malta64el_defconfig | 97 ----------------------
 5 files changed, 22 insertions(+), 97 deletions(-)
 create mode 100644 arch/mips/configs/le.config
 create mode 100644 arch/mips/configs/mips64.config
 delete mode 100644 arch/mips/configs/qemu-malta64el_defconfig

diff --git a/Documentation/boards/mips/qemu-malta.rst b/Documentation/boards/mips/qemu-malta.rst
index 44f671638d9d..b10a3965998c 100644
--- a/Documentation/boards/mips/qemu-malta.rst
+++ b/Documentation/boards/mips/qemu-malta.rst
@@ -1,6 +1,17 @@
 QEMU Malta
 ==========
 
+Building barebox for Qemu Malta:
+
+.. code-block:: sh
+
+  export ARCH=mips
+  make ARCH=mips qemu-malta_defconfig      # 32-bit, big-endian
+  make ARCH=mips qemu-maltael_defconfig    # 32-bit, little-endian
+  make ARCH=mips qemu-malta64_defconfig    # 64-bit, big-endian
+  make ARCH=mips qemu-malta64el_defconfig  # 64-bit, little-endian
+
+
 Big-endian mode
 ---------------
 
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 65a00379ab6e..be360c48a359 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -2,6 +2,14 @@
 
 KBUILD_DEFCONFIG := qemu-malta_defconfig
 
+generated_configs += $(patsubst %, qemu-malta%_defconfig, el 64 64el)
+qemu-maltael_defconfigs:
+	$(call merge_into_defconfig,qemu-malta_defconfig,le)
+qemu-malta64_defconfig:
+	$(call merge_into_defconfig,qemu-malta_defconfig,mips64)
+qemu-malta64el_defconfig:
+	$(call merge_into_defconfig,qemu-malta_defconfig,mips64 le)
+
 #
 # Select the object file format to substitute into the linker script.
 #
diff --git a/arch/mips/configs/le.config b/arch/mips/configs/le.config
new file mode 100644
index 000000000000..ee43fdb3b8f4
--- /dev/null
+++ b/arch/mips/configs/le.config
@@ -0,0 +1 @@
+CONFIG_CPU_LITTLE_ENDIAN=y
diff --git a/arch/mips/configs/mips64.config b/arch/mips/configs/mips64.config
new file mode 100644
index 000000000000..0e80be76cbc6
--- /dev/null
+++ b/arch/mips/configs/mips64.config
@@ -0,0 +1,2 @@
+CONFIG_CPU_MIPS64_R2=y
+CONFIG_64BIT=y
diff --git a/arch/mips/configs/qemu-malta64el_defconfig b/arch/mips/configs/qemu-malta64el_defconfig
deleted file mode 100644
index c1f7366d76d3..000000000000
--- a/arch/mips/configs/qemu-malta64el_defconfig
+++ /dev/null
@@ -1,97 +0,0 @@
-CONFIG_BOARD_QEMU_MALTA=y
-CONFIG_CPU_LITTLE_ENDIAN=y
-CONFIG_CPU_MIPS64_R2=y
-CONFIG_64BIT=y
-CONFIG_IMAGE_COMPRESSION_XZKERN=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x400000
-CONFIG_STACK_SIZE=0x7000
-CONFIG_EXPERIMENTAL=y
-CONFIG_BAUDRATE=38400
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_CONSOLE_ALLOW_COLOR=y
-CONFIG_PARTITION_DISK_EFI=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_CMD_DMESG=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_IMD=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_DEFAULTENV=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_SHA256SUM=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_LOGIN=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_PASSWD=y
-CONFIG_CMD_FBTEST=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_I2C=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIME=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_OFDEVICE=y
-CONFIG_OF_BAREBOX_DRIVERS=y
-CONFIG_VIRTIO_CONSOLE=y
-CONFIG_DRIVER_NET_E1000=y
-CONFIG_DRIVER_NET_RTL8139=y
-CONFIG_DRIVER_NET_VIRTIO=y
-# CONFIG_SPI is not set
-CONFIG_I2C=y
-CONFIG_I2C_GPIO=y
-CONFIG_MTD=y
-CONFIG_DRIVER_CFI=y
-# CONFIG_DRIVER_CFI_AMD is not set
-# CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
-# CONFIG_DRIVER_CFI_BANK_WIDTH_2 is not set
-CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_DISK=y
-CONFIG_VIRTIO_BLK=y
-CONFIG_VIDEO=y
-CONFIG_FRAMEBUFFER_CONSOLE=y
-CONFIG_DRIVER_VIDEO_BOCHS_PCI=y
-CONFIG_VIRTIO_INPUT=y
-CONFIG_HWRNG=y
-CONFIG_HW_RANDOM_VIRTIO=y
-CONFIG_GPIO_MALTA_FPGA_I2C=y
-CONFIG_PCI=y
-CONFIG_PCI_DEBUG=y
-CONFIG_SYSCON_REBOOT_MODE=y
-CONFIG_POWER_RESET_SYSCON=y
-CONFIG_VIRTIO_PCI=y
-CONFIG_FS_CRAMFS=y
-CONFIG_FS_EXT4=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-- 
2.39.2




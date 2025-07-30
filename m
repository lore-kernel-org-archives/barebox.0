Delivery-date: Wed, 30 Jul 2025 05:51:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugxqM-0058hY-0A
	for lore@lore.pengutronix.de;
	Wed, 30 Jul 2025 05:51:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugxqL-0002t4-7V
	for lore@pengutronix.de; Wed, 30 Jul 2025 05:51:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8bdJB8o8PtwcHvtQT+6xpRqf86V5LXJ9NAD8GizOE64=; b=m6S0m0y5SCxDzrz/ri8/fJomvX
	ykuOpK9/TCoiJgglaOjT7I6GdnTVq5PtN5lBcM4vnEm8JpBr2QgmY3r4IrnZiSdExvX+RMC0KrRdW
	qpubnav9YN/uC9qWn873Tr8dvFoSfYJCDHNPI5DQhyA6D/hJ8oIelpcQehMfMTF91bl2cSTxFf+f2
	d+HQdzb8Y8OaC/7Cn93X0k+J1MSGDKRgFTtM7RzS/Zgq6AcsUQbmm4y21yD1aymK4w2b+xVly+FCn
	18IB3zqiDlmKjGq5DVXcMi5i/iYI6tkp1k3xE/mEtrn4/zOqW0VNilOhhe2rplqtb4j7rDh9bjEHd
	eY3vvPyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugxpq-00000000e1v-3neQ;
	Wed, 30 Jul 2025 03:50:34 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugxpo-00000000e1G-1t2e
	for barebox@lists.infradead.org;
	Wed, 30 Jul 2025 03:50:33 +0000
Received: by mail-qk1-x736.google.com with SMTP id af79cd13be357-7e34493ecb4so686671885a.1
        for <barebox@lists.infradead.org>; Tue, 29 Jul 2025 20:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753847431; x=1754452231; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8bdJB8o8PtwcHvtQT+6xpRqf86V5LXJ9NAD8GizOE64=;
        b=URTD5J5yvNe8/jitsORlcM+NKSws4+i+Z05hJqYAyQBeiO6jMIkoNFm20kDQLe/zRI
         DK8gq17pnD1f36qjFT/w0GkrZZHWBv6bgxcgwAMOAlBmkAGNBvYAstioQ+2VVDttm6se
         gc69lnsL+rHIhr+Mb1JGwIYtoLQ/e6VBcYpz3yEdCBeKdge8et07OusBZQ7iJzeKJ04n
         D31LRMLShElN/6MlH0Ml4j57UkhfuPvwKZVOVIloAfEUuPQrAADxxXjxQ93bcvHaGO7L
         0WBDK9dOXFAu0S9BPkvBlZtl9Fsh4dh46ysSBtmZbJh6wZK//h46izD3J2cPkpA/r+6p
         IZjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753847431; x=1754452231;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8bdJB8o8PtwcHvtQT+6xpRqf86V5LXJ9NAD8GizOE64=;
        b=cRYo3xhYvxl8cKvq/U+Udd2s2Uud0fnSj0biu2XESEIMKbpTb5AmOl1ynSbZ+05v8/
         A0cIuurQo1q3B+uISkPbW4FNRw5pG83lXMxQ/3KaVWH3B9Svr5pIPRHN+f8C1KRuppiH
         B0gq7NEaAZ8jX413WyDjrbDtnXd8jTsmqxfoDGXg/8U8TNs7do138j0GQwCObQss5pw+
         P+WKnfU5A7rrWmVsJhqncXzM45+jRGcQ0HSfTWkwkj04/qxW9Lbn9Btd9C6eJGF2jCc2
         ijFvaKeKl9zLQlGrYvW7bXo0lChsz+AciqJDSjxxmM7BsSbkuIz+9hvNJnqEv1setMgL
         Gjjg==
X-Gm-Message-State: AOJu0Yz1FVVrmQwfLursn0pVChZvKUF29Ydg8xzsuu0tGzh7Y47E3qkX
	vlm6RTCz2SVdP5LcYVqLDJq+G6THK9WxNQVGsBCgWx4ecZSJdrUKzW9TI13tzfzb
X-Gm-Gg: ASbGnctoOWryLMgcnaobZSmhJmiZu2AA3tgeCd8P2ueK6yMNbS69S5KD/pAxvAdNAzo
	AX50Ud5Oc2Km5XLMBUZkF6Ih+BsJ85Mfbp3yf3s1imEIOCroBvAo/DJYjW9yI5ZpneHMvACtnMW
	B6g1u9Q2ISrXsqWhbuVXPPr3HCQZ6ZWrzGQpKYbqAwFJb3L9pM5x3XtrInXEa6EYJHsuJDabts/
	zcZMV6O1sNO2GUWYyBuzUr4Vx9vmu0xLgPIpj36kRGtWxZizjoD8hfeK2qBD5OiVwFV/diAvx22
	+X8gXIeigiv1K02depDUMVMTBFUfPSlt7Q1ELNN9e7PT0oRpQ7k/JkET5M72nVBFudHrRskYw9f
	b0N2bsDSg9R0JPWo3gA5uzoA7xpzdA31ghcEPcfA=
X-Google-Smtp-Source: AGHT+IFvGzxID4ZIueyGzi6Mqpv4BrQL3R/arCkdpKO8FzdBFDlpTaUc8QZ+vGQiV9eo9ldEsLvyUA==
X-Received: by 2002:a05:620a:720c:b0:7e6:38aa:75da with SMTP id af79cd13be357-7e66efab859mr244273785a.22.1753847431224;
        Tue, 29 Jul 2025 20:50:31 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:48c7:d1e:9673:22a2])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ae99669e84sm57969111cf.47.2025.07.29.20.50.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jul 2025 20:50:30 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Tue, 29 Jul 2025 23:50:10 -0400
Message-Id: <20250730035010.3318600-2-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250730035010.3318600-1-chalianis1@gmail.com>
References: <20250730035010.3318600-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_205032_493045_1E5DADF7 
X-CRM114-Status: GOOD (  16.05  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] arm: efi: add a dummy efi arch on ARM64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

this arch will forces a generic arm 64 cpu, which will
produce an efi payload on ARM 64, this works with a virtual
machine using qemu-system-aarch64, need further work to support
real hardware.
Submit the patch in case someone is interrested in working
to have a full support for efi payload on real hardware.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 Documentation/boards/efi.rst   |  11 +++-
 arch/arm/Kconfig               |   1 +
 arch/arm/configs/efi_defconfig | 101 +++++++++++++++++++++++++++++++++
 arch/arm/mach-efi/Kconfig      |  10 ++++
 arch/arm/mach-efi/Makefile     |   1 +
 5 files changed, 123 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/configs/efi_defconfig
 create mode 100644 arch/arm/mach-efi/Kconfig
 create mode 100644 arch/arm/mach-efi/Makefile

diff --git a/Documentation/boards/efi.rst b/Documentation/boards/efi.rst
index 869e5e88172f..872b0c2388ce 100644
--- a/Documentation/boards/efi.rst
+++ b/Documentation/boards/efi.rst
@@ -23,7 +23,7 @@ x86_64 binary currently is tested.
 Building barebox for EFI
 ------------------------
 
-Use the following to build barebox for EFI:
+Use the following to build barebox for EFI for x86:
 
 .. code-block:: sh
 
@@ -31,6 +31,15 @@ Use the following to build barebox for EFI:
   make efi_defconfig
   make
 
+for EFI on arm 64 use:
+
+.. code-block:: sh
+
+  export ARCH=arm
+  export CROSS_COMPILE=aarch64-linux-gnu-
+  make efi_defconfig
+  make
+
 The resulting EFI image is ``barebox.efi`` (or the barebox-flash-image link).
 
 Running barebox on EFI systems
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index d283ef7793a1..d5dd6abc416f 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -276,6 +276,7 @@ source "arch/arm/mach-vexpress/Kconfig"
 source "arch/arm/mach-tegra/Kconfig"
 source "arch/arm/mach-zynq/Kconfig"
 source "arch/arm/mach-zynqmp/Kconfig"
+source "arch/arm/mach-efi/Kconfig"
 
 config BOARD_ARM_VIRT
 	bool
diff --git a/arch/arm/configs/efi_defconfig b/arch/arm/configs/efi_defconfig
new file mode 100644
index 000000000000..5fe998ed4d4d
--- /dev/null
+++ b/arch/arm/configs/efi_defconfig
@@ -0,0 +1,101 @@
+CONFIG_EFI_ARM64=y
+CONFIG_64BIT=y
+CONFIG_MMU=y
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_MALLOC_TLSF=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+# CONFIG_TIMESTAMP is not set
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BLSPEC=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_PARTITION_DISK_EFI=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_STATE=y
+CONFIG_BOOTCHOOSER=y
+CONFIG_RESET_SOURCE=y
+CONFIG_DEBUG_LL=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_BOOTCHOOSER=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENUTREE=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_POWEROFF=y
+CONFIG_CMD_WD=y
+CONFIG_CMD_2048=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_OF_DIFF=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_CMD_STATE=y
+CONFIG_NET=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_OF_BAREBOX_ENV_IN_FS=y
+CONFIG_DRIVER_SERIAL_EFI=y
+CONFIG_DRIVER_SERIAL_EFI_STDIO=y
+CONFIG_DRIVER_NET_EFI_SNP=y
+# CONFIG_SPI is not set
+CONFIG_DISK=y
+CONFIG_DISK_WRITE=y
+CONFIG_VIDEO=y
+CONFIG_FRAMEBUFFER_CONSOLE=y
+CONFIG_DRIVER_VIDEO_EFI_GOP=y
+CONFIG_FINTEK_SUPERIO=y
+CONFIG_SMSC_SUPERIO=y
+CONFIG_STATE_DRV=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_EFI=y
+CONFIG_F71808E_WDT=y
+CONFIG_ITCO_WDT=y
+# CONFIG_PINCTRL is not set
+CONFIG_PCI_EFI=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_FS_EFI=y
+CONFIG_FS_EFIVARFS=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/mach-efi/Kconfig b/arch/arm/mach-efi/Kconfig
new file mode 100644
index 000000000000..2bc4feca0581
--- /dev/null
+++ b/arch/arm/mach-efi/Kconfig
@@ -0,0 +1,10 @@
+config EFI_ARM64
+	bool "EFI on ARM64"
+	select CPU_V8
+	select CPU_SUPPORTS_64BIT_KERNEL
+	select HAVE_EFI_PAYLOAD
+	select EFI_PAYLOAD
+    select CLOCKSOURCE_EFI
+	depends on 64BIT
+	default y
+
diff --git a/arch/arm/mach-efi/Makefile b/arch/arm/mach-efi/Makefile
new file mode 100644
index 000000000000..16a218658ade
--- /dev/null
+++ b/arch/arm/mach-efi/Makefile
@@ -0,0 +1 @@
+obj- := __dummy__.o
-- 
2.34.1




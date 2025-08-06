Delivery-date: Wed, 06 Aug 2025 16:05:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujelL-007ezR-0Z
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 16:05:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujelJ-0004DQ-OE
	for lore@pengutronix.de; Wed, 06 Aug 2025 16:05:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eadAypTd7pTBoIpJ2pZqtQGAY8w7wZ6VlYkdeayKUzc=; b=tt60+A3q6TDQdB1Y5In8ooF6Jo
	vHjZDGqSN9cdcAyvZ7WsICOflyaUO7n0BdBkjITkkR5nJsuEyArr2g7As5XbVzXry3t2Dy1RYTVHg
	luVl4IvAmu+1juxUROk9U8dV4ly8F7jBixvQ6msV4aXstkdYy+UjiAIvQwHmu2prnGRuV95ofB8dF
	V/RDfyfxlf61x64LXet7DkD973FZ2sAV8PtVpktwOqJnTU6mYqDzpatLjGBH1JviIbnCgRkrE7Ck5
	zOzJdpTmMaIQ4CP14LhGxliTc5M31bnC6q+fYyL9wzSXLUVSaFs2DbnFInBPrhMwR6i9BwBvexn1P
	/AtiGtlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujeko-0000000FNgn-3QwO;
	Wed, 06 Aug 2025 14:04:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujegZ-0000000FMt3-2CtF
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 14:00:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ujegX-0002eR-VG; Wed, 06 Aug 2025 16:00:06 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed,  6 Aug 2025 16:00:01 +0200
Message-Id: <20250806140005.2866622-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_070007_894051_658934C3 
X-CRM114-Status: GOOD (  31.27  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] security: add new top-level menu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of distributing security-related options and code across lib/,
common/ and crypto/, let's collect them in a new security/ top-level
directory and give it its own top-level menu for visibility.

The new security/ exists alongside crypto/, where the latter is for algorithms
and the former is for concrete implementations like JWT.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Kconfig                         |   3 +-
 Makefile                        |   2 +-
 common/Kconfig                  | 142 -------------------------
 common/Makefile                 |  24 -----
 crypto/Kconfig                  |  12 ---
 crypto/Makefile                 |   2 -
 lib/Kconfig                     |   6 --
 lib/Kconfig.hardening           |   8 +-
 security/Kconfig                | 179 ++++++++++++++++++++++++++++++++
 security/Makefile               |  29 ++++++
 {lib => security}/blobgen.c     |   0
 {crypto => security}/jwt.c      |   0
 {crypto => security}/keystore.c |   0
 {common => security}/optee.c    |   0
 {common => security}/password.c |   0
 15 files changed, 213 insertions(+), 194 deletions(-)
 create mode 100644 security/Kconfig
 create mode 100644 security/Makefile
 rename {lib => security}/blobgen.c (100%)
 rename {crypto => security}/jwt.c (100%)
 rename {crypto => security}/keystore.c (100%)
 rename {common => security}/optee.c (100%)
 rename {common => security}/password.c (100%)

diff --git a/Kconfig b/Kconfig
index 9c3a20a9a9a3..db6aad2e4f55 100644
--- a/Kconfig
+++ b/Kconfig
@@ -16,8 +16,9 @@ source "commands/Kconfig"
 source "net/Kconfig"
 source "drivers/Kconfig"
 source "fs/Kconfig"
-source "lib/Kconfig"
+source "security/Kconfig"
 source "crypto/Kconfig"
+source "lib/Kconfig"
 source "firmware/Kconfig"
 source "scripts/Kconfig"
 source "test/Kconfig"
diff --git a/Makefile b/Makefile
index 0a3043c6e2a8..836176d541c3 100644
--- a/Makefile
+++ b/Makefile
@@ -664,7 +664,7 @@ endif
 include $(srctree)/scripts/Makefile.lib
 
 # Objects we will link into barebox / subdirs we need to visit
-common-y		:= common/ drivers/ commands/ lib/ crypto/ net/ fs/ firmware/
+common-y		:= common/ drivers/ commands/ lib/ security/ crypto/ net/ fs/ firmware/
 
 include $(srctree)/arch/$(SRCARCH)/Makefile
 
diff --git a/common/Kconfig b/common/Kconfig
index 1d9570ef67b5..596e68b5551f 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -141,28 +141,6 @@ config LOCALVERSION_AUTO
 
 	  which is done within the script "scripts/setlocalversion".)
 
-config HAS_INSECURE_DEFAULTS
-	bool
-	help
-	  This is selected by options that have potentially insecure defaults.
-	  Extra care needs to be taken when these options are not disabled
-	  in secure booted systems.
-
-	  Any option selecting this should include in its help text
-	  an explanation of the security considerations.
-
-config INSECURE
-	bool "enable convenient defaults that are unsuitable for secure-booting systems"
-	default y
-	select HAS_INSECURE_DEFAULTS
-	help
-	  Say n here when barebox is part of a secure boot chain and you
-	  want to disable defaults that may compromise the boot chain.
-
-	  This option is a moving target. Currently it:
-
-	    - changes the default of global.env.autoprobe to 1
-
 config BANNER
 	bool "display banner"
 	default y
@@ -536,53 +514,6 @@ config MENU
 	  a menu framework that allow us to create list menu to simplify
 	  barebox and make it more user-friendly
 
-config PASSWORD
-	bool
-	prompt "Password Framework"
-	select DIGEST
-	help
-	  allow you to have password protection framework
-
-config PASSWORD_DEFAULT
-	string
-	prompt "Password default file"
-	depends on PASSWORD
-	help
-	  Set this to a file which is used as default password file. This file
-	  has to contain the passwd encoded with the selected password digest.
-	  i.e.:
-	  echo -ne "MyPassword" | md5sum | while read a b; do echo $a > passwdfile; done
-
-
-if PASSWORD
-
-choice
-	prompt "passwd checksum"
-
-config PASSWD_SUM_MD5
-	bool "MD5"
-	select DIGEST_MD5_GENERIC
-
-config PASSWD_SUM_SHA1
-	bool "SHA1"
-	select DIGEST_SHA1_GENERIC
-
-config PASSWD_SUM_SHA256
-	bool "SHA256"
-	select DIGEST_SHA256_GENERIC
-
-config PASSWD_SUM_SHA512
-	bool "SHA512"
-	select DIGEST_SHA512_GENERIC
-
-config PASSWD_CRYPTO_PBKDF2
-	bool "PBKDF2"
-	select CRYPTO_PBKDF2
-
-endchoice
-
-endif
-
 config ERRNO_MESSAGES
 	bool
 	prompt "print error values as text"
@@ -1348,79 +1279,6 @@ config EXTERNAL_DTS_FRAGMENTS
 	  to add dts fragments from outside the Barebox source tree into the
 	  Barebox build.
 
-menu "OP-TEE loading"
-
-config HAVE_OPTEE
-	bool
-	help
-	  This symbol is selected by configuration where barebox either
-	  starts OP-TEE or runs while OP-TEE is running. Actual
-	  bidirectional communication with OP-TEE is enabled via
-	  CONFIG_OPTEE.
-
-config OPTEE_SIZE
-	hex
-	default 0x02000000
-	prompt "OP-TEE Memory Size"
-	depends on HAVE_OPTEE
-	help
-	  Size to reserve in main memory for OP-TEE, including its shared memory.
-	  Can be larger than the actual size used by OP-TEE, this is used to prevent
-	  barebox from using or speculating into this area.
-	  On i.MX, this should be at least OP-TEE CFG_TZDRAM + CFG_SHMEM_SIZE.
-	  The name of the CFG_ options may differ on other platforms.
-
-config OPTEE_SHM_SIZE
-	hex
-	default 0x400000
-	prompt "OP-TEE Shared Memory Size"
-	depends on HAVE_OPTEE
-	help
-	  Size to reserve in main memory for static OP-TEE shared memory
-	  communication. The OP-TEE shared memory starts directly after
-	  the OPTEE TZDRAM region. It should be chosen to be equivalent
-	  to CFG_SHMEM_SIZE in OP-TEE.
-
-	  This value can be used for fixing up the OP-TEE OF node.
-
-	  A shared memory size of 0 means that only dynamic shared memory
-	  will be supported for communication with OP-TEE. This is the only
-	  mode supported by barebox anyway, but support needs to be enabled
-	  in OP-TEE at compile-time.
-
-config BOOTM_OPTEE
-	bool
-	prompt "support booting OP-TEE"
-	depends on BOOTM && ARM32
-	select HAVE_OPTEE
-	select HAS_INSECURE_DEFAULTS
-	help
-	  OP-TEE is a trusted execution environment (TEE). With this option
-	  enabled barebox supports starting optee_os as part of the bootm command.
-	  Instead of the kernel bootm starts the optee_os binary which then starts
-	  the kernel in nonsecure mode. Pass the optee_os binary with the -t option
-	  or in the global.bootm.tee variable.
-
-	  This mode of late loading OP-TEE just before the kernel is deprecated
-	  in favor of early loading OP-TEE in the PBL (CONFIG_PBL_OPTEE).
-	  Early-loading greatly reduces the attack surface and is the only mode
-	  supported outside of ARMv7.
-
-config PBL_OPTEE
-	bool "Enable OP-TEE early start"
-	depends on ARM
-	select HAVE_OPTEE
-	help
-	  Allows starting OP-TEE during lowlevel initialization of the PBL.
-	  Requires explicit support in the board's lowlevel file (for ARM32)
-	  or the generic SoC support (for ARM64).
-
-	  OP-TEE versions older than 3.11.0 do not support jumping back from OP-TEE
-	  to barebox in THUMB2 mode. Make sure you do not compile barebox in THUMB2
-	  mode for OP-TEE versions older than this.
-
-endmenu
-
 config FILETYPE_STRINGS
 	bool "Print file types as strings"
 	default y
diff --git a/common/Makefile b/common/Makefile
index 0cead5e8b094..b50b92122293 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -59,7 +59,6 @@ obj-$(CONFIG_MODULES)		+= module.o
 extra-$(CONFIG_MODULES)		+= module.lds
 obj-$(CONFIG_OFTREE)		+= oftree.o
 obj-$(CONFIG_PARTITION_DISK)	+= partitions.o partitions/
-obj-$(CONFIG_PASSWORD)		+= password.o
 obj-$(CONFIG_HAS_SCHED)		+= sched.o
 obj-$(CONFIG_POLLER)		+= poller.o
 obj-$(CONFIG_BTHREAD)		+= bthread.o
@@ -83,32 +82,9 @@ obj-$(CONFIG_BOOT)		+= boot.o bootscan.o
 obj-$(CONFIG_BOOT_DEFAULTS)	+= bootdef.o
 obj-$(CONFIG_SERIAL_DEV_BUS)	+= serdev.o
 obj-$(CONFIG_USB_GADGET)	+= usbgadget.o
-obj-pbl-$(CONFIG_HAVE_OPTEE)	+= optee.o
 obj-$(CONFIG_FASTBOOT_BASE)	+= fastboot.o
 obj-$(CONFIG_CDEV_ALIAS)	+= cdev-alias.o
 
-ifdef CONFIG_PASSWORD
-
-ifeq ($(CONFIG_PASSWORD_DEFAULT),"")
-define filechk_passwd
-	echo "static const char default_passwd[] = \"\";"
-endef
-else
-define filechk_passwd
-(							\
-echo -n "static const char default_passwd[] = \"";	\
-cat $(shell find $(srctree) -name $(CONFIG_PASSWORD_DEFAULT) -type f) | tr -d '\n';\
-echo "\";"						\
-)
-endef
-endif
-
-include/generated/passwd.h: FORCE
-	$(call filechk,passwd)
-
-$(obj)/password.o: include/generated/passwd.h
-endif # CONFIG_PASSWORD
-
 # dependencies on generated files need to be listed explicitly
 $(obj)/version.o: include/generated/compile.h
 $(obj)/imd-barebox.o: include/generated/compile.h
diff --git a/crypto/Kconfig b/crypto/Kconfig
index 14728be4aa91..6136c7e8ccfd 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -148,16 +148,4 @@ config CRYPTO_PUBLIC_KEYS
 	  corresponding value in the environment variable VAR_NAME for both
 	  public key paths/URIs as well as key name hints.
 
-config CRYPTO_KEYSTORE
-	bool "Keystore"
-	help
-	  This is a simple keystore, which can be used to pass keys
-	  between several components via simple interface.
-
-config JWT
-	bool "JSON Web Token support" if COMPILE_TEST
-	select JSMN
-	select BASE64
-	select CRYPTO_RSA
-
 endmenu
diff --git a/crypto/Makefile b/crypto/Makefile
index 7148aecb4a8e..76b12bef50e2 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -17,12 +17,10 @@ obj-pbl-y	+= memneq.o
 
 obj-$(CONFIG_CRYPTO_PBKDF2)	+= pbkdf2.o
 obj-$(CONFIG_CRYPTO_RSA)	+= rsa.o
-obj-$(CONFIG_CRYPTO_KEYSTORE)	+= keystore.o
 obj-$(CONFIG_CRYPTO_BUILTIN_KEYS)      += public-keys.o
 obj-$(CONFIG_CRYPTO_ECC)	+= ecc.o
 obj-$(CONFIG_CRYPTO_ECDSA) 	+= ecdsa.o
 
-obj-$(CONFIG_JWT)		+= jwt.o
 
 extra-$(CONFIG_CRYPTO_BUILTIN_KEYS) += public-keys.h
 
diff --git a/lib/Kconfig b/lib/Kconfig
index 0cb3a136b38e..d07e2f3b6959 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -210,10 +210,6 @@ config GENERIC_LIB_MULDI3
 config NLS
 	bool "Native language support"
 
-config BLOBGEN
-	select BASE64
-	bool "include blob encode/decode support"
-
 config GENERIC_ALLOCATOR
 	bool
 	help
@@ -223,5 +219,3 @@ config IDR
 	bool
 
 endmenu
-
-source "lib/Kconfig.hardening"
diff --git a/lib/Kconfig.hardening b/lib/Kconfig.hardening
index d9f6909eca51..3b3ba6267aec 100644
--- a/lib/Kconfig.hardening
+++ b/lib/Kconfig.hardening
@@ -1,10 +1,6 @@
-menu "Hardening options"
+# SPDX-License-Identifier: GPL-2.0
 
-if HAS_INSECURE_DEFAULTS
-comment "This barebox configuration has CONFIG_HAS_INSECURE_DEFAULTS=y indicating"
-comment "that some of the configured options have potentially insecure defaults."
-comment "Extra care needs to be taken in secure booted systems."
-endif
+menu "Hardening options"
 
 config BUG_ON_DATA_CORRUPTION
 	bool "Trigger a BUG when data corruption is detected"
diff --git a/security/Kconfig b/security/Kconfig
new file mode 100644
index 000000000000..88ebdeed2f64
--- /dev/null
+++ b/security/Kconfig
@@ -0,0 +1,179 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Security configuration
+#
+
+menu "Security options"
+
+config HAS_INSECURE_DEFAULTS
+	bool
+	help
+	  This is selected by options that have potentially insecure defaults.
+	  Extra care needs to be taken when these options are not disabled
+	  in secure booted systems.
+
+	  Any option selecting this should include in its help text
+	  an explanation of the security considerations.
+
+if HAS_INSECURE_DEFAULTS
+comment "This barebox configuration has CONFIG_HAS_INSECURE_DEFAULTS=y indicating"
+comment "that some of the configured options have potentially insecure defaults."
+comment "Extra care needs to be taken in secure booted systems."
+endif
+
+config INSECURE
+	bool "enable convenient defaults that are unsuitable for secure-booting systems"
+	default y
+	select HAS_INSECURE_DEFAULTS
+	help
+	  Say n here when barebox is part of a secure boot chain and you
+	  want to disable defaults that may compromise the boot chain.
+
+	  This option is a moving target. Currently it:
+
+	    - changes the default of global.env.autoprobe to 1
+
+config SECURITY_POLICY
+	bool
+	prompt "Security policy support"
+
+config PASSWORD
+	bool
+	prompt "Password Framework"
+	select DIGEST
+	help
+	  allow you to have password protection framework
+
+config PASSWORD_DEFAULT
+	string
+	prompt "Password default file"
+	depends on PASSWORD
+	help
+	  Set this to a file which is used as default password file. This file
+	  has to contain the passwd encoded with the selected password digest.
+	  i.e.:
+	  echo -ne "MyPassword" | md5sum | while read a b; do echo $a > passwdfile; done
+
+
+if PASSWORD
+
+choice
+	prompt "passwd checksum"
+
+config PASSWD_SUM_MD5
+	bool "MD5"
+	select DIGEST_MD5_GENERIC
+
+config PASSWD_SUM_SHA1
+	bool "SHA1"
+	select DIGEST_SHA1_GENERIC
+
+config PASSWD_SUM_SHA256
+	bool "SHA256"
+	select DIGEST_SHA256_GENERIC
+
+config PASSWD_SUM_SHA512
+	bool "SHA512"
+	select DIGEST_SHA512_GENERIC
+
+config PASSWD_CRYPTO_PBKDF2
+	bool "PBKDF2"
+	select CRYPTO_PBKDF2
+
+endchoice
+
+endif
+
+
+config CRYPTO_KEYSTORE
+	bool "Keystore"
+	help
+	  This is a simple keystore, which can be used to pass keys
+	  between several components via simple interface.
+
+config BLOBGEN
+	select BASE64
+	bool "include blob encode/decode support"
+
+config JWT
+	bool "JSON Web Token support" if COMPILE_TEST
+	select JSMN
+	select BASE64
+	select CRYPTO_RSA
+
+menu "OP-TEE loading"
+
+config HAVE_OPTEE
+	bool
+	help
+	  This symbol is selected by configuration where barebox either
+	  starts OP-TEE or runs while OP-TEE is running. Actual
+	  bidirectional communication with OP-TEE is enabled via
+	  CONFIG_OPTEE.
+
+config OPTEE_SIZE
+	hex
+	default 0x02000000
+	prompt "OP-TEE Memory Size"
+	depends on HAVE_OPTEE
+	help
+	  Size to reserve in main memory for OP-TEE, including its shared memory.
+	  Can be larger than the actual size used by OP-TEE, this is used to prevent
+	  barebox from using or speculating into this area.
+	  On i.MX, this should be at least OP-TEE CFG_TZDRAM + CFG_SHMEM_SIZE.
+	  The name of the CFG_ options may differ on other platforms.
+
+config OPTEE_SHM_SIZE
+	hex
+	default 0x400000
+	prompt "OP-TEE Shared Memory Size"
+	depends on HAVE_OPTEE
+	help
+	  Size to reserve in main memory for static OP-TEE shared memory
+	  communication. The OP-TEE shared memory starts directly after
+	  the OPTEE TZDRAM region. It should be chosen to be equivalent
+	  to CFG_SHMEM_SIZE in OP-TEE.
+
+	  This value can be used for fixing up the OP-TEE OF node.
+
+	  A shared memory size of 0 means that only dynamic shared memory
+	  will be supported for communication with OP-TEE. This is the only
+	  mode supported by barebox anyway, but support needs to be enabled
+	  in OP-TEE at compile-time.
+
+config BOOTM_OPTEE
+	bool
+	prompt "support booting OP-TEE"
+	depends on BOOTM && ARM32
+	select HAVE_OPTEE
+	select HAS_INSECURE_DEFAULTS
+	help
+	  OP-TEE is a trusted execution environment (TEE). With this option
+	  enabled barebox supports starting optee_os as part of the bootm command.
+	  Instead of the kernel bootm starts the optee_os binary which then starts
+	  the kernel in nonsecure mode. Pass the optee_os binary with the -t option
+	  or in the global.bootm.tee variable.
+
+	  This mode of late loading OP-TEE just before the kernel is deprecated
+	  in favor of early loading OP-TEE in the PBL (CONFIG_PBL_OPTEE).
+	  Early-loading greatly reduces the attack surface and is the only mode
+	  supported outside of ARMv7.
+
+config PBL_OPTEE
+	bool "Enable OP-TEE early start"
+	depends on ARM
+	select HAVE_OPTEE
+	help
+	  Allows starting OP-TEE during lowlevel initialization of the PBL.
+	  Requires explicit support in the board's lowlevel file (for ARM32)
+	  or the generic SoC support (for ARM64).
+
+	  OP-TEE versions older than 3.11.0 do not support jumping back from OP-TEE
+	  to barebox in THUMB2 mode. Make sure you do not compile barebox in THUMB2
+	  mode for OP-TEE versions older than this.
+
+endmenu
+
+source "lib/Kconfig.hardening"
+
+endmenu
diff --git a/security/Makefile b/security/Makefile
new file mode 100644
index 000000000000..e0b17f12064c
--- /dev/null
+++ b/security/Makefile
@@ -0,0 +1,29 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+obj-$(CONFIG_SECURITY_POLICY)	+= sconfig.o sconfig_names.o
+obj-$(CONFIG_CRYPTO_KEYSTORE)	+= keystore.o
+obj-$(CONFIG_JWT)		+= jwt.o
+obj-pbl-$(CONFIG_HAVE_OPTEE)	+= optee.o
+obj-$(CONFIG_PASSWORD)		+= password.o
+
+ifdef CONFIG_PASSWORD
+
+ifeq ($(CONFIG_PASSWORD_DEFAULT),"")
+define filechk_passwd
+	echo "static const char default_passwd[] = \"\";"
+endef
+else
+define filechk_passwd
+(							\
+echo -n "static const char default_passwd[] = \"";	\
+cat $(shell find $(srctree) -name $(CONFIG_PASSWORD_DEFAULT) -type f) | tr -d '\n';\
+echo "\";"						\
+)
+endef
+endif
+
+include/generated/passwd.h: FORCE
+	$(call filechk,passwd)
+
+$(obj)/password.o: include/generated/passwd.h
+endif # CONFIG_PASSWORD
diff --git a/lib/blobgen.c b/security/blobgen.c
similarity index 100%
rename from lib/blobgen.c
rename to security/blobgen.c
diff --git a/crypto/jwt.c b/security/jwt.c
similarity index 100%
rename from crypto/jwt.c
rename to security/jwt.c
diff --git a/crypto/keystore.c b/security/keystore.c
similarity index 100%
rename from crypto/keystore.c
rename to security/keystore.c
diff --git a/common/optee.c b/security/optee.c
similarity index 100%
rename from common/optee.c
rename to security/optee.c
diff --git a/common/password.c b/security/password.c
similarity index 100%
rename from common/password.c
rename to security/password.c
-- 
2.39.5




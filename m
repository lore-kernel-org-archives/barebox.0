Delivery-date: Mon, 17 Feb 2025 19:23:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk5m4-003aPA-0Y
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 19:23:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk5m0-0003Tb-0d
	for lore@pengutronix.de; Mon, 17 Feb 2025 19:23:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1EJI5iu4BmtFjXRKExymd7TbMhodV0flAVrjYPSipDA=; b=Sc9XSByAzWwQ5Xl6sZV5FiWPsE
	+1OIUKQk7R9On/sbTCGcN92NMbq4bYxCi70ACjVXlBat5AMjrYdmB71xjEMMSB5XHmFGDV9IPFQOf
	fXu8q/BGLFupq3XoYrPH/N0DkEcpg3CEcrfnuu0fBsqct3kwNFLMzufdEyXmRjLDIGMLS/32Js+un
	2Tn5yaAK9mgp++novN5bOfkftIrLKH4rVVdrM3RHP8AyELhgjcNEZmLLX3OpVc9iSKD9gYZr+ku0G
	Ky+RmGp5MmZCvZIQWOkzg3i4rMulgOeXW1uffTO3bItOiCLQvYJ6VRkTLh/75Fa7kzcC/5Ckqr4D7
	MfssuYig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5lO-00000005afa-41bR;
	Mon, 17 Feb 2025 18:22:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5Z5-00000005Z8j-03AZ
	for barebox@bombadil.infradead.org;
	Mon, 17 Feb 2025 18:09:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=1EJI5iu4BmtFjXRKExymd7TbMhodV0flAVrjYPSipDA=; b=Yvyj7mvSCtfcq7I4BVfpNl4+i2
	6F3d3yFZu1nDLauYHCQ1oHu5j2CFxmrRHbM+w2B+3ceWKSWmnu0ws9xEAc93DwtSbgJ5TVHBNE19a
	ewEtnTvLPU/hXXVP6RlzQcU4XXTuIsllLxW2zGP0WTTNxivYuoTKsJ3zcnS1WBV/W6FXj5GdliGv3
	Oit9dYeyqIzu8HDCreVBqaQsyapAL+2ROI5PWuLuxP4PJMghWPoZXr2cqF3NwZ70UXYKikNJo6tE9
	fSc4bwi/TxFvCqDi/hL9kbEKnaJYJNzYCzbI+sgeggmnha2BAIygqKm+HvAbPJVMI598BXXXALJi6
	GWRoYpYg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5Z0-00000001rl5-38UB
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 18:09:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Z0-0001Cr-51; Mon, 17 Feb 2025 19:09:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Yz-001SKC-34;
	Mon, 17 Feb 2025 19:09:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Yz-00GcfG-2l;
	Mon, 17 Feb 2025 19:09:49 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Feb 2025 19:09:47 +0100
Message-Id: <20250217180949.3961860-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_180950_924822_6B020262 
X-CRM114-Status: GOOD (  22.72  )
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
Subject: [PATCH v2 1/3] common: introduce CONFIG_HAS_INSECURE_DEFAULTS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Unlike the functionality controlled by CONFIG_INSECURE, most
functionality in barebox is not as clear-cut: In secure systems, it's
better to turn off the option, but with enough care, board code may
disable the option later on.

To help with securing barebox, let's identify these options that need a
more thorough look by having them select HAS_INSECURE_DEFAULTS.

In the future, we will start selecting HAS_INSECURE_DEFAULTS when
hardening options are missing. We may also drop HAS_INSECURE_DEFAULTS
again from options that are changed to minimize potential for abuse.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - Add Marco's R-b
  - rename CONFIG_HAS_INSECURE_DEFAULT to
           CONFIG_HAS_INSECURE_DEFAULTS
  - Fix typo in CONFIG_MODULES help text
---
 common/Kconfig        | 49 ++++++++++++++++++++++++++++++++++++++++---
 lib/Kconfig.hardening |  6 ++++++
 net/Kconfig           |  4 ++++
 3 files changed, 56 insertions(+), 3 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 0ce99e98286c..6ba5accad337 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -149,9 +149,20 @@ config LOCALVERSION_AUTO
 
 	  which is done within the script "scripts/setlocalversion".)
 
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
 config INSECURE
 	bool "enable convenient defaults that are unsuitable for secure-booting systems"
 	default y
+	select HAS_INSECURE_DEFAULTS
 	help
 	  Say n here when barebox is part of a secure boot chain and you
 	  want to disable defaults that may compromise the boot chain.
@@ -344,13 +355,17 @@ endchoice
 config MODULES
 	depends on HAS_MODULES
 	depends on EXPERIMENTAL
+	select HAS_INSECURE_DEFAULTS
 	bool "module support"
 	modules
 	help
 	  This option enables support for loadable modules via insmod. Module
 	  support is quite experimental at the moment. There is no convenient
 	  way to compile modules and the list of exported symbols to actually
-	  make use of modules is short to nonexistent
+	  make use of modules is short to nonexistent.
+
+	  As modules can't be signed, loading external modules is not
+	  recommended for secure systems.
 
 config HAVE_MOD_ARCH_SPECIFIC
 	bool
@@ -750,6 +765,15 @@ config BOOTM_FORCE_SIGNED_IMAGES
 	  are refused to boot. Effectively this means only FIT images can be booted
 	  since they are the only supported image type that support signing.
 
+config BOOTM_OPTIONAL_SIGNED_IMAGES
+	def_bool !BOOTM_FORCE_SIGNED_IMAGES
+	select HAS_INSECURE_DEFAULTS
+	help
+	  With this option enabled, barebox can be reconfigured to not verify signed
+	  images. It's the board code's responsibility to call the function
+	  bootm_force_signed_images() when secure booted to ensure that runtime
+	  reconfiguration is no longer possible.
+
 config BLSPEC
 	depends on FLEXIBLE_BOOTARGS
 	depends on !SHELL_NONE
@@ -964,6 +988,7 @@ source "common/partitions/Kconfig"
 
 config ENV_HANDLING
 	select CRC32
+	select HAS_INSECURE_DEFAULTS
 	bool "Support environment files storage"
 	default y if !SHELL_NONE
 	help
@@ -972,6 +997,17 @@ config ENV_HANDLING
 	  the persistent environment, the "loadenv" command (also executed during
 	  startup) will bring them back. If unsure, say yes.
 
+	  As the environment is not cryptographically verified, an attacker with
+	  raw access to the environment storage may set any nv variable and
+	  inject shell scripts to be run by barebox.
+
+	  In general, secure systems should rely exclusively on the barebox
+	  built-in environment, disable the mutable environment and use the
+	  barebox-state framework for persisting a fixed set of variables.
+
+	  A safe use of the mutable environment may be possible if board code only
+	  mounts it after verifying a JSON Web Token that enables a debug mode.
+
 config DEFAULT_ENVIRONMENT
 	select CRC32
 	bool
@@ -1271,8 +1307,9 @@ config OPTEE_SHM_SIZE
 config BOOTM_OPTEE
 	bool
 	prompt "support booting OP-TEE"
-	depends on BOOTM && ARM && 32BIT
+	depends on BOOTM && ARM32
 	select HAVE_OPTEE
+	select HAS_INSECURE_DEFAULTS
 	help
 	  OP-TEE is a trusted execution environment (TEE). With this option
 	  enabled barebox supports starting optee_os as part of the bootm command.
@@ -1280,6 +1317,11 @@ config BOOTM_OPTEE
 	  the kernel in nonsecure mode. Pass the optee_os binary with the -t option
 	  or in the global.bootm.tee variable.
 
+	  This mode of late loading OP-TEE just before the kernel is deprecated
+	  in favor of early loading OP-TEE in the PBL (CONFIG_PBL_OPTEE).
+	  Early-loading greatly reduces the attack surface and is the only mode
+	  supported outside of ARMv7.
+
 config PBL_OPTEE
 	bool "Enable OP-TEE early start"
 	depends on ARM
@@ -1307,9 +1349,10 @@ config FASTBOOT_SPARSE
 config FASTBOOT_CMD_OEM
 	bool
 	prompt "Enable OEM commands"
+	select HAS_INSECURE_DEFAULTS
 	help
 	  This option enables the fastboot "oem" group of commands. They allow to
-	  executing arbitrary barebox commands and may be disabled in secure
+	  executing arbitrary barebox commands and should be disabled in secure
 	  environments.
 
 endmenu
diff --git a/lib/Kconfig.hardening b/lib/Kconfig.hardening
index 6457d24c7382..ed280dd216d8 100644
--- a/lib/Kconfig.hardening
+++ b/lib/Kconfig.hardening
@@ -1,5 +1,11 @@
 menu "Hardening options"
 
+if HAS_INSECURE_DEFAULTS
+comment "This barebox configuration has CONFIG_HAS_INSECURE_DEFAULTS=y indicating"
+comment "that some of the configured options have potentially insecure defaults."
+comment "Extra care needs to be in secure booted systems."
+endif
+
 config BUG_ON_DATA_CORRUPTION
 	bool "Trigger a BUG when data corruption is detected"
 	select DEBUG_LIST
diff --git a/net/Kconfig b/net/Kconfig
index 2491c497bdfc..0f33a58ff2d5 100644
--- a/net/Kconfig
+++ b/net/Kconfig
@@ -31,9 +31,13 @@ config NET_NETCONSOLE
 	bool
 	depends on !CONSOLE_NONE
 	prompt "network console support"
+	select HAS_INSECURE_DEFAULTS
 	help
 	  This option adds support for a simple udp based network console.
 
+	  This console's communication is not encrypted and is thus not
+	  suitable for use in untrusted networks.
+
 config NET_RESOLV
 	bool
 	prompt "dns support"
-- 
2.39.5




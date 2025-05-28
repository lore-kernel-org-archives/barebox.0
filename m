Delivery-date: Wed, 28 May 2025 14:19:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFl6-001BZC-0q
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 14:19:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFl4-0000cj-VC
	for lore@pengutronix.de; Wed, 28 May 2025 14:19:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uKGtS0xthKYudpzfutmaFY7Z3BI/pwkDLpogEmOdwNE=; b=Dfo/WKFjupULALHtbd1ZWdKc6q
	khPPmlujlhAVnbQiBaDMgOR1s9nd/KlQ7OcCfRQCn1wWAVvjYwMIuicscHEYYk2rVXscIrVadB1Z3
	gXu05TOEQguTp23FX/dwXUlCerU4MdC0or+F3XZB0JHUDY96iwVKAx19GhFJOuHE6Dy/GWlcISbP+
	C0OiOdY4DEDIOHedNgqXkleH+2RjiAvndZDeNqIMwP1WPtS2E/wFcgQugN5enNJ9ivfaJLh1cHBUJ
	s7AXirXxyX7kTez9G99iS+Ih1rHIqlLCkBJsVTKKTki/MTYpOuXxHmn/7M/lhadyQYZT+4ZRXdKXj
	POn7ftbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFkp-0000000D5U1-2Ys2;
	Wed, 28 May 2025 12:19:31 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEY2-0000000Cvyx-23Me
	for barebox@bombadil.infradead.org;
	Wed, 28 May 2025 11:02:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=uKGtS0xthKYudpzfutmaFY7Z3BI/pwkDLpogEmOdwNE=; b=O8xTa9C3adKFmnQzgkr8RcM+XO
	WBlPtbxBx9CtheKTeusgSARGR+WqjoJquNmdlGiw4/0HzKdO6ZCjZz3JSGhB3dP/Re7xnSTx/SEBQ
	2WPzOKklcUXXzwjST0h5drdKgMUI7NEGT/RZOHgWk0+3b9B3V6gCfLPyop2JQKLpgmvJYIqU1fHAS
	vA4YUEnT9Pc0CeeIaJxKQlFNhtQFqRUn+4cGHjN0G1XCVY2jHS0/a+4S28/vtZwhtnZQpKWBv1yc/
	BeFHELf+7IyPvmI5Jj6yEbt2ZoLuBazIuMtXW+4Th9pSS7apzcp/lm9Ss8cTZYdctzZZKmjNz9+Nq
	xt+bntlQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEXy-0000000DXFy-1ZwW
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 11:02:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-0001p8-Cl; Wed, 28 May 2025 13:01:58 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-000Zgt-0g;
	Wed, 28 May 2025 13:01:58 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-00DuY0-0O;
	Wed, 28 May 2025 13:01:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 May 2025 12:50:37 +0200
Message-Id: <20250528105046.3270397-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250528105046.3270397-1-a.fatoum@pengutronix.de>
References: <20250528105046.3270397-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_120210_680543_B8E8C04A 
X-CRM114-Status: GOOD (  11.46  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/10] arch: add new HAVE_ARCH_BOOTM_OFTREE symbol
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On platforms like x86, where barebox doesn't pass a device tree to the
kernel, it doesn't make sense to have CONFIG_BOOTM_OFTREE selectable, so
add a hidden symbol to hide it behind.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/Kconfig                   | 6 ++++++
 arch/arm/Kconfig               | 1 +
 arch/kvx/Kconfig               | 1 +
 arch/mips/Kconfig              | 1 +
 arch/powerpc/Kconfig           | 1 +
 arch/riscv/Kconfig             | 1 +
 arch/sandbox/Kconfig           | 1 +
 arch/x86/configs/efi_defconfig | 1 -
 common/Kconfig                 | 2 +-
 9 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/arch/Kconfig b/arch/Kconfig
index dc5d1e454df5..890923ad059c 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -77,6 +77,12 @@ config HAVE_EFFICIENT_UNALIGNED_ACCESS
 config HAVE_ARCH_BOARD_GENERIC_DT
 	bool
 
+config HAVE_ARCH_BOOTM_OFTREE
+	bool
+	help
+	  Selected by architectures where barebox can pass a device tree to the
+	  kernel while booting with bootm.
+
 config HAVE_MOD_ARCH_SPECIFIC
 	bool
 	help
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 0800b15d784c..0b1dbd43a8f0 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -14,6 +14,7 @@ config ARM
 	select PBL_RELOCATABLE
 	select USE_COMPRESSED_DTB
 	select HAVE_ARCH_BOARD_GENERIC_DT if OFDEVICE
+	select HAVE_ARCH_BOOTM_OFTREE
 	default y
 
 config ARCH_LINUX_NAME
diff --git a/arch/kvx/Kconfig b/arch/kvx/Kconfig
index bb662e4fd8a5..987fdb2e1e89 100644
--- a/arch/kvx/Kconfig
+++ b/arch/kvx/Kconfig
@@ -4,6 +4,7 @@ config KVX
 	bool
 	select 64BIT
 	select BOOTM
+	select HAVE_ARCH_BOOTM_OFTREE
 	select BOOTM_OFTREE
 	select BOOTM_INITRD
 	select COMMON_CLK
diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 43c493978c8f..44c4fc82ae5b 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -12,6 +12,7 @@ config MIPS
 	select ARCH_HAS_DATA_ABORT_MASK
 	select ARCH_HAS_SJLJ
 	select ELF
+	select HAVE_ARCH_BOOTM_OFTREE
 	default y
 
 config ARCH_LINUX_NAME
diff --git a/arch/powerpc/Kconfig b/arch/powerpc/Kconfig
index 4e282bc3ac80..49050a26d524 100644
--- a/arch/powerpc/Kconfig
+++ b/arch/powerpc/Kconfig
@@ -7,6 +7,7 @@ config PPC
 	select HAS_MODULES
 	select GENERIC_FIND_NEXT_BIT
 	select OFTREE
+	select HAVE_ARCH_BOOTM_OFTREE
 	select ARCH_HAS_SJLJ
 	default y
 
diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 4d56e55b533f..96d013d8514a 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -18,6 +18,7 @@ config RISCV
 	select RISCV_TIMER if RISCV_SBI
 	select HW_HAS_PCI
 	select HAVE_ARCH_BOARD_GENERIC_DT
+	select HAVE_ARCH_BOOTM_OFTREE
 
 config ARCH_LINUX_NAME
 	string
diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index c404f73a9970..b48eb29c7db4 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -20,6 +20,7 @@ config SANDBOX
 	select ARCH_DMA_DEFAULT_COHERENT
 	select ARCH_WANT_FRAME_POINTERS
 	select BAREBOX_CMDLINE
+	select HAVE_ARCH_BOOTM_OFTREE
 	default y
 
 config ARCH_LINUX_NAME
diff --git a/arch/x86/configs/efi_defconfig b/arch/x86/configs/efi_defconfig
index 57e1080195c2..c7bdbcd5640c 100644
--- a/arch/x86/configs/efi_defconfig
+++ b/arch/x86/configs/efi_defconfig
@@ -9,7 +9,6 @@ CONFIG_MENU=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
 CONFIG_BLSPEC=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_PARTITION_DISK_EFI=y
diff --git a/common/Kconfig b/common/Kconfig
index fe50da8f3084..86a651661c35 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -633,7 +633,7 @@ config BOOTM_INITRD
 
 config BOOTM_OFTREE
 	bool
-	depends on BOOTM
+	depends on BOOTM && HAVE_ARCH_BOOTM_OFTREE
 	select OFTREE
 	prompt "device tree (oftree) support"
 	help
-- 
2.39.5




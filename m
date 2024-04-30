Delivery-date: Tue, 30 Apr 2024 20:07:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1rtA-00Aqdh-1K
	for lore@lore.pengutronix.de;
	Tue, 30 Apr 2024 20:07:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1rt9-0007Co-Kw
	for lore@pengutronix.de; Tue, 30 Apr 2024 20:07:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OPrAdvTnaijwVw54ZU6p9fLk+YSItqw+Sy79VI/B3Kk=; b=fiWKvZEMVmsXLBkyc+2bvvRrcj
	FALZ1goUApDLSkpbYRCZsUtxIgiV5Nk3bakdbUrl+GC1yPwkE09btzMllx/O4yayd4oAY5kfeM1EZ
	NEnNkNp4JJCHLG1Zjguk/0CcrHN8kIVuI6hCIixEoBqpXfIn1vbsvJdrQVE0bAYxd0H6fLGlVdqKS
	kRxDi/OcmKjVfWj+ocGewtz54uWA7JHvuJKpXTSpK8rDSb591PLl5JcjAA+2HrzEK743goDhKM4Q/
	nkda/MF/ABdfVxy0tqE8gAPt7TfvZ190wtRlwqjP/6Xz45n2W4vU6t9st+9czVuC9rHz/YvL5MCTd
	t/jvdRyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1rsP-00000007Wyp-33aa;
	Tue, 30 Apr 2024 18:06:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1rsH-00000007WuW-2jic
	for barebox@lists.infradead.org;
	Tue, 30 Apr 2024 18:06:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s1rsA-0006kb-Sk; Tue, 30 Apr 2024 20:06:34 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s1rsA-00FCgS-GC; Tue, 30 Apr 2024 20:06:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s1rsA-006dMu-1K;
	Tue, 30 Apr 2024 20:06:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 30 Apr 2024 20:06:32 +0200
Message-Id: <20240430180633.1581279-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240430180633.1581279-1-a.fatoum@pengutronix.de>
References: <20240430180633.1581279-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_110642_109819_95DE2F8E 
X-CRM114-Status: GOOD (  15.67  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] bootm: allow disabling uImage support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Enabling uImage support unconditionally for bootm is a legacy left-over.
Let's make this configurable via a separate BOOTM_UIMAGE option that can
be disabled for new platforms.

Disabling uImage support saves 4KiB in a LZO compressed ARM64 image.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig |  1 -
 common/Kconfig   | 12 ++++++++++--
 common/bootm.c   | 22 +++++++++++++++++-----
 3 files changed, 27 insertions(+), 8 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 8d0816c4d0f0..47caae141312 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -427,7 +427,6 @@ config CMD_BOOTM
 	default y
 	depends on BOOTM
 	select CRC32
-	select UIMAGE
 	select UNCOMPRESS
 	select FILETYPE
 	depends on GLOBALVAR
diff --git a/common/Kconfig b/common/Kconfig
index 0000dac8740e..ea7223cffd05 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -564,7 +564,6 @@ config TIMESTAMP
 	  commands like bootm or uimage.
 
 menuconfig BOOTM
-	select UIMAGE
 	default y if COMMAND_SUPPORT
 	bool "bootm support"
 
@@ -608,10 +607,19 @@ config BOOTM_OFTREE
 
 	  -o DTS  specify device tree
 
+config BOOTM_UIMAGE
+	def_bool y
+	prompt "support the legacy uImage format"
+	select UIMAGE
+	depends on BOOTM
+	help
+	  Support using uImages. This format has been superseded
+	  by FIT images and is not as frequently used nowadays.
+
 config BOOTM_OFTREE_UIMAGE
 	bool
 	prompt "support passing device tree (oftree) uImages"
-	depends on BOOTM_OFTREE
+	depends on BOOTM_OFTREE && BOOTM_UIMAGE
 	help
 	  Support using oftree uImages. Without this only raw oftree
 	  blobs can be used.
diff --git a/common/bootm.c b/common/bootm.c
index 4cc88eed76b5..09c93ac4952f 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -92,6 +92,11 @@ static int uimage_part_num(const char *partname)
 	return simple_strtoul(partname, NULL, 0);
 }
 
+static inline bool image_is_uimage(struct image_data *data)
+{
+	return IS_ENABLED(CONFIG_BOOTM_UIMAGE) && data->os;
+}
+
 /*
  * bootm_load_os() - load OS to RAM
  *
@@ -129,7 +134,7 @@ int bootm_load_os(struct image_data *data, unsigned long load_address)
 		return 0;
 	}
 
-	if (data->os) {
+	if (image_is_uimage(data)) {
 		int num;
 
 		num = uimage_part_num(data->os_part);
@@ -175,6 +180,9 @@ static int bootm_open_initrd_uimage(struct image_data *data)
 {
 	int ret;
 
+	if (!IS_ENABLED(CONFIG_BOOTM_UIMAGE))
+		return -ENOSYS;
+
 	if (strcmp(data->os_file, data->initrd_file)) {
 		data->initrd = uimage_open(data->initrd_file);
 		if (!data->initrd)
@@ -482,7 +490,7 @@ int bootm_get_os_size(struct image_data *data)
 
 	if (data->elf)
 		return elf_get_mem_size(data->elf);
-	if (data->os)
+	if (image_is_uimage(data))
 		return uimage_get_size(data->os, uimage_part_num(data->os_part));
 	if (data->os_fit)
 		return data->fit_kernel_size;
@@ -502,6 +510,9 @@ static int bootm_open_os_uimage(struct image_data *data)
 {
 	int ret;
 
+	if (!IS_ENABLED(CONFIG_BOOTM_UIMAGE))
+		return -ENOSYS;
+
 	data->os = uimage_open(data->os_file);
 	if (!data->os)
 		return -EINVAL;
@@ -837,10 +848,11 @@ int bootm_boot(struct bootm_data *bootm_data)
 		release_sdram_region(data->oftree_res);
 	if (data->tee_res)
 		release_sdram_region(data->tee_res);
-	if (data->initrd && data->initrd != data->os)
-		uimage_close(data->initrd);
-	if (data->os)
+	if (image_is_uimage(data)) {
+		if (data->initrd && data->initrd != data->os)
+			uimage_close(data->initrd);
 		uimage_close(data->os);
+	}
 	if (IS_ENABLED(CONFIG_ELF) && data->elf)
 		elf_close(data->elf);
 	if (IS_ENABLED(CONFIG_FITIMAGE) && data->os_fit)
-- 
2.39.2




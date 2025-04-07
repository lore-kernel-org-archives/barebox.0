Delivery-date: Mon, 07 Apr 2025 12:48:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1k1t-009W6D-01
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 12:48:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1k1s-0005cz-AW
	for lore@pengutronix.de; Mon, 07 Apr 2025 12:48:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Cnfhds3Wjsek9+LP1zDzo79Gcvl5dArOcgW0O5vOPoU=; b=uTn+31sWgcCWWNh1WlZadiGT//
	99pUiirZPKWao75f2cRXI1o496x98MaVPw6JgBnukeqYM6D3aGqeHuNT4j+bFLoduUvG1yrlA6Zvy
	NKF8exy3nguV0OQNNc4vuJ01BcCMiGVa3QkA6V6Dp84zI7VClyZFvpBNm0QmtKegDs/dE+G40j/m0
	JSE+qUvGPp+E3PhANb7d/49oT4xM6WPKAzotEXsOJZm/JjbtrWr0wdE+eBy9JaN6ROqtpgxGdabpf
	T/2PhdqRmHCTdzP+KwyaHSTaJDiXnX+PtaOIcpsAXxUZdOgBqYOwifZogy6ngShOz7O9zDtYHv6HW
	VQ/5DK1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1k1J-0000000HPie-2iCS;
	Mon, 07 Apr 2025 10:48:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1k1G-0000000HPhm-3KTb
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 10:48:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u1k1F-0005Qj-EJ; Mon, 07 Apr 2025 12:47:57 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u1k1F-003kId-0o;
	Mon, 07 Apr 2025 12:47:57 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u1k1F-00EBu9-0W;
	Mon, 07 Apr 2025 12:47:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  7 Apr 2025 12:47:56 +0200
Message-Id: <20250407104756.3379066-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250407104756.3379066-1-a.fatoum@pengutronix.de>
References: <20250407104756.3379066-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_034758_829507_105B4123 
X-CRM114-Status: GOOD (  16.23  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master v2 2/2] bootm: remove ability for late override of bootm.image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Overriding struct image_data::os_file at the location where we do it
now is not robust as the bootm handler is chosen by then and there
is no check if the override image is suitable for the original handler.

This can't be fixed in a straight-forward manner by moving the override
earlier as that would break appendroot for example.

To be able to do this robustly, some rework of the boot code may be in
order, so for now allow only overriding the oftree and the initrd.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - squash removal of unreferenced goto label and ensure it applies
    cleanly
---
 commands/boot.c           |  4 ++--
 common/bootm.c            | 36 +++++++++---------------------------
 include/bootm-overrides.h |  3 ---
 3 files changed, 11 insertions(+), 32 deletions(-)

diff --git a/commands/boot.c b/commands/boot.c
index aad01fdc6c95..07f4db4b8033 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -43,7 +43,7 @@ static int boot_add_override(struct bootm_overrides *overrides, char *var)
 	if (!strcmp(var, "bootm.image")) {
 		if (isempty(val))
 			return -EINVAL;
-		overrides->os_file = val;
+		return -ENOSYS;
 	} else if (!strcmp(var, "bootm.oftree")) {
 		overrides->oftree_file = val;
 	} else if (!strcmp(var, "bootm.initrd")) {
@@ -191,7 +191,7 @@ BAREBOX_CMD_HELP_OPT ("-m","Show a menu with boot options")
 BAREBOX_CMD_HELP_OPT ("-M INDEX","Show a menu with boot options with entry INDEX preselected")
 BAREBOX_CMD_HELP_OPT ("-w SECS","Start watchdog with timeout SECS before booting")
 #ifdef CONFIG_BOOT_OVERRIDE
-BAREBOX_CMD_HELP_OPT ("-o VAR[=VAL]","override VAR (bootm.{image,oftree,initrd}) with VAL")
+BAREBOX_CMD_HELP_OPT ("-o VAR[=VAL]","override VAR (bootm.{oftree,initrd}) with VAL")
 BAREBOX_CMD_HELP_OPT ("            ","if VAL is not specified, the value of VAR is taken")
 #endif
 BAREBOX_CMD_HELP_OPT ("-t SECS","specify timeout in SECS")
diff --git a/common/bootm.c b/common/bootm.c
index 6b63987f0900..a5065c3860b3 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -175,12 +175,6 @@ static bool bootm_get_override(char **oldpath, const char *newpath)
  */
 int bootm_load_os(struct image_data *data, unsigned long load_address)
 {
-	if (bootm_get_override(&data->os_file, bootm_overrides.os_file)) {
-		if (load_address == UIMAGE_INVALID_ADDRESS)
-			return -EINVAL;
-		goto os_file;
-	}
-
 	if (data->os_res)
 		return 0;
 
@@ -220,7 +214,6 @@ int bootm_load_os(struct image_data *data, unsigned long load_address)
 	if (IS_ENABLED(CONFIG_ELF) && data->elf)
 		return elf_load(data->elf);
 
-os_file:
 	if (!data->os_file)
 		return -EINVAL;
 
@@ -569,19 +562,15 @@ int bootm_get_os_size(struct image_data *data)
 	struct stat s;
 	int ret;
 
-	if (bootm_get_override(NULL, bootm_overrides.os_file)) {
-		os_file = bootm_overrides.os_file;
-	} else {
-		if (data->elf)
-			return elf_get_mem_size(data->elf);
-		if (image_is_uimage(data))
-			return uimage_get_size(data->os, uimage_part_num(data->os_part));
-		if (data->os_fit)
-			return data->fit_kernel_size;
-		if (!data->os_file)
-			return -EINVAL;
-		os_file = data->os_file;
-	}
+	if (data->elf)
+		return elf_get_mem_size(data->elf);
+	if (image_is_uimage(data))
+		return uimage_get_size(data->os, uimage_part_num(data->os_part));
+	if (data->os_fit)
+		return data->fit_kernel_size;
+	if (!data->os_file)
+		return -EINVAL;
+	os_file = data->os_file;
 
 	ret = stat(os_file, &s);
 	if (ret)
@@ -949,13 +938,6 @@ int bootm_boot(struct bootm_data *bootm_data)
 		printf("Passing control to %s handler\n", handler->name);
 	}
 
-	if (bootm_get_override(&data->os_file, bootm_overrides.os_file)) {
-		if (data->os_res) {
-			release_sdram_region(data->os_res);
-			data->os_res = NULL;
-		}
-	}
-
 	bootm_get_override(&data->oftree_file, bootm_overrides.oftree_file);
 
 	if (bootm_get_override(&data->initrd_file, bootm_overrides.initrd_file)) {
diff --git a/include/bootm-overrides.h b/include/bootm-overrides.h
index 231c913709e2..19557f63acd9 100644
--- a/include/bootm-overrides.h
+++ b/include/bootm-overrides.h
@@ -3,7 +3,6 @@
 #define __BOOTM_OVERRIDES_H
 
 struct bootm_overrides {
-	const char *os_file;
 	const char *oftree_file;
 	const char *initrd_file;
 };
@@ -19,8 +18,6 @@ static inline void bootm_merge_overrides(struct bootm_overrides *dst,
 {
 	if (!IS_ENABLED(CONFIG_BOOT_OVERRIDE))
 		return;
-	if (src->os_file)
-		dst->os_file = src->os_file;
 	if (src->oftree_file)
 		dst->oftree_file = src->oftree_file;
 	if (src->initrd_file)
-- 
2.39.5




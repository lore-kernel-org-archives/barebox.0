Delivery-date: Mon, 04 Mar 2024 21:21:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhEo0-008ioS-14
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 21:21:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhEnz-0003sX-Is
	for lore@pengutronix.de; Mon, 04 Mar 2024 21:21:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N5m+MXLZ6htpH1w3kVKidsTqGVXCiGb7xtiASgi/tno=; b=ayIY8oJj2cWgnprd6ohvqIuzQY
	WqHFASLXSrDV/ST6hgtAzO7ZJoAEQhLbQgNm98gCc+ZJiH12vfdJj1cCmZob6aYkk8keH2jYPMV3a
	GAo2hUG+SPX2igFdDNqRpNnJsPWscbjUcEJchsr8jXUU1+9hZv/z35Z1RbbWTF0VUEvxSm1H7IYUw
	4FV18MNuQrr3PYuFiG3AEpZeXAv9+FpABJnRt2+k6ycrwz/kPQQZHlGn/rlAUjlWNdJQ+W70Kjp3B
	ezlLXqZbUGNRkOQ76LsZi0O9Ws3QHGXv8zemVsCCVlKlr7ttd7Crb09ZuSmzkx7RdScjC5g+w2YFK
	/NP8+ZkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhEnp-0000000AZVN-00AN;
	Mon, 04 Mar 2024 20:20:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaa-0000000AIad-2ysy
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=N5m+MXLZ6htpH1w3kVKidsTqGVXCiGb7xtiASgi/tno=; b=c9879yj8lew97zl96keLdrg5yd
	5hRUkeYGX3rDbSiVqTaUNAy/c7ycBMVve1Rg8w8EpoGDNV7KobB0HwK9PNBy/DoZETlRyOe84PUgI
	rPHT+HFbP+fpqoiRCmH0bi21+sc+wngugxWRWn6usBoV+pLsaBWudLgQEEy5Ftz0t5sell6Xn9YrW
	8BwF2rhihSnrBcnwF9A45cUI2MjSDEX40RrOyxwiZsxgaEj32SwUZn/G/YfOrnjS1o2rDkXZ218xw
	0L6M/FUKJTxRAdwMqwZINuG5HrJIaoKGd3ED1HyMxVv6O1mGeSgUuL/ga7Zx+o1vbm+a8NaiQFSEU
	B8oMMqSQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaS-000000051vX-1B0I
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaH-0006Ao-7b; Mon, 04 Mar 2024 20:02:45 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaG-004PKU-NV; Mon, 04 Mar 2024 20:02:44 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYN-00Ed9V-0l;
	Mon, 04 Mar 2024 20:00:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 20:00:18 +0100
Message-Id: <20240304190038.3486881-94-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190256_811132_C9F6D093 
X-CRM114-Status: GOOD (  18.67  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 093/113] efi: payload: dynamically determine bootloader file name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

\EFI\BOOT\BOOTx64.EFI is only the default file path for x86_64. It's
different for other architectures and even for x86_64, the EFI loader
may be configured to execute a differently named file.

Fix this by querying the EFI loader for the file name instead of
hardcoding it and while at it, we add debug prints for the loaded image
and its parent to make it easier to debug in future.

On the off chance, that the EFI firmware doesn't inform us of a file
name this way, we revert back to a hardcoded value, that is
architecture-dependent.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/Kconfig        | 10 ++++++++++
 efi/devicepath.c   | 39 +++++++++++++++++++++++++++++++++------
 efi/payload/init.c | 23 ++++++++++++++++++-----
 include/efi.h      |  1 +
 4 files changed, 62 insertions(+), 11 deletions(-)

diff --git a/efi/Kconfig b/efi/Kconfig
index 35a57a3a42de..3bda02600c94 100644
--- a/efi/Kconfig
+++ b/efi/Kconfig
@@ -35,4 +35,14 @@ config EFI_GUID
 config EFI_DEVICEPATH
 	bool
 
+config EFI_PAYLOAD_DEFAULT_PATH
+	string
+	default "EFI/BOOT/BOOTARM.EFI"		if CPU_32
+	default "EFI/BOOT/BOOTAA64.EFI"		if CPU_64
+	default "EFI/BOOT/BOOTIA32.EFI"		if X86_32
+	default "EFI/BOOT/BOOTx64.EFI"		if X86_64
+	default "EFI/BOOT/BOOTRISCV32.EFI"	if ARCH_RV32I
+	default "EFI/BOOT/BOOTRISCV64.EFI"	if ARCH_RV64I
+	default "EFI/BOOT/BAREBOX.EFI"
+
 endmenu
diff --git a/efi/devicepath.c b/efi/devicepath.c
index 0c2fc4d86927..98aba6289e18 100644
--- a/efi/devicepath.c
+++ b/efi/devicepath.c
@@ -83,15 +83,23 @@ const struct efi_device_path end_instance_device_path = {
 const struct efi_device_path *
 device_path_from_handle(efi_handle_t Handle)
 {
+	const efi_guid_t *const protocols[] = {
+		&efi_loaded_image_device_path_guid,
+		&efi_device_path_protocol_guid,
+		NULL
+	};
+	const efi_guid_t * const*proto;
 	efi_status_t Status;
-	const struct efi_device_path *device_path;
 
-	Status = BS->handle_protocol(Handle, &efi_device_path_protocol_guid,
-				(void *) &device_path);
-	if (EFI_ERROR(Status))
-		device_path = NULL;
+	for (proto = protocols; *proto; proto++) {
+		const struct efi_device_path *device_path;
 
-	return device_path;
+		Status = BS->handle_protocol(Handle, *proto, (void *) &device_path);
+		if (!EFI_ERROR(Status) && device_path)
+			return device_path;
+	}
+
+	return NULL;
 }
 
 static struct efi_device_path *
@@ -871,3 +879,22 @@ char *device_path_to_partuuid(const struct efi_device_path *dev_path)
 	return NULL;
 }
 
+char *device_path_to_filepath(const struct efi_device_path *dev_path)
+{
+	struct filepath_device_path *fp = NULL;
+	char *path;
+
+	dev_path = unpack_device_path(dev_path);
+
+	while ((dev_path = device_path_next_compatible_node(dev_path,
+				 MEDIA_DEVICE_PATH, MEDIA_FILEPATH_DP))) {
+		fp = container_of(dev_path, struct filepath_device_path, header);
+		dev_path = next_device_path_node(&fp->header);
+	}
+
+	path = strdup_wchar_to_char(fp->path_name);
+	if (!path)
+		return NULL;
+
+	return strreplace(path, '\\', '/');
+}
diff --git a/efi/payload/init.c b/efi/payload/init.c
index d5ec86fafe1a..0f518d4954cb 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -300,7 +300,10 @@ core_efi_initcall(efi_core_init);
 
 static int efi_postcore_init(void)
 {
-	char *uuid;
+	const struct efi_device_path *parent_image_dp, *loaded_image_dp;
+	char *bbu_path = "/boot/" CONFIG_EFI_PAYLOAD_DEFAULT_PATH;
+
+	char *filepath, *uuid;
 	static const uint64_t loader_features =
 		EFI_LOADER_FEATURE_DEVICETREE;
 
@@ -322,8 +325,10 @@ static int efi_postcore_init(void)
 	efi_set_variable_uint64_le("LoaderFeatures", &efi_systemd_vendor_guid,
 				   loader_features);
 
-	uuid = device_path_to_partuuid(device_path_from_handle(
-				       efi_loaded_image->device_handle));
+	loaded_image_dp = device_path_from_handle(efi_loaded_image->device_handle);
+	pr_debug("loaded-image: %pD\n", loaded_image_dp);
+
+	uuid = device_path_to_partuuid(loaded_image_dp);
 	if (uuid) {
 		wchar_t *uuid16 = xstrdup_char_to_wchar(uuid);
 		efi_set_variable("LoaderDevicePartUUID",
@@ -335,8 +340,16 @@ static int efi_postcore_init(void)
 		free(uuid16);
 	}
 
-	bbu_register_std_file_update("fat", 0,	"/boot/EFI/BOOT/BOOTx64.EFI",
-				     filetype_exe);
+	parent_image_dp = device_path_from_handle(efi_parent_image);
+	pr_debug("parent-image: %pD\n", parent_image_dp);
+
+	filepath = device_path_to_filepath(parent_image_dp);
+	if (filepath) {
+		bbu_path = basprintf("/boot/%s", filepath);
+		free(filepath);
+	}
+
+	bbu_register_std_file_update("fat", 0, bbu_path, filetype_exe);
 
 	return 0;
 }
diff --git a/include/efi.h b/include/efi.h
index 45e4080fac08..6bb5f8cb0a30 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -884,6 +884,7 @@ size_t device_path_to_str_buf(const struct efi_device_path *dev_path, char buf[]
 u8 device_path_to_type(const struct efi_device_path *dev_path);
 u8 device_path_to_subtype(const struct efi_device_path *dev_path);
 char *device_path_to_partuuid(const struct efi_device_path *dev_path);
+char *device_path_to_filepath(const struct efi_device_path *dev_path);
 
 const char *efi_guid_string(efi_guid_t *g);
 
-- 
2.39.2




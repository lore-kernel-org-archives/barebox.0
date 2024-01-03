Delivery-date: Wed, 03 Jan 2024 19:33:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL63e-002NkF-0u
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:33:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL63U-0004Qx-RI
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:33:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VQWeZsCSrNOoj4odwhIgRdDLHoSwMIJCCeB2B0juJtY=; b=whaMzrQMiD1kXuWbEhPhHmv527
	Fn1msu2JSvtjKM0WwQv+1y2MwEqzvDRuxvpZDqC4Btual9X+X9q8FnmtJm6eVfayDVtaqrUstugRG
	Y7onbEqkuZqgFAgR/GdBtgvCgT3djp5bWjcGSpHSawJBUwklbWMOqlg7OlC9rCeS1W/eCqc9SylmT
	3OnCvyypdTSzZ2KqZ0M/5ETQSACRikV1qpGe+0BGuPQQAeRcBKZOgcOtCpohhsNq5Hfw0bXzz9nBk
	K8vykUKdpSS/GO7U7GgRq98igddg6oyB3+ZzsTzItiMsP6kW/r1tEwDRvgUa7U2m7V7eF+Id085EG
	8q29Mgeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61z-00BiAe-1B;
	Wed, 03 Jan 2024 18:31:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61D-00BhHL-03
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=VQWeZsCSrNOoj4odwhIgRdDLHoSwMIJCCeB2B0juJtY=; b=m1g/OohAESRIgGYVGU96LEI4UM
	hvSNACWFLFVVvEbLVJzbsFp7XhotIqcvn/6KZgCpAMhO+pmJy47aaQzFJjuKmwuMSKroTW0IryMNm
	6JR4ZzAKHxC4JoNBpSHR4cKhEX9t6ZER368j9m8eQ5KPrXRJ04oJ77f0mmv1biBtzI251kPlZbGKo
	U5nRJzJk2aYgfi4FnzxbxJhNL+0Cd73X2RD/6fBslo1OFqki9h2Vt93C8p+Vj9nKBxH1K015rne1+
	y0kDgLjID8fzkocJQvVEY8KdSUG1yxiGZzI+7+kZPumR7+OPRODUP10RBFn+VuYuITDDSS0C1dFKy
	Q9+pTghA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL611-005eC8-0n
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-0001Sk-11; Wed, 03 Jan 2024 19:30:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60z-000Atl-KU; Wed, 03 Jan 2024 19:30:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k5-001j4X-0J;
	Wed, 03 Jan 2024 19:13:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:52 +0100
Message-Id: <20240103181312.409668-93-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183055_511058_B94D8689 
X-CRM114-Status: GOOD (  18.15  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 092/112] efi: payload: dynamically determine bootloader file name
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
index 6c790c680602..354120b11a86 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -299,7 +299,10 @@ core_efi_initcall(efi_core_init);
 
 static int efi_postcore_init(void)
 {
-	char *uuid;
+	const struct efi_device_path *parent_image_dp, *loaded_image_dp;
+	char *bbu_path = "/boot/" CONFIG_EFI_PAYLOAD_DEFAULT_PATH;
+
+	char *filepath, *uuid;
 	static const uint64_t loader_features =
 		EFI_LOADER_FEATURE_DEVICETREE;
 
@@ -321,8 +324,10 @@ static int efi_postcore_init(void)
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
@@ -334,8 +339,16 @@ static int efi_postcore_init(void)
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




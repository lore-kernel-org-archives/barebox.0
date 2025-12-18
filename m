Delivery-date: Thu, 18 Dec 2025 12:13:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWBwz-00Co1e-2x
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:13:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWBwy-0005ow-Fc
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:13:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GazF4N/m0sMXuas9m1XyEdeNFUBpfDQ57eDkOgp98pQ=; b=WienDKtOo69S4l0h5mQsytQ43U
	Aei1G3RhVVmsZz4wrkF6ZwTpisKoznfe+Rq5UOmSGbn4eiTtPnFBYkclmxbCDdjykAd/XDqhkirmD
	3mw3MU0heVZUbV6oFMgVoI9FEKhVpfb/isPrdXhasBCpBdkUmtOW5W6E3K844S8TJo6wVhcBkE38Y
	kHkYnHBXZ/7BX5/3LCM3eKQ1/3x6e5fP9RsxGCPO/f9as3Je7XiG7xRqz3QVcX/+iVJlogGgIV1AN
	zZmKkFaD/C91MCttgH2Dh9Bn1i/JT6y5bvD4iDOEMwHDsNq0l2zCu93ufGWmuS13fs3rc164rMZIq
	FD6flk+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBwD-00000008IKV-2L3t;
	Thu, 18 Dec 2025 11:12:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBw7-00000008IG6-2nQK
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:12:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-0005N4-E7; Thu, 18 Dec 2025 12:12:43 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-006GgK-0k;
	Thu, 18 Dec 2025 12:12:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-0000000AVre-0YZ0;
	Thu, 18 Dec 2025 12:12:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:23 +0100
Message-ID: <20251218111242.1527495-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_031247_726502_07279778 
X-CRM114-Status: GOOD (  15.13  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v1 03/54] lib: vsprintf: print human-readable EFI GUIDs with %pUs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use during debugging, let's wire efi_guid_string() into printf.

In future, we may decide to print other UUIDs as well, but before we do
that we'll likely want to make the function more performant as it
currently compares against all GUIDs known to it serially.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/efi_handle_dump.c |  2 +-
 drivers/efi/efi-device.c   |  2 +-
 efi/guid.c                 |  4 ++--
 include/efi/guid.h         |  2 +-
 lib/vsprintf.c             | 23 +++++++++++++++++++++++
 test/self/printf.c         |  4 ++++
 6 files changed, 32 insertions(+), 5 deletions(-)

diff --git a/commands/efi_handle_dump.c b/commands/efi_handle_dump.c
index c82f3e32469a..c5c6b6bbc3bc 100644
--- a/commands/efi_handle_dump.c
+++ b/commands/efi_handle_dump.c
@@ -51,7 +51,7 @@ static void efi_dump(struct efi_boot_services *bs, efi_handle_t *handles, size_t
 		printf("  Protocols:\n");
 		for (j = 0; j < num_guids; j++)
 			printf("  %d: %pUl: %s\n", j, guids[j],
-					efi_guid_string(guids[j]));
+					efi_guid_string(guids[j]) ?: "unknown");
 
 		efi_devpath(bs, handles[i], &efi_device_path_protocol_guid,
 			    "Devpath");
diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index 470abdee5297..6bf43cebea8d 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -58,7 +58,7 @@ static void efi_devinfo(struct device *dev)
 
 	for (i = 0; i < efidev->num_guids; i++)
 		printf("  %d: %pUl: %s\n", i, &efidev->guids[i],
-					efi_guid_string(&efidev->guids[i]));
+					efi_guid_string(&efidev->guids[i]) ?: "unknown");
 }
 
 static efi_handle_t efi_find_parent(efi_handle_t handle)
diff --git a/efi/guid.c b/efi/guid.c
index 5b15c472bb85..8853829d216b 100644
--- a/efi/guid.c
+++ b/efi/guid.c
@@ -80,7 +80,7 @@ const efi_guid_t efi_guid_event_group_return_to_efibootmgr =
 		return long;			\
 	} while(0)
 
-const char *efi_guid_string(efi_guid_t *g)
+const char *efi_guid_string(const efi_guid_t *g)
 {
 	EFI_GUID_STRING(EFI_NULL_GUID, "NULL", "NULL GUID");
 	EFI_GUID_STRING(EFI_MPS_TABLE_GUID, "MPS Table", "MPS Table GUID in EFI System Table");
@@ -161,5 +161,5 @@ const char *efi_guid_string(efi_guid_t *g)
 	/* Ramdisk */
 	EFI_GUID_STRING(EFI_LINUX_INITRD_MEDIA_GUID, "Initrd Media", "EFI Linux Initrd Media GUID");
 
-	return "unknown";
+	return NULL;
 }
diff --git a/include/efi/guid.h b/include/efi/guid.h
index f6018b5f7ef8..202300c74aaa 100644
--- a/include/efi/guid.h
+++ b/include/efi/guid.h
@@ -6,7 +6,7 @@
 #include <efi/types.h>
 #include <linux/string.h>
 
-const char *efi_guid_string(efi_guid_t *g);
+const char *efi_guid_string(const efi_guid_t *g);
 
 static inline int
 efi_guidcmp (efi_guid_t left, efi_guid_t right)
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 622b40ac69e9..5ef4a075d0f6 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -22,6 +22,7 @@
 #include <wchar.h>
 #include <of.h>
 #include <efi/devicepath.h>
+#include <efi/guid.h>
 
 #include <common.h>
 #include <pbl.h>
@@ -372,6 +373,22 @@ char *uuid_string(char *buf, const char *end, const u8 *addr, int field_width,
 	return string(buf, end, uuid, field_width, precision, flags);
 }
 
+static noinline_for_stack
+char *efi_guid_string_format(char *buf, const char *end, const efi_guid_t *addr,
+			     int field_width, int precision, int flags, const char *fmt)
+{
+	const char *desc = NULL;
+
+	if (!addr)
+		return string(buf, end, NULL, field_width, precision, flags);
+
+	desc = efi_guid_string(addr);
+	if (desc)
+		return string(buf, end, desc, field_width, precision, flags);
+
+	return uuid_string(buf, end, addr->b, field_width, precision, flags, fmt);
+}
+
 static char *device_path_string(char *buf, const char *end, const struct efi_device_path *dp,
 				int field_width, int precision, int flags)
 {
@@ -510,6 +527,8 @@ char *clock(char *buf, const char *end, const struct clk *clk,
  *             [0][1][2][3]-[4][5]-[6][7]-[8][9]-[10][11][12][13][14][15]
  *           little endian output byte order is:
  *             [3][2][1][0]-[5][4]-[7][6]-[8][9]-[10][11][12][13][14][15]
+ *         s human readable description of the EFI GUID if possible and plain
+ *           GUID otherwise
  * - 'V' For a struct va_format which contains a format string * and va_list *,
  *       call vsnprintf(->format, *->va_list).
  *       Implements a "recursive vsnprintf".
@@ -534,6 +553,8 @@ char *clock(char *buf, const char *end, const struct clk *clk,
  *
  * - 'JP' For a JSON path
  * - 'D' For EFI device paths
+ * - 'Us' For a 16 byte EFI GUID, it prints the human readable description
+ *   if possible or the plain GUID as %pU would otherwise.
  */
 static char *pointer(const char *fmt, char *buf, const char *end, const void *ptr,
 		     int field_width, int precision, int flags)
@@ -547,6 +568,8 @@ static char *pointer(const char *fmt, char *buf, const char *end, const void *pt
 	case 's':
 		return symbol_string(buf, end, ptr, field_width, precision, flags, with_offset);
 	case 'U':
+		if (fmt[1] == 's' && IS_ENABLED(CONFIG_EFI_GUID))
+			return efi_guid_string_format(buf, end, ptr, field_width, precision, flags, fmt);
 		if (IS_ENABLED(CONFIG_PRINTF_UUID))
 			return uuid_string(buf, end, ptr, field_width, precision, flags, fmt);
 		break;
diff --git a/test/self/printf.c b/test/self/printf.c
index 3f35b5514705..9d7a936749a1 100644
--- a/test/self/printf.c
+++ b/test/self/printf.c
@@ -13,6 +13,7 @@
 #include <stdlib.h>
 #include <linux/string.h>
 #include <errno.h>
+#include <efi/guid.h>
 
 #include <linux/bitmap.h>
 
@@ -260,6 +261,7 @@ uuid(void)
 {
 	const char uuid[16] = {0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7,
 			       0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf};
+	efi_guid_t protocol_guid = EFI_LOAD_FILE2_PROTOCOL_GUID;
 
 	if (!IS_ENABLED(CONFIG_PRINTF_UUID)) {
 		pr_info("skipping UUID tests: disabled in config\n");
@@ -271,6 +273,8 @@ uuid(void)
 	test("00010203-0405-0607-0809-0A0B0C0D0E0F", "%pUB", uuid);
 	test("03020100-0504-0706-0809-0a0b0c0d0e0f", "%pUl", uuid);
 	test("03020100-0504-0706-0809-0A0B0C0D0E0F", "%pUL", uuid);
+	if (IS_ENABLED(CONFIG_EFI_GUID))
+		test("EFI Load File 2 Protocol", "%pUs", &protocol_guid);
 }
 
 static void __init
-- 
2.47.3




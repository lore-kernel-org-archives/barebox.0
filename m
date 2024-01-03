Delivery-date: Wed, 03 Jan 2024 19:33:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL63r-002Nn7-37
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:33:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL63i-0004h7-Up
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:33:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=03rX+zrBTJrz5MIMY0olAZGFT9C9tQForTLV5XidHog=; b=zsNcSjs62dOsdsPnLwSX2d2n6o
	7JjvvwsIFBIFs8PqY3tWV5W0GhrexjXf2JAa0UcNb5XH/O6DNo3rBAp5Sb1MIZVHYOVb+xvvEZkCb
	/x4VRVHERMgq16AYiOfmtFz9WVciE772or4CAZS1mZqYUSIhRXhMV2uWGg2vJ6ZSpPpzv567xbirI
	HqayBFo4nJKlVkp0X8UmLIlowcazi47TdW15Z7DycKSkW5iLzYvgcGGe135BzMEmzxG39qBgAIC0w
	Mr9dPY3TATTmMJx+5K+sYWrKOQqqSNPc96ieOpeyqLGGdrPgL5Zz1ZXVh8ypglwaHL0K2SBuJ20vD
	8VrZcZEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL621-00BiET-1z;
	Wed, 03 Jan 2024 18:31:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61D-00BhHR-1Y
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=03rX+zrBTJrz5MIMY0olAZGFT9C9tQForTLV5XidHog=; b=nAmT6mfL3T/D3nF4wx1tgRl2au
	T131d0PTw3rTL5vrqG6QlBEz0iGXpiNoqBmJVDEAXHSH/TePUerWB5SmgbYrYJi+d0WDHdvFZneEd
	z+9mrXxcI6Yr3pUlC/kLYrd09oHhVUIoX7IswWtKZcSoMbz7dvpMhgFkiwl01cD2vjL2mrJwdyupu
	nf9T+IiW3gbJFZb2xHPYHTTOyWv2gc7kf+g45TbwcZAJyjJocIuf14kC5r7mV81kPoDnUqXC8f9bT
	ro9VlwrYznR2B5GqgqPYL+SnFxCOTjn3Q145D7FVSswhUN2GaH+yfvmslgKt+EOK7M1dDdfS4la3h
	4PtFVf3w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL610-005eC1-2O
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60z-0001Re-NJ; Wed, 03 Jan 2024 19:30:53 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60z-000AtS-AY; Wed, 03 Jan 2024 19:30:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k5-001j4X-2V;
	Wed, 03 Jan 2024 19:13:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:13:07 +0100
Message-Id: <20240103181312.409668-108-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183055_446607_08FFB350 
X-CRM114-Status: GOOD (  26.70  )
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
Subject: [PATCH 107/112] commands: provide efi_handle_dump in both payload and loader
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The efi_handle_dump command is currently used when barebox is built as
payload, but it's also useful when running as a loader to list handles
and their protocols. Move the code into a common area to make it
accessible in both configurations.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig           |   8 ++
 commands/Makefile          |   1 +
 commands/efi_handle_dump.c | 181 ++++++++++++++++++++++++++++++++++
 drivers/efi/Makefile       |   3 +-
 drivers/efi/efi-device.c   | 196 +------------------------------------
 drivers/efi/efi-handle.c   |  43 ++++++++
 include/efi/efi-device.h   |   9 ++
 7 files changed, 246 insertions(+), 195 deletions(-)
 create mode 100644 commands/efi_handle_dump.c
 create mode 100644 drivers/efi/efi-handle.c

diff --git a/commands/Kconfig b/commands/Kconfig
index eddfbee208a1..b1e7e9ff2012 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -123,6 +123,14 @@ config CMD_DRVINFO
 	help
 	  List compiled-in device drivers and the devices they support.
 
+config CMD_EFI_HANDLE_DUMP
+	tristate
+	default y
+	depends on EFI
+	prompt "efi_handle_dump"
+	help
+	  Dump information on EFI handles
+
 config CMD_HELP
 	tristate
 	default y
diff --git a/commands/Makefile b/commands/Makefile
index 81bf5651ddc2..8ae72b10a17b 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -148,5 +148,6 @@ obj-$(CONFIG_CMD_UBSAN)		+= ubsan.o
 obj-$(CONFIG_CMD_SELFTEST)	+= selftest.o
 obj-$(CONFIG_CMD_TUTORIAL)	+= tutorial.o
 obj-$(CONFIG_CMD_STACKSMASH)	+= stacksmash.o
+obj-$(CONFIG_CMD_EFI_HANDLE_DUMP)	+= efi_handle_dump.o
 
 UBSAN_SANITIZE_ubsan.o := y
diff --git a/commands/efi_handle_dump.c b/commands/efi_handle_dump.c
new file mode 100644
index 000000000000..43cdb8ac503e
--- /dev/null
+++ b/commands/efi_handle_dump.c
@@ -0,0 +1,181 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * efi-device.c - barebox EFI payload support
+ *
+ * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ */
+
+#include <common.h>
+#include <command.h>
+#include <efi.h>
+#include <efi/efi-device.h>
+#include <efi/efi-mode.h>
+
+static void efi_devpath(efi_handle_t handle)
+{
+	efi_status_t efiret;
+	void *devpath;
+	char *dev_path_str;
+
+	efiret = BS->open_protocol(handle, &efi_device_path_protocol_guid,
+				   &devpath, NULL, NULL, EFI_OPEN_PROTOCOL_GET_PROTOCOL);
+	if (EFI_ERROR(efiret))
+		return;
+
+	dev_path_str = device_path_to_str(devpath);
+	if (dev_path_str) {
+		printf("  Devpath: \n  %s\n", dev_path_str);
+		free(dev_path_str);
+	}
+}
+
+static void efi_dump(efi_handle_t *handles, unsigned long handle_count)
+{
+	int i, j;
+	unsigned long num_guids;
+	efi_guid_t **guids;
+
+	if (!handles || !handle_count)
+		return;
+
+	for (i = 0; i < handle_count; i++) {
+		printf("handle-%p\n", handles[i]);
+
+		BS->protocols_per_handle(handles[i], &guids, &num_guids);
+		printf("  Protocols:\n");
+		for (j = 0; j < num_guids; j++)
+			printf("  %d: %pUl: %s\n", j, guids[j],
+					efi_guid_string(guids[j]));
+		efi_devpath(handles[i]);
+	}
+	printf("\n");
+}
+
+static unsigned char to_digit(unsigned char c)
+{
+	if (c >= '0' && c <= '9')
+		c -= '0';
+	else if (c >= 'A' && c <= 'F')
+		c -= 'A' - 10;
+	else
+		c -= 'a' - 10;
+
+	return c;
+}
+
+#define read_xbit(src, dest, bit) 					\
+	do {								\
+		int __i;						\
+		for (__i = (bit - 4); __i >= 0; __i -= 4, src++)	\
+			dest |= to_digit(*src) << __i;			\
+	} while (0)
+
+static int do_efi_protocol_dump(int argc, char **argv)
+{
+	unsigned long handle_count = 0;
+	efi_handle_t *handles = NULL;
+	int ret;
+	efi_guid_t guid;
+	u32 a = 0;
+	u16 b = 0;
+	u16 c = 0;
+	u8 d0 = 0;
+	u8 d1 = 0;
+	u8 d2 = 0;
+	u8 d3 = 0;
+	u8 d4 = 0;
+	u8 d5 = 0;
+	u8 d6 = 0;
+	u8 d7 = 0;
+
+	/* Format 220e73b6-6bdb-4413-8405-b974b108619a */
+	if (argc == 1) {
+		char *s = argv[0];
+		int len = strlen(s);
+
+		if (len != 36)
+			return -EINVAL;
+
+		read_xbit(s, a, 32);
+		if (*s != '-')
+			return -EINVAL;
+		s++;
+		read_xbit(s, b, 16);
+		if (*s != '-')
+			return -EINVAL;
+		s++;
+		read_xbit(s, c, 16);
+		if (*s != '-')
+			return -EINVAL;
+		s++;
+		read_xbit(s, d0, 8);
+		read_xbit(s, d1, 8);
+		if (*s != '-')
+			return -EINVAL;
+		s++;
+		read_xbit(s, d2, 8);
+		read_xbit(s, d3, 8);
+		read_xbit(s, d4, 8);
+		read_xbit(s, d5, 8);
+		read_xbit(s, d6, 8);
+		read_xbit(s, d7, 8);
+	} else if (argc == 11) {
+		/* Format :
+		 *	220e73b6 6bdb 4413 84 05 b9 74 b1 08 61 9a
+		 *   or
+		 *	0x220e73b6 0x6bdb 0x14413 0x84 0x05 0xb9 0x74 0xb1 0x08 0x61 0x9a
+		 */
+		a = simple_strtoul(argv[0], NULL, 16);
+		b = simple_strtoul(argv[1], NULL, 16);
+		c = simple_strtoul(argv[2], NULL, 16);
+		d0 = simple_strtoul(argv[3], NULL, 16);
+		d1 = simple_strtoul(argv[4], NULL, 16);
+		d2 = simple_strtoul(argv[5], NULL, 16);
+		d3 = simple_strtoul(argv[6], NULL, 16);
+		d4 = simple_strtoul(argv[7], NULL, 16);
+		d5 = simple_strtoul(argv[8], NULL, 16);
+		d6 = simple_strtoul(argv[9], NULL, 16);
+		d7 = simple_strtoul(argv[10], NULL, 16);
+	} else {
+		return -EINVAL;
+	}
+
+	guid = EFI_GUID(a, b, c, d0, d1, d2, d3, d4, d5, d6, d7);
+
+	printf("Searching for:\n");
+	printf("  %pUl: %s\n", &guid, efi_guid_string(&guid));
+
+	ret = __efi_locate_handle(BS, BY_PROTOCOL, &guid, NULL, &handle_count, &handles);
+	if (!ret)
+		efi_dump(handles, handle_count);
+
+	return 0;
+}
+
+static int do_efi_handle_dump(int argc, char *argv[])
+{
+	unsigned long handle_count = 0;
+	efi_handle_t *handles = NULL;
+	int ret;
+
+	if (argc > 1)
+		return do_efi_protocol_dump(--argc, ++argv);
+
+	ret = __efi_locate_handle(BS, ALL_HANDLES, NULL, NULL, &handle_count, &handles);
+	if (!ret)
+		efi_dump(handles, handle_count);
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(efi_handle_dump)
+BAREBOX_CMD_HELP_TEXT("Dump all the efi handle with protocol and devpath\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(efi_handle_dump)
+	.cmd = do_efi_handle_dump,
+	BAREBOX_CMD_DESC("Usage: efi_handle_dump")
+	BAREBOX_CMD_OPTS("[a-b-c-d0d1-d3d4d5d6d7] or [a b c d0 d1 d2 d3 d4 d5 d6 d7]")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_HELP(cmd_efi_handle_dump_help)
+BAREBOX_CMD_END
diff --git a/drivers/efi/Makefile b/drivers/efi/Makefile
index bd8fadac4222..4e3c39e14486 100644
--- a/drivers/efi/Makefile
+++ b/drivers/efi/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-y += efi-device.o
+obj-y += efi-handle.o
+obj-$(CONFIG_EFI_PAYLOAD) += efi-device.o
diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index bbc76e9ef769..33c82c81dd1d 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -6,7 +6,6 @@
  */
 
 #include <bootsource.h>
-#include <command.h>
 #include <common.h>
 #include <driver.h>
 #include <malloc.h>
@@ -27,30 +26,8 @@ static int efi_locate_handle(enum efi_locate_search_type search_type,
 		unsigned long *no_handles,
 		efi_handle_t **buffer)
 {
-	efi_status_t efiret;
-	unsigned long buffer_size = 0;
-	efi_handle_t *buf;
-
-	efiret = BS->locate_handle(search_type, protocol, search_key, &buffer_size,
-			NULL);
-	if (EFI_ERROR(efiret) && efiret != EFI_BUFFER_TOO_SMALL)
-		return -efi_errno(efiret);
-
-	buf = malloc(buffer_size);
-	if (!buf)
-		return -ENOMEM;
-
-	efiret = BS->locate_handle(search_type, protocol, search_key, &buffer_size,
-			buf);
-	if (EFI_ERROR(efiret)) {
-		free(buf);
-		return -efi_errno(efiret);
-	}
-
-	*no_handles = buffer_size / sizeof(efi_handle_t);
-	*buffer = buf;
-
-	return 0;
+	return __efi_locate_handle(BS, search_type, protocol, search_key, no_handles,
+				   buffer);
 }
 
 static struct efi_device *efi_find_device(efi_handle_t handle)
@@ -499,172 +476,3 @@ void efi_continue_devices(void)
 			efidrv->dev_continue(efidev);
 	}
 }
-
-static void efi_devpath(efi_handle_t handle)
-{
-	efi_status_t efiret;
-	void *devpath;
-	char *dev_path_str;
-
-	efiret = BS->open_protocol(handle, &efi_device_path_protocol_guid,
-				   &devpath, NULL, NULL, EFI_OPEN_PROTOCOL_GET_PROTOCOL);
-	if (EFI_ERROR(efiret))
-		return;
-
-	dev_path_str = device_path_to_str(devpath);
-	if (dev_path_str) {
-		printf("  Devpath: \n  %s\n", dev_path_str);
-		free(dev_path_str);
-	}
-}
-
-static void efi_dump(efi_handle_t *handles, unsigned long handle_count)
-{
-	int i, j;
-	unsigned long num_guids;
-	efi_guid_t **guids;
-
-	if (!handles || !handle_count)
-		return;
-
-	for (i = 0; i < handle_count; i++) {
-		printf("handle-%p\n", handles[i]);
-
-		BS->protocols_per_handle(handles[i], &guids, &num_guids);
-		printf("  Protocols:\n");
-		for (j = 0; j < num_guids; j++)
-			printf("  %d: %pUl: %s\n", j, guids[j],
-					efi_guid_string(guids[j]));
-		efi_devpath(handles[i]);
-	}
-	printf("\n");
-}
-
-static unsigned char to_digit(unsigned char c)
-{
-	if (c >= '0' && c <= '9')
-		c -= '0';
-	else if (c >= 'A' && c <= 'F')
-		c -= 'A' - 10;
-	else
-		c -= 'a' - 10;
-
-	return c;
-}
-
-#define read_xbit(src, dest, bit) 					\
-	do {								\
-		int __i;						\
-		for (__i = (bit - 4); __i >= 0; __i -= 4, src++)	\
-			dest |= to_digit(*src) << __i;			\
-	} while (0)
-
-static int do_efi_protocol_dump(int argc, char **argv)
-{
-	unsigned long handle_count = 0;
-	efi_handle_t *handles = NULL;
-	int ret;
-	efi_guid_t guid;
-	u32 a = 0;
-	u16 b = 0;
-	u16 c = 0;
-	u8 d0 = 0;
-	u8 d1 = 0;
-	u8 d2 = 0;
-	u8 d3 = 0;
-	u8 d4 = 0;
-	u8 d5 = 0;
-	u8 d6 = 0;
-	u8 d7 = 0;
-
-	/* Format 220e73b6-6bdb-4413-8405-b974b108619a */
-	if (argc == 1) {
-		char *s = argv[0];
-		int len = strlen(s);
-
-		if (len != 36)
-			return -EINVAL;
-
-		read_xbit(s, a, 32);
-		if (*s != '-')
-			return -EINVAL;
-		s++;
-		read_xbit(s, b, 16);
-		if (*s != '-')
-			return -EINVAL;
-		s++;
-		read_xbit(s, c, 16);
-		if (*s != '-')
-			return -EINVAL;
-		s++;
-		read_xbit(s, d0, 8);
-		read_xbit(s, d1, 8);
-		if (*s != '-')
-			return -EINVAL;
-		s++;
-		read_xbit(s, d2, 8);
-		read_xbit(s, d3, 8);
-		read_xbit(s, d4, 8);
-		read_xbit(s, d5, 8);
-		read_xbit(s, d6, 8);
-		read_xbit(s, d7, 8);
-	} else if (argc == 11) {
-		/* Format :
-		 *	220e73b6 6bdb 4413 84 05 b9 74 b1 08 61 9a
-		 *   or
-		 *	0x220e73b6 0x6bdb 0x14413 0x84 0x05 0xb9 0x74 0xb1 0x08 0x61 0x9a
-		 */
-		a = simple_strtoul(argv[0], NULL, 16);
-		b = simple_strtoul(argv[1], NULL, 16);
-		c = simple_strtoul(argv[2], NULL, 16);
-		d0 = simple_strtoul(argv[3], NULL, 16);
-		d1 = simple_strtoul(argv[4], NULL, 16);
-		d2 = simple_strtoul(argv[5], NULL, 16);
-		d3 = simple_strtoul(argv[6], NULL, 16);
-		d4 = simple_strtoul(argv[7], NULL, 16);
-		d5 = simple_strtoul(argv[8], NULL, 16);
-		d6 = simple_strtoul(argv[9], NULL, 16);
-		d7 = simple_strtoul(argv[10], NULL, 16);
-	} else {
-		return -EINVAL;
-	}
-
-	guid = EFI_GUID(a, b, c, d0, d1, d2, d3, d4, d5, d6, d7);
-
-	printf("Searching for:\n");
-	printf("  %pUl: %s\n", &guid, efi_guid_string(&guid));
-
-	ret = efi_locate_handle(BY_PROTOCOL, &guid, NULL, &handle_count, &handles);
-	if (!ret)
-		efi_dump(handles, handle_count);
-
-	return 0;
-}
-
-static int do_efi_handle_dump(int argc, char *argv[])
-{
-	unsigned long handle_count = 0;
-	efi_handle_t *handles = NULL;
-	int ret;
-
-	if (argc > 1)
-		return do_efi_protocol_dump(--argc, ++argv);
-
-	ret = efi_locate_handle(ALL_HANDLES, NULL, NULL, &handle_count, &handles);
-	if (!ret)
-		efi_dump(handles, handle_count);
-
-	return 0;
-}
-
-BAREBOX_CMD_HELP_START(efi_handle_dump)
-BAREBOX_CMD_HELP_TEXT("Dump all the efi handle with protocol and devpath\n")
-BAREBOX_CMD_HELP_END
-
-BAREBOX_CMD_START(efi_handle_dump)
-	.cmd = do_efi_handle_dump,
-	BAREBOX_CMD_DESC("Usage: efi_handle_dump")
-	BAREBOX_CMD_OPTS("[a-b-c-d0d1-d3d4d5d6d7] or [a b c d0 d1 d2 d3 d4 d5 d6 d7]")
-	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
-	BAREBOX_CMD_HELP(cmd_efi_handle_dump_help)
-BAREBOX_CMD_END
diff --git a/drivers/efi/efi-handle.c b/drivers/efi/efi-handle.c
new file mode 100644
index 000000000000..be9013cb648f
--- /dev/null
+++ b/drivers/efi/efi-handle.c
@@ -0,0 +1,43 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ */
+
+#include <common.h>
+#include <efi.h>
+#include <efi/efi-util.h>
+#include <efi/efi-device.h>
+#include <efi/efi-mode.h>
+
+int __efi_locate_handle(struct efi_boot_services *bs,
+			enum efi_locate_search_type search_type,
+			efi_guid_t *protocol,
+			void *search_key,
+			unsigned long *no_handles,
+			efi_handle_t **buffer)
+{
+	efi_status_t efiret;
+	unsigned long buffer_size = 0;
+	efi_handle_t *buf;
+
+	efiret = bs->locate_handle(search_type, protocol, search_key, &buffer_size,
+			NULL);
+	if (EFI_ERROR(efiret) && efiret != EFI_BUFFER_TOO_SMALL)
+		return -efi_errno(efiret);
+
+	buf = malloc(buffer_size);
+	if (!buf)
+		return -ENOMEM;
+
+	efiret = bs->locate_handle(search_type, protocol, search_key, &buffer_size,
+			buf);
+	if (EFI_ERROR(efiret)) {
+		free(buf);
+		return -efi_errno(efiret);
+	}
+
+	*no_handles = buffer_size / sizeof(efi_handle_t);
+	*buffer = buf;
+
+	return 0;
+}
diff --git a/include/efi/efi-device.h b/include/efi/efi-device.h
index 5f7490028b9e..5d2110356fd4 100644
--- a/include/efi/efi-device.h
+++ b/include/efi/efi-device.h
@@ -63,4 +63,13 @@ static inline bool efi_device_has_guid(struct efi_device *efidev, efi_guid_t gui
 	return false;
 }
 
+enum efi_locate_search_type;
+
+int __efi_locate_handle(struct efi_boot_services *bs,
+		enum efi_locate_search_type search_type,
+		efi_guid_t *protocol,
+		void *search_key,
+		unsigned long *no_handles,
+		efi_handle_t **buffer);
+
 #endif /* __EFI_EFI_DEVICE_H */
-- 
2.39.2




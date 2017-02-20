Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo68.mail-out.ovh.net ([46.105.78.111])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cfeID-0003pU-Iz
 for barebox@lists.infradead.org; Mon, 20 Feb 2017 03:05:43 +0000
Received: from player763.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id 38B1C3BB36
 for <barebox@lists.infradead.org>; Mon, 20 Feb 2017 04:05:09 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 20 Feb 2017 04:10:51 +0100
Message-Id: <1487560251-3005-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1487560251-3005-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170215192932.GB32649@mail.ovh.net>
 <1487560251-3005-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 12/12] efi: add efi handle dump command
To: barebox@lists.infradead.org

so we can inspect easly what is supported by the EFI implementation we running on

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/efi-guid.c        |   5 ++
 drivers/efi/efi-device.c | 169 +++++++++++++++++++++++++++++++++++++++++++++++
 include/efi.h            |   8 +++
 3 files changed, 182 insertions(+)

diff --git a/common/efi-guid.c b/common/efi-guid.c
index 04a00ee87..71aa21ddd 100644
--- a/common/efi-guid.c
+++ b/common/efi-guid.c
@@ -77,6 +77,11 @@ const char *efi_guid_string(efi_guid_t *g)
 	EFI_GUID_STRING(EFI_NETWORK_INTERFACE_IDENTIFIER_PROTOCOL_GUID, "Network Interface Identifier Protocol", "EFI Network Interface Identifier Protocol");
 	EFI_GUID_STRING(EFI_TIMESTAMP_PROTOCOL_GUID, "Timestamp", "Timestamp");
 
+	/* TPM 1.2 */
+	EFI_GUID_STRING( EFI_TCG_PROTOCOL_GUID, "TcgService", "TCGServices Protocol");
+	/* TPM 2.0 */
+	EFI_GUID_STRING( EFI_TCG2_PROTOCOL_GUID, "Tcg2Service", "TCG2Services Protocol");
+
 	/* File */
 	EFI_GUID_STRING(EFI_IDEBUSDXE_INF_GUID, "IdeBusDxe.inf", "EFI IdeBusDxe.inf File GUID");
 	EFI_GUID_STRING(EFI_TERMINALDXE_INF_GUID, "TerminalDxe.inf", "EFI TerminalDxe.inf File GUID");
diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index 1877794c6..db8b25147 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -382,3 +382,172 @@ static int efi_init_devices(void)
 	return 0;
 }
 core_initcall(efi_init_devices);
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
+	ret = efi_locate_handle(by_protocol, &guid, NULL, &handle_count, &handles);
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
+	ret = efi_locate_handle(all_handles, NULL, NULL, &handle_count, &handles);
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
diff --git a/include/efi.h b/include/efi.h
index d1b331ce5..5691f4e8f 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -480,6 +480,14 @@ extern efi_runtime_services_t *RT;
 #define EFI_SYSTEMD_VENDOR_GUID \
 	EFI_GUID(0x4a67b082, 0x0a4c, 0x41cf, 0xb6, 0xc7, 0x44, 0x0b, 0x29, 0xbb, 0x8c, 0x4f)
 
+/* for TPM 1.2 */
+#define EFI_TCG_PROTOCOL_GUID \
+	EFI_GUID(0xf541796d, 0xa62e, 0x4954, 0xa7, 0x75, 0x95, 0x84, 0xf6, 0x1b, 0x9c, 0xdd)
+
+/* for TPM 2.0 */
+#define EFI_TCG2_PROTOCOL_GUID \
+	EFI_GUID(0x607f766c, 0x7455, 0x42be, 0x93, 0x0b, 0xe4, 0xd7, 0x6d, 0xb2, 0x72, 0x0f)
+
 extern efi_guid_t efi_file_info_id;
 extern efi_guid_t efi_simple_file_system_protocol_guid;
 extern efi_guid_t efi_device_path_protocol_guid;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

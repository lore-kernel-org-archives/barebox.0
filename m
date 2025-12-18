Delivery-date: Thu, 18 Dec 2025 12:39:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCME-00CoRo-37
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:39:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCLZ-0001UY-WA
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:39:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lq6yPYURwyQOMTCDZenh89yqqC/0/Ma7DwnmZ0RKfss=; b=rhdMpY1qJ+O4O8ZMrJadEfj0Op
	INwJbbEbylBg9R/OT6a+bIcnxYr8OgVDX2eHY4Gz7LgydLxbxz2CSN+g6T2oQl2v6X0HLKLSfH1kN
	7RljhttwPNDpmifs5aOY1QMZPs47sVFdAUHIknb3ZURPnDVZSFaIiTXWQNLErEv0Lj5sN/QbahteK
	bhDzpW1MbLjKJBLjyUy2AC/javwbm2KOwcx2qS/x3918NmVFbnKuecMMnlHLvTcpNGuZvx3hqjgdu
	jjp9XKpwGi6oX7FG1YvRT10Nhauf8UZd5cAxbzdAeT9YDrBBAPB4U1en4zSKzluaNJEXRSTDCKSIn
	wB5R2aWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJj-00000008KYM-0b3J;
	Thu, 18 Dec 2025 11:37:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJN-00000008KB8-1AOH
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:36:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJL-00087q-Oq; Thu, 18 Dec 2025 12:36:47 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJL-006GuQ-1m;
	Thu, 18 Dec 2025 12:36:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw4-0000000AVre-1p28;
	Thu, 18 Dec 2025 12:12:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:49 +0100
Message-ID: <20251218111242.1527495-30-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_033649_797969_658AF57F 
X-CRM114-Status: GOOD (  34.54  )
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
Subject: [PATCH v1 29/54] efi: loader: protocol: add console support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox will need to provide EFI protocols for text input and output for
use by the EFI applications. Import the necessary support from U-Boot.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/boot.c              |   10 +
 efi/loader/protocols/Makefile  |    1 +
 efi/loader/protocols/console.c | 1327 ++++++++++++++++++++++++++++++++
 include/efi/loader.h           |    3 +
 include/efi/protocol/text.h    |   32 +-
 5 files changed, 1367 insertions(+), 6 deletions(-)
 create mode 100644 efi/loader/protocols/console.c

diff --git a/efi/loader/boot.c b/efi/loader/boot.c
index 2d208c4cafbd..29cab7acd1c0 100644
--- a/efi/loader/boot.c
+++ b/efi/loader/boot.c
@@ -3814,6 +3814,16 @@ efi_status_t efi_alloc_system_table(void)
  */
 efi_status_t efi_initialize_system_table(void)
 {
+	/*
+	 * These entries will be set to NULL in ExitBootServices(). To avoid
+	 * relocation in SetVirtualAddressMap(), set them dynamically.
+	 */
+	systab.con_in_handle = efi_root;
+	systab.con_in = &efi_con_in;
+	systab.con_out_handle = efi_root;
+	systab.con_out = &efi_con_out;
+	systab.stderr_handle = efi_root;
+	systab.std_err = &efi_con_out;
 	systab.boottime = &efi_boot_services;
 
 	/*
diff --git a/efi/loader/protocols/Makefile b/efi/loader/protocols/Makefile
index 03095352d225..472dd54116c5 100644
--- a/efi/loader/protocols/Makefile
+++ b/efi/loader/protocols/Makefile
@@ -3,3 +3,4 @@
 obj-$(CONFIG_FS) += file.o
 obj-$(CONFIG_DISK) += disk.o
 obj-$(CONFIG_VIDEO) += gop.o
+obj-$(CONFIG_CONSOLE_FULL) += console.o
diff --git a/efi/loader/protocols/console.c b/efi/loader/protocols/console.c
new file mode 100644
index 000000000000..d2c13196e4c2
--- /dev/null
+++ b/efi/loader/protocols/console.c
@@ -0,0 +1,1327 @@
+// SPDX-License-Identifier: GPL-2.0+
+// SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/419cc25aa15784510a276f78441efbaf470b8577/lib/efi_loader/efi_console.c
+/*
+ *  EFI application console interface
+ *
+ *  Copyright (c) 2016 Alexander Graf
+ */
+
+#define pr_fmt(fmt) "efi-loader: console: " fmt
+
+#include <malloc.h>
+#include <charset.h>
+#include <clock.h>
+#include <stdio.h>
+#include <efi/loader.h>
+#include <efi/devicepath.h>
+#include <efi/loader/object.h>
+#include <efi/loader/event.h>
+#include <efi/loader/devicepath.h>
+#include <efi/protocol/text.h>
+#include <efi/error.h>
+#include <efi/guid.h>
+
+#ifdef DEBUG
+#include <efi/loader/trace.h>
+#else
+#define EFI_ENTRY(...)	(void)0
+#define EFI_EXIT(ret)	({ ret; })
+#define EFI_PRINT	no_printf
+#endif
+
+#define EFI_COUT_MODE_2 2
+#define EFI_MAX_COUT_MODE 3
+
+struct cout_mode {
+	unsigned long columns;
+	unsigned long rows;
+	int present;
+};
+
+static struct efi_object uart_obj;
+static struct cout_mode efi_cout_modes[] = {
+	/* EFI Mode 0 is 80x25 and always present */
+	{
+		.columns = 80,
+		.rows = 25,
+		.present = 1,
+	},
+	/* EFI Mode 1 is always 80x50 */
+	{
+		.columns = 80,
+		.rows = 50,
+		.present = 0,
+	},
+	/* Value are unknown until we query the console */
+	{
+		.columns = 0,
+		.rows = 0,
+		.present = 0,
+	},
+};
+
+const efi_guid_t efi_text_input_protocol_guid =
+			EFI_SIMPLE_TEXT_IN_PROTOCOL_GUID;
+const efi_guid_t efi_text_output_protocol_guid =
+			EFI_SIMPLE_TEXT_OUT_PROTOCOL_GUID;
+
+#define cESC '\x1b'
+#define ESC "\x1b"
+
+/*
+ * efi_con_mode - mode information of the Simple Text Output Protocol
+ *
+ * Use safe settings before efi_setup_console_size() is called.
+ * By default enable only the 80x25 mode which must always exist.
+ */
+static struct simple_text_output_mode efi_con_mode = {
+	.max_mode = 1,
+	.mode = 0,
+	.attribute = 0,
+	.cursor_column = 0,
+	.cursor_row = 0,
+	.cursor_visible = 1,
+};
+
+/**
+ * term_get_char() - read a character from the console
+ *
+ * Wait for up to 100 ms to read a character from the console.
+ *
+ * @c:		pointer to the buffer to receive the character
+ * Return:	0 on success, 1 otherwise
+ */
+static int term_get_char(s32 *c)
+{
+	u64 timeout;
+
+	/* Wait up to 100 ms for a character */
+	timeout = get_time_ns();
+
+	while (!tstc())
+		if (is_timeout(timeout, 100 * MSECOND))
+			return 1;
+
+	*c = getchar();
+	return 0;
+}
+
+/**
+ * term_read_reply() - receive and parse a reply from the terminal
+ *
+ * @n:		array of return values
+ * @num:	number of return values expected
+ * @end_char:	character indicating end of terminal message
+ * Return:	non-zero indicates error
+ */
+static int term_read_reply(int *n, int num, char end_char)
+{
+	s32 c;
+	int i = 0;
+
+	if (term_get_char(&c) || c != cESC)
+		return -1;
+
+	if (term_get_char(&c) || c != '[')
+		return -1;
+
+	n[0] = 0;
+	while (1) {
+		if (!term_get_char(&c)) {
+			if (c == ';') {
+				i++;
+				if (i >= num)
+					return -1;
+				n[i] = 0;
+				continue;
+			} else if (c == end_char) {
+				break;
+			} else if (c > '9' || c < '0') {
+				return -1;
+			}
+
+			/* Read one more decimal position */
+			n[i] *= 10;
+			n[i] += c - '0';
+		} else {
+			return -1;
+		}
+	}
+	if (i != num - 1)
+		return -1;
+
+	return 0;
+}
+
+/**
+ * efi_cout_output_string() - write Unicode string to console
+ *
+ * This function implements the OutputString service of the simple text output
+ * protocol. See the Unified Extensible Firmware Interface (UEFI) specification
+ * for details.
+ *
+ * @this:	simple text output protocol
+ * @string:	u16 string
+ * Return:	status code
+ */
+static efi_status_t EFIAPI efi_cout_output_string(
+			struct efi_simple_text_output_protocol *this,
+			const wchar_t *string)
+{
+	struct simple_text_output_mode *con = &efi_con_mode;
+	struct cout_mode *mode = &efi_cout_modes[con->mode];
+	char *buf, *pos;
+	const u16 *p;
+	efi_status_t ret = EFI_SUCCESS;
+
+	EFI_ENTRY("%p, '%ls'", this, string);
+
+	if (!this || !string) {
+		ret = EFI_INVALID_PARAMETER;
+		goto out;
+	}
+
+	buf = malloc(utf16_utf8_strlen(string) + 1);
+	if (!buf) {
+		ret = EFI_OUT_OF_RESOURCES;
+		goto out;
+	}
+	pos = buf;
+	utf16_utf8_strcpy(&pos, string);
+	puts(buf);
+	free(buf);
+
+	/*
+	 * Update the cursor position.
+	 *
+	 * The UEFI spec provides advance rules for U+0000, U+0008, U+000A,
+	 * and U000D. All other control characters are ignored. Any non-control
+	 * character increase the column by one.
+	 */
+	for (p = string; *p; ++p) {
+		switch (*p) {
+		case '\b':	/* U+0008, backspace */
+			if (con->cursor_column)
+				con->cursor_column--;
+			break;
+		case '\n':	/* U+000A, newline */
+			con->cursor_column = 0;
+			con->cursor_row++;
+			break;
+		case '\r':	/* U+000D, carriage-return */
+			con->cursor_column = 0;
+			break;
+		case 0xd800 ... 0xdbff:
+			/*
+			 * Ignore high surrogates, we do not want to count a
+			 * Unicode character twice.
+			 */
+			break;
+		default:
+			/* Exclude control codes */
+			if (*p > 0x1f)
+				con->cursor_column++;
+			break;
+		}
+		if (con->cursor_column >= mode->columns) {
+			con->cursor_column = 0;
+			con->cursor_row++;
+		}
+		/*
+		 * When we exceed the row count the terminal will scroll up one
+		 * line. We have to adjust the cursor position.
+		 */
+		if (con->cursor_row >= mode->rows && con->cursor_row)
+			con->cursor_row--;
+	}
+
+out:
+	return EFI_EXIT(ret);
+}
+
+/**
+ * efi_cout_test_string() - test writing Unicode string to console
+ *
+ * This function implements the TestString service of the simple text output
+ * protocol. See the Unified Extensible Firmware Interface (UEFI) specification
+ * for details.
+ *
+ * As in OutputString we simply convert UTF-16 to UTF-8 there are no unsupported
+ * code points and we can always return EFI_SUCCESS.
+ *
+ * @this:	simple text output protocol
+ * @string:	u16 string
+ * Return:	status code
+ */
+static efi_status_t EFIAPI efi_cout_test_string(
+			struct efi_simple_text_output_protocol *this,
+			const u16 *string)
+{
+	EFI_ENTRY("%p, %p", this, string);
+	return EFI_EXIT(EFI_SUCCESS);
+}
+
+/**
+ * cout_mode_matches() - check if mode has given terminal size
+ *
+ * @mode:	text mode
+ * @rows:	number of rows
+ * @cols:	number of columns
+ * Return:	true if number of rows and columns matches the mode and
+ *		the mode is present
+ */
+static bool cout_mode_matches(struct cout_mode *mode, int rows, int cols)
+{
+	if (!mode->present)
+		return false;
+
+	return (mode->rows == rows) && (mode->columns == cols);
+}
+
+/**
+ * query_console_serial() - query serial console size
+ *
+ * When using a serial console or the net console we can only devise the
+ * terminal size by querying the terminal using ECMA-48 control sequences.
+ *
+ * @rows:	pointer to return number of rows
+ * @cols:	pointer to return number of columns
+ * Returns:	0 on success
+ */
+static int query_console_serial(int *rows, int *cols)
+{
+	int ret = 0;
+	int n[2];
+
+	/* Empty input buffer */
+	while (tstc())
+		getchar();
+
+	/*
+	 * Not all terminals understand CSI [18t for querying the console size.
+	 * We should adhere to escape sequences documented in the console_codes
+	 * man page and the ECMA-48 standard.
+	 *
+	 * So here we follow a different approach. We position the cursor to the
+	 * bottom right and query its position. Before leaving the function we
+	 * restore the original cursor position.
+	 */
+	printf(ESC "7"		/* Save cursor position */
+	       ESC "[r"		/* Set scrolling region to full window */
+	       ESC "[999;999H"	/* Move to bottom right corner */
+	       ESC "[6n");	/* Query cursor position */
+
+	/* Read {rows,cols} */
+	if (term_read_reply(n, 2, 'R')) {
+		ret = 1;
+		goto out;
+	}
+
+	*cols = n[1];
+	*rows = n[0];
+out:
+	printf(ESC "8");	/* Restore cursor position */
+	return ret;
+}
+
+static void efi_setup_console_size(void)
+{
+	int rows = 25, cols = 80;
+	int ret = -ENODEV;
+
+	ret = query_console_serial(&rows, &cols);
+	if (ret)
+		return;
+
+	/* Test if we can have Mode 1 */
+	if (cols >= 80 && rows >= 50) {
+		efi_cout_modes[1].present = 1;
+		efi_con_mode.max_mode = 2;
+	}
+
+	/*
+	 * Install our mode as mode 2 if it is different
+	 * than mode 0 or 1 and set it as the currently selected mode
+	 */
+	if (!cout_mode_matches(&efi_cout_modes[0], rows, cols) &&
+	    !cout_mode_matches(&efi_cout_modes[1], rows, cols)) {
+		efi_cout_modes[EFI_COUT_MODE_2].columns = cols;
+		efi_cout_modes[EFI_COUT_MODE_2].rows = rows;
+		efi_cout_modes[EFI_COUT_MODE_2].present = 1;
+		efi_con_mode.max_mode = EFI_MAX_COUT_MODE;
+		efi_con_mode.mode = EFI_COUT_MODE_2;
+	}
+}
+
+/**
+ * efi_cout_query_mode() - get terminal size for a text mode
+ *
+ * This function implements the QueryMode service of the simple text output
+ * protocol. See the Unified Extensible Firmware Interface (UEFI) specification
+ * for details.
+ *
+ * @this:		simple text output protocol
+ * @mode_number:	mode number to retrieve information on
+ * @columns:		number of columns
+ * @rows:		number of rows
+ * Return:		status code
+ */
+static efi_status_t EFIAPI efi_cout_query_mode(
+			struct efi_simple_text_output_protocol *this,
+			unsigned long mode_number, unsigned long *columns,
+			unsigned long *rows)
+{
+	EFI_ENTRY("%p, %ld, %p, %p", this, mode_number, columns, rows);
+
+	if (mode_number >= efi_con_mode.max_mode)
+		return EFI_EXIT(EFI_UNSUPPORTED);
+
+	if (efi_cout_modes[mode_number].present != 1)
+		return EFI_EXIT(EFI_UNSUPPORTED);
+
+	if (columns)
+		*columns = efi_cout_modes[mode_number].columns;
+	if (rows)
+		*rows = efi_cout_modes[mode_number].rows;
+
+	return EFI_EXIT(EFI_SUCCESS);
+}
+
+static const struct {
+	u8 fg;
+	u8 bg;
+} color[] = {
+	{ 30, 40 },     /* 0: black */
+	{ 34, 44 },     /* 1: blue */
+	{ 32, 42 },     /* 2: green */
+	{ 36, 46 },     /* 3: cyan */
+	{ 31, 41 },     /* 4: red */
+	{ 35, 45 },     /* 5: magenta */
+	{ 33, 43 },     /* 6: brown, map to yellow as EDK2 does*/
+	{ 37, 47 },     /* 7: light gray, map to white */
+};
+
+/**
+ * efi_cout_set_attribute() - set fore- and background color
+ *
+ * This function implements the SetAttribute service of the simple text output
+ * protocol. See the Unified Extensible Firmware Interface (UEFI) specification
+ * for details.
+ *
+ * @this:	simple text output protocol
+ * @attribute:	foreground color - bits 0-3, background color - bits 4-6
+ * Return:	status code
+ */
+static efi_status_t EFIAPI efi_cout_set_attribute(
+			struct efi_simple_text_output_protocol *this,
+			unsigned long attribute)
+{
+	unsigned int bold = EFI_ATTR_BOLD(attribute);
+	unsigned int fg = EFI_ATTR_FG(attribute);
+	unsigned int bg = EFI_ATTR_BG(attribute);
+
+	EFI_ENTRY("%p, %lx", this, attribute);
+
+	efi_con_mode.attribute = attribute;
+	if (attribute)
+		printf(ESC"[%u;%u;%um", bold, color[fg].fg, color[bg].bg);
+	else
+		printf(ESC"[0;37;40m");
+
+	return EFI_EXIT(EFI_SUCCESS);
+}
+
+/**
+ * efi_clear_screen() - clear screen
+ */
+static void efi_clear_screen(void)
+{
+	/*
+	 * The Linux console wants both a clear and a home command. The video
+	 * uclass does not support <ESC>[H without coordinates, yet.
+	 */
+	printf(ESC "[2J" ESC "[1;1H");
+	efi_con_mode.cursor_column = 0;
+	efi_con_mode.cursor_row = 0;
+}
+
+/**
+ * efi_cout_clear_screen() - clear screen
+ *
+ * This function implements the ClearScreen service of the simple text output
+ * protocol. See the Unified Extensible Firmware Interface (UEFI) specification
+ * for details.
+ *
+ * @this:	pointer to the protocol instance
+ * Return:	status code
+ */
+static efi_status_t EFIAPI efi_cout_clear_screen(
+			struct efi_simple_text_output_protocol *this)
+{
+	EFI_ENTRY("%p", this);
+
+	/* Set default colors if not done yet */
+	if (efi_con_mode.attribute == 0) {
+		efi_con_mode.attribute = 0x07;
+		printf(ESC "[0;37;40m");
+	}
+
+	efi_clear_screen();
+
+	return EFI_EXIT(EFI_SUCCESS);
+}
+
+/**
+ * efi_cout_clear_set_mode() - set text model
+ *
+ * This function implements the SetMode service of the simple text output
+ * protocol. See the Unified Extensible Firmware  Interface (UEFI) specification
+ * for details.
+ *
+ * @this:		pointer to the protocol instance
+ * @mode_number:	number of the text mode to set
+ * Return:		status code
+ */
+static efi_status_t EFIAPI efi_cout_set_mode(
+			struct efi_simple_text_output_protocol *this,
+			unsigned long mode_number)
+{
+	EFI_ENTRY("%p, %ld", this, mode_number);
+
+	if (mode_number >= efi_con_mode.max_mode)
+		return EFI_EXIT(EFI_UNSUPPORTED);
+
+	if (!efi_cout_modes[mode_number].present)
+		return EFI_EXIT(EFI_UNSUPPORTED);
+
+	efi_con_mode.mode = mode_number;
+	efi_clear_screen();
+
+	return EFI_EXIT(EFI_SUCCESS);
+}
+
+/**
+ * efi_cout_reset() - reset the terminal
+ *
+ * This function implements the Reset service of the simple text output
+ * protocol. See the Unified Extensible Firmware  Interface (UEFI) specification
+ * for details.
+ *
+ * @this:			pointer to the protocol instance
+ * @extended_verification:	if set an extended verification may be executed
+ * Return:			status code
+ */
+static efi_status_t EFIAPI efi_cout_reset(
+			struct efi_simple_text_output_protocol *this,
+			char extended_verification)
+{
+	EFI_ENTRY("%p, %d", this, extended_verification);
+
+	/* Set default colors */
+	efi_con_mode.attribute = 0x07;
+	printf(ESC "[0;37;40m");
+	/* Clear screen */
+	efi_clear_screen();
+
+	return EFI_EXIT(EFI_SUCCESS);
+}
+
+/**
+ * efi_cout_set_cursor_position() - reset the terminal
+ *
+ * This function implements the SetCursorPosition service of the simple text
+ * output protocol. See the Unified Extensible Firmware  Interface (UEFI)
+ * specification for details.
+ *
+ * @this:	pointer to the protocol instance
+ * @column:	column to move to
+ * @row:	row to move to
+ * Return:	status code
+ */
+static efi_status_t EFIAPI efi_cout_set_cursor_position(
+			struct efi_simple_text_output_protocol *this,
+			unsigned long column, unsigned long row)
+{
+	efi_status_t ret = EFI_SUCCESS;
+	struct simple_text_output_mode *con = &efi_con_mode;
+	struct cout_mode *mode = &efi_cout_modes[con->mode];
+
+	EFI_ENTRY("%p, %ld, %ld", this, column, row);
+
+	/* Check parameters */
+	if (!this) {
+		ret = EFI_INVALID_PARAMETER;
+		goto out;
+	}
+	if (row >= mode->rows || column >= mode->columns) {
+		ret = EFI_UNSUPPORTED;
+		goto out;
+	}
+
+	/*
+	 * Set cursor position by sending CSI H.
+	 * EFI origin is [0, 0], terminal origin is [1, 1].
+	 */
+	printf(ESC "[%d;%dH", (int)row + 1, (int)column + 1);
+	efi_con_mode.cursor_column = column;
+	efi_con_mode.cursor_row = row;
+out:
+	return EFI_EXIT(ret);
+}
+
+/**
+ * efi_cout_enable_cursor() - enable the cursor
+ *
+ * This function implements the EnableCursor service of the simple text  output
+ * protocol. See the Unified Extensible Firmware  Interface (UEFI) specification
+ * for details.
+ *
+ * @this:	pointer to the protocol instance
+ * @enable:	if true enable, if false disable the cursor
+ * Return:	status code
+ */
+static efi_status_t EFIAPI efi_cout_enable_cursor(
+			struct efi_simple_text_output_protocol *this,
+			bool enable)
+{
+	EFI_ENTRY("%p, %d", this, enable);
+
+	printf(ESC"[?25%c", enable ? 'h' : 'l');
+	efi_con_mode.cursor_visible = !!enable;
+
+	return EFI_EXIT(EFI_SUCCESS);
+}
+
+struct efi_simple_text_output_protocol efi_con_out = {
+	.reset = efi_cout_reset,
+	.output_string = efi_cout_output_string,
+	.test_string = efi_cout_test_string,
+	.query_mode = efi_cout_query_mode,
+	.set_mode = efi_cout_set_mode,
+	.set_attribute = efi_cout_set_attribute,
+	.clear_screen = efi_cout_clear_screen,
+	.set_cursor_position = efi_cout_set_cursor_position,
+	.enable_cursor = efi_cout_enable_cursor,
+	.mode = (void*)&efi_con_mode,
+};
+
+/**
+ * struct efi_cin_notify_function - registered console input notify function
+ *
+ * @link:	link to list
+ * @key:	key to notify
+ * @function:	function to call
+ */
+struct efi_cin_notify_function {
+	struct list_head link;
+	struct efi_key_data key;
+	efi_status_t (EFIAPI *function)
+		(struct efi_key_data *key_data);
+};
+
+static bool key_available;
+static struct efi_key_data next_key;
+static LIST_HEAD(cin_notify_functions);
+
+/**
+ * set_shift_mask() - set shift mask
+ *
+ * @mod:	Xterm shift mask
+ * @key_state:  receives the state of the shift, alt, control, and logo keys
+ */
+static void set_shift_mask(int mod, struct efi_key_state *key_state)
+{
+	key_state->shift_state = EFI_SHIFT_STATE_VALID;
+	if (mod) {
+		--mod;
+		if (mod & 1)
+			key_state->shift_state |= EFI_LEFT_SHIFT_PRESSED;
+		if (mod & 2)
+			key_state->shift_state |= EFI_LEFT_ALT_PRESSED;
+		if (mod & 4)
+			key_state->shift_state |= EFI_LEFT_CONTROL_PRESSED;
+		if (!mod || (mod & 8))
+			key_state->shift_state |= EFI_LEFT_LOGO_PRESSED;
+	}
+}
+
+/**
+ * analyze_modifiers() - analyze modifiers (shift, alt, ctrl) for function keys
+ *
+ * This gets called when we have already parsed CSI.
+ *
+ * @key_state:  receives the state of the shift, alt, control, and logo keys
+ * Return:	the unmodified code
+ */
+static int analyze_modifiers(struct efi_key_state *key_state)
+{
+	int c, mod = 0, ret = 0;
+
+	c = getchar();
+
+	if (c != ';') {
+		ret = c;
+		if (c == '~')
+			goto out;
+		c = getchar();
+	}
+	for (;;) {
+		switch (c) {
+		case '0'...'9':
+			mod *= 10;
+			mod += c - '0';
+		/* fall through */
+		case ';':
+			c = getchar();
+			break;
+		default:
+			goto out;
+		}
+	}
+out:
+	set_shift_mask(mod, key_state);
+	if (!ret)
+		ret = c;
+	return ret;
+}
+
+/**
+ * efi_cin_read_key() - read a key from the console input
+ *
+ * @key:	- key received
+ * Return:	- status code
+ */
+static efi_status_t efi_cin_read_key(struct efi_key_data *key)
+{
+	struct efi_input_key pressed_key = {
+		.scan_code = 0,
+		.unicode_char = 0,
+	};
+	s32 ch;
+
+	if (console_read_unicode(&ch))
+		return EFI_NOT_READY;
+
+	key->state.shift_state = EFI_SHIFT_STATE_INVALID;
+	key->state.toggle_state = EFI_TOGGLE_STATE_INVALID;
+
+	/* We do not support multi-word codes */
+	if (ch >= 0x10000)
+		ch = '?';
+
+	switch (ch) {
+	case 0x1b:
+		/*
+		 * If a second key is received within 10 ms, assume that we are
+		 * dealing with an escape sequence. Otherwise consider this the
+		 * escape key being hit. 10 ms is long enough to work fine at
+		 * 1200 baud and above.
+		 */
+		udelay(10000);
+		if (!tstc()) {
+			pressed_key.scan_code = 23;
+			break;
+		}
+		/*
+		 * Xterm Control Sequences
+		 * https://www.xfree86.org/4.8.0/ctlseqs.html
+		 */
+		ch = getchar();
+		switch (ch) {
+		case cESC: /* ESC */
+			pressed_key.scan_code = 23;
+			break;
+		case 'O': /* F1 - F4, End */
+			ch = getchar();
+			/* consider modifiers */
+			if (ch == 'F') { /* End */
+				pressed_key.scan_code = 6;
+				break;
+			} else if ('A' <= ch && ch <= 'D') {
+				pressed_key.scan_code = ch - 'A' + 1;
+				break;
+			} else if (ch < 'P') {
+				set_shift_mask(ch - '0', &key->state);
+				ch = getchar();
+			}
+			pressed_key.scan_code = ch - 'P' + 11;
+			break;
+		case '[':
+			ch = getchar();
+			switch (ch) {
+			case 'A'...'D': /* up, down right, left */
+				pressed_key.scan_code = ch - 'A' + 1;
+				break;
+			case 'F': /* End */
+				pressed_key.scan_code = 6;
+				break;
+			case 'H': /* Home */
+				pressed_key.scan_code = 5;
+				break;
+			case '1':
+				ch = analyze_modifiers(&key->state);
+				switch (ch) {
+				case '1'...'5': /* F1 - F5 */
+					pressed_key.scan_code = ch - '1' + 11;
+					break;
+				case '6'...'9': /* F5 - F8 */
+					pressed_key.scan_code = ch - '6' + 15;
+					break;
+				case 'A'...'D': /* up, down right, left */
+					pressed_key.scan_code = ch - 'A' + 1;
+					break;
+				case 'F': /* End */
+					pressed_key.scan_code = 6;
+					break;
+				case 'H': /* Home */
+					pressed_key.scan_code = 5;
+					break;
+				case '~': /* Home */
+					pressed_key.scan_code = 5;
+					break;
+				}
+				break;
+			case '2':
+				ch = analyze_modifiers(&key->state);
+				switch (ch) {
+				case '0'...'1': /* F9 - F10 */
+					pressed_key.scan_code = ch - '0' + 19;
+					break;
+				case '3'...'4': /* F11 - F12 */
+					pressed_key.scan_code = ch - '3' + 21;
+					break;
+				case '~': /* INS */
+					pressed_key.scan_code = 7;
+					break;
+				}
+				break;
+			case '3': /* DEL */
+				pressed_key.scan_code = 8;
+				analyze_modifiers(&key->state);
+				break;
+			case '5': /* PG UP */
+				pressed_key.scan_code = 9;
+				analyze_modifiers(&key->state);
+				break;
+			case '6': /* PG DOWN */
+				pressed_key.scan_code = 10;
+				analyze_modifiers(&key->state);
+				break;
+			} /* [ */
+			break;
+		default:
+			/* ALT key */
+			set_shift_mask(3, &key->state);
+		}
+		break;
+	case 0x7f:
+		/* Backspace */
+		ch = 0x08;
+	}
+	if (pressed_key.scan_code) {
+		key->state.shift_state |= EFI_SHIFT_STATE_VALID;
+	} else {
+		pressed_key.unicode_char = ch;
+
+		/*
+		 * Assume left control key for control characters typically
+		 * entered using the control key.
+		 */
+		if (ch >= 0x01 && ch <= 0x1f) {
+			key->state.shift_state |=
+					EFI_SHIFT_STATE_VALID;
+			switch (ch) {
+			case 0x01 ... 0x07:
+			case 0x0b ... 0x0c:
+			case 0x0e ... 0x1f:
+				key->state.shift_state |=
+						EFI_LEFT_CONTROL_PRESSED;
+			}
+		}
+	}
+	key->key = pressed_key;
+
+	return EFI_SUCCESS;
+}
+
+/**
+ * efi_cin_notify() - notify registered functions
+ */
+static void efi_cin_notify(void)
+{
+	struct efi_cin_notify_function *item;
+
+	list_for_each_entry(item, &cin_notify_functions, link) {
+		bool match = true;
+
+		/* We do not support toggle states */
+		if (item->key.key.unicode_char || item->key.key.scan_code) {
+			if (item->key.key.unicode_char !=
+			    next_key.key.unicode_char ||
+			    item->key.key.scan_code != next_key.key.scan_code)
+				match = false;
+		}
+		if (item->key.state.shift_state &&
+		    item->key.state.shift_state !=
+		    next_key.state.shift_state)
+			match = false;
+
+		if (match)
+			/* We don't bother about the return code */
+			item->function(&next_key);
+	}
+}
+
+/**
+ * efi_cin_check() - check if keyboard input is available
+ */
+static void efi_cin_check(void)
+{
+	efi_status_t ret;
+
+	if (key_available) {
+		efi_signal_event(efi_con_in.wait_for_key);
+		return;
+	}
+
+	if (tstc()) {
+		ret = efi_cin_read_key(&next_key);
+		if (ret == EFI_SUCCESS) {
+			key_available = true;
+
+			/* Notify registered functions */
+			efi_cin_notify();
+
+			/* Queue the wait for key event */
+			if (key_available)
+				efi_signal_event(efi_con_in.wait_for_key);
+		}
+	}
+}
+
+/**
+ * efi_cin_empty_buffer() - empty input buffer
+ */
+static void efi_cin_empty_buffer(void)
+{
+	while (tstc())
+		getchar();
+	key_available = false;
+}
+
+/**
+ * efi_cin_reset_ex() - reset console input
+ *
+ * @this:			- the extended simple text input protocol
+ * @extended_verification:	- extended verification
+ *
+ * This function implements the reset service of the
+ * EFI_SIMPLE_TEXT_INPUT_EX_PROTOCOL.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification for
+ * details.
+ *
+ * Return: old value of the task priority level
+ */
+static efi_status_t EFIAPI efi_cin_reset_ex(
+		struct efi_simple_text_input_ex_protocol *this,
+		bool extended_verification)
+{
+	efi_status_t ret = EFI_SUCCESS;
+
+	EFI_ENTRY("%p, %d", this, extended_verification);
+
+	/* Check parameters */
+	if (!this) {
+		ret = EFI_INVALID_PARAMETER;
+		goto out;
+	}
+
+	efi_cin_empty_buffer();
+out:
+	return EFI_EXIT(ret);
+}
+
+/**
+ * efi_cin_read_key_stroke_ex() - read key stroke
+ *
+ * @this:	instance of the EFI_SIMPLE_TEXT_INPUT_PROTOCOL
+ * @key_data:	key read from console
+ * Return:	status code
+ *
+ * This function implements the ReadKeyStrokeEx service of the
+ * EFI_SIMPLE_TEXT_INPUT_EX_PROTOCOL.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification for
+ * details.
+ */
+static efi_status_t EFIAPI efi_cin_read_key_stroke_ex(
+		struct efi_simple_text_input_ex_protocol *this,
+		struct efi_key_data *key_data)
+{
+	efi_status_t ret = EFI_SUCCESS;
+
+	EFI_ENTRY("%p, %p", this, key_data);
+
+	/* Check parameters */
+	if (!this || !key_data) {
+		ret = EFI_INVALID_PARAMETER;
+		goto out;
+	}
+
+	/* We don't do interrupts, so check for timers cooperatively */
+	efi_timer_check();
+
+	/* Enable console input after ExitBootServices */
+	efi_cin_check();
+
+	if (!key_available) {
+		memset(key_data, 0, sizeof(struct efi_key_data));
+		ret = EFI_NOT_READY;
+		goto out;
+	}
+	/*
+	 * CTRL+A - CTRL+Z have to be signaled as a - z.
+	 * SHIFT+CTRL+A - SHIFT+CTRL+Z have to be signaled as A - Z.
+	 * CTRL+\ - CTRL+_ have to be signaled as \ - _.
+	 */
+	switch (next_key.key.unicode_char) {
+	case 0x01 ... 0x07:
+	case 0x0b ... 0x0c:
+	case 0x0e ... 0x1a:
+		if (!(next_key.state.toggle_state &
+		      EFI_CAPS_LOCK_ACTIVE) ^
+		    !(next_key.state.shift_state &
+		      (EFI_LEFT_SHIFT_PRESSED | EFI_RIGHT_SHIFT_PRESSED)))
+			next_key.key.unicode_char += 0x40;
+		else
+			next_key.key.unicode_char += 0x60;
+		break;
+	case 0x1c ... 0x1f:
+			next_key.key.unicode_char += 0x40;
+	}
+	*key_data = next_key;
+	key_available = false;
+	efi_con_in.wait_for_key->is_signaled = false;
+
+out:
+	return EFI_EXIT(ret);
+}
+
+/**
+ * efi_cin_set_state() - set toggle key state
+ *
+ * @this:		instance of the EFI_SIMPLE_TEXT_INPUT_PROTOCOL
+ * @key_toggle_state:	pointer to key toggle state
+ * Return:		status code
+ *
+ * This function implements the SetState service of the
+ * EFI_SIMPLE_TEXT_INPUT_EX_PROTOCOL.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification for
+ * details.
+ */
+static efi_status_t EFIAPI efi_cin_set_state(
+		struct efi_simple_text_input_ex_protocol *this,
+		u8 *key_toggle_state)
+{
+	EFI_ENTRY("%p, %p", this, key_toggle_state);
+	/*
+	 * barebox supports multiple console input sources like serial and
+	 * net console for which a key toggle state cannot be set at all.
+	 *
+	 * According to the UEFI specification it is allowable to not implement
+	 * this service.
+	 */
+	return EFI_EXIT(EFI_UNSUPPORTED);
+}
+
+/**
+ * efi_cin_register_key_notify() - register key notification function
+ *
+ * @this:			instance of the EFI_SIMPLE_TEXT_INPUT_PROTOCOL
+ * @key_data:			key to be notified
+ * @key_notify_function:	function to be called if the key is pressed
+ * @notify_handle:		handle for unregistering the notification
+ * Return:			status code
+ *
+ * This function implements the SetState service of the
+ * EFI_SIMPLE_TEXT_INPUT_EX_PROTOCOL.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification for
+ * details.
+ */
+static efi_status_t EFIAPI efi_cin_register_key_notify(
+		struct efi_simple_text_input_ex_protocol *this,
+		struct efi_key_data *key_data,
+		efi_status_t (EFIAPI *key_notify_function)(
+			struct efi_key_data *key_data),
+		void **notify_handle)
+{
+	efi_status_t ret = EFI_SUCCESS;
+	struct efi_cin_notify_function *notify_function;
+
+	EFI_ENTRY("%p, %p, %p, %p",
+		  this, key_data, key_notify_function, notify_handle);
+
+	/* Check parameters */
+	if (!this || !key_data || !key_notify_function || !notify_handle) {
+		ret = EFI_INVALID_PARAMETER;
+		goto out;
+	}
+
+	EFI_PRINT("u+%04x, sc %04x, sh %08x, tg %02x\n",
+		  key_data->key.unicode_char,
+	       key_data->key.scan_code,
+	       key_data->state.shift_state,
+	       key_data->state.toggle_state);
+
+	notify_function = calloc(1, sizeof(struct efi_cin_notify_function));
+	if (!notify_function) {
+		ret = EFI_OUT_OF_RESOURCES;
+		goto out;
+	}
+	notify_function->key = *key_data;
+	notify_function->function = key_notify_function;
+	list_add_tail(&notify_function->link, &cin_notify_functions);
+	*notify_handle = notify_function;
+out:
+	return EFI_EXIT(ret);
+}
+
+/**
+ * efi_cin_unregister_key_notify() - unregister key notification function
+ *
+ * @this:			instance of the EFI_SIMPLE_TEXT_INPUT_PROTOCOL
+ * @notification_handle:	handle received when registering
+ * Return:			status code
+ *
+ * This function implements the SetState service of the
+ * EFI_SIMPLE_TEXT_INPUT_EX_PROTOCOL.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification for
+ * details.
+ */
+static efi_status_t EFIAPI efi_cin_unregister_key_notify(
+		struct efi_simple_text_input_ex_protocol *this,
+		void *notification_handle)
+{
+	efi_status_t ret = EFI_INVALID_PARAMETER;
+	struct efi_cin_notify_function *item, *notify_function =
+			notification_handle;
+
+	EFI_ENTRY("%p, %p", this, notification_handle);
+
+	/* Check parameters */
+	if (!this || !notification_handle)
+		goto out;
+
+	list_for_each_entry(item, &cin_notify_functions, link) {
+		if (item == notify_function) {
+			ret = EFI_SUCCESS;
+			break;
+		}
+	}
+	if (ret != EFI_SUCCESS)
+		goto out;
+
+	/* Remove the notify function */
+	list_del(&notify_function->link);
+	free(notify_function);
+out:
+	return EFI_EXIT(ret);
+}
+
+/**
+ * efi_cin_reset() - drain the input buffer
+ *
+ * @this:			instance of the EFI_SIMPLE_TEXT_INPUT_PROTOCOL
+ * @extended_verification:	allow for exhaustive verification
+ * Return:			status code
+ *
+ * This function implements the Reset service of the
+ * EFI_SIMPLE_TEXT_INPUT_PROTOCOL.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification for
+ * details.
+ */
+static efi_status_t EFIAPI efi_cin_reset
+			(struct efi_simple_text_input_protocol *this,
+			 bool extended_verification)
+{
+	efi_status_t ret = EFI_SUCCESS;
+
+	EFI_ENTRY("%p, %d", this, extended_verification);
+
+	/* Check parameters */
+	if (!this) {
+		ret = EFI_INVALID_PARAMETER;
+		goto out;
+	}
+
+	efi_cin_empty_buffer();
+out:
+	return EFI_EXIT(ret);
+}
+
+/**
+ * efi_cin_read_key_stroke() - read key stroke
+ *
+ * @this:	instance of the EFI_SIMPLE_TEXT_INPUT_PROTOCOL
+ * @key:	key read from console
+ * Return:	status code
+ *
+ * This function implements the ReadKeyStroke service of the
+ * EFI_SIMPLE_TEXT_INPUT_PROTOCOL.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification for
+ * details.
+ */
+static efi_status_t EFIAPI efi_cin_read_key_stroke
+			(struct efi_simple_text_input_protocol *this,
+			 struct efi_input_key *key)
+{
+	efi_status_t ret = EFI_SUCCESS;
+
+	EFI_ENTRY("%p, %p", this, key);
+
+	/* Check parameters */
+	if (!this || !key) {
+		ret = EFI_INVALID_PARAMETER;
+		goto out;
+	}
+
+	/* We don't do interrupts, so check for timers cooperatively */
+	efi_timer_check();
+
+	/* Enable console input after ExitBootServices */
+	efi_cin_check();
+
+	if (!key_available) {
+		ret = EFI_NOT_READY;
+		goto out;
+	}
+	*key = next_key.key;
+	key_available = false;
+	efi_con_in.wait_for_key->is_signaled = false;
+out:
+	return EFI_EXIT(ret);
+}
+
+static struct efi_simple_text_input_ex_protocol efi_con_in_ex = {
+	.reset = efi_cin_reset_ex,
+	.read_key_stroke_ex = efi_cin_read_key_stroke_ex,
+	.wait_for_key_ex = NULL,
+	.set_state = efi_cin_set_state,
+	.register_key_notify = efi_cin_register_key_notify,
+	.unregister_key_notify = efi_cin_unregister_key_notify,
+};
+
+struct efi_simple_text_input_protocol efi_con_in = {
+	.reset = efi_cin_reset,
+	.read_key_stroke = efi_cin_read_key_stroke,
+	.wait_for_key = NULL,
+};
+
+static struct efi_event *console_timer_event;
+
+/*
+ * efi_console_timer_notify() - notify the console timer event
+ *
+ * @event:	console timer event
+ * @context:	not used
+ */
+static void EFIAPI efi_console_timer_notify(struct efi_event *event,
+					    void *context)
+{
+	EFI_ENTRY("%p, %p", event, context);
+	efi_cin_check();
+	EFI_EXIT(EFI_SUCCESS);
+}
+
+/**
+ * efi_key_notify() - notify the wait for key event
+ *
+ * @event:	wait for key event
+ * @context:	not used
+ */
+static void EFIAPI efi_key_notify(struct efi_event *event, void *context)
+{
+	EFI_ENTRY("%p, %p", event, context);
+	efi_cin_check();
+	EFI_EXIT(EFI_SUCCESS);
+}
+
+/**
+ * efi_console_register() - install the console protocols
+ *
+ * This function is called when initializing EFI
+ *
+ * Return:	status code
+ */
+static efi_status_t efi_console_register(void *data)
+{
+	struct console_device *console;
+	efi_status_t r;
+	struct efi_device_path *dp;
+
+	/* Install protocols on root node */
+	r = efi_install_multiple_protocol_interfaces(&efi_root,
+						     &efi_text_output_protocol_guid,
+						     &efi_con_out,
+						     &efi_text_input_protocol_guid,
+						     &efi_con_in,
+						     &efi_text_input_ex_guid,
+						     &efi_con_in_ex,
+						     NULL);
+
+	console = console_get_first_interactive();
+	if (console) {
+		/* Create console node and install device path protocols */
+		dp = efi_dp_from_cdev(&console->devfs, true);
+		if (!dp)
+			goto out_of_memory;
+
+		/* Hook UART up to the device list */
+		efi_add_handle(&uart_obj);
+
+		/* Install device path */
+		r = efi_add_protocol(&uart_obj, &efi_device_path_protocol_guid, dp);
+		if (r != EFI_SUCCESS)
+			goto out_of_memory;
+	}
+
+	/* Create console events */
+	r = efi_create_event(EFI_EVT_NOTIFY_WAIT, EFI_TPL_CALLBACK, efi_key_notify,
+			     NULL, NULL, &efi_con_in.wait_for_key);
+	if (r != EFI_SUCCESS) {
+		pr_err("Failed to register WaitForKey event\n");
+		return r;
+	}
+	efi_con_in_ex.wait_for_key_ex = efi_con_in.wait_for_key;
+	r = efi_create_event(EFI_EVT_TIMER | EFI_EVT_NOTIFY_SIGNAL, EFI_TPL_CALLBACK,
+			     efi_console_timer_notify, NULL, NULL,
+			     &console_timer_event);
+	if (r != EFI_SUCCESS) {
+		pr_err("Failed to register console event\n");
+		return r;
+	}
+	/* 5000 ns cycle is sufficient for 2 MBaud */
+	r = efi_set_timer(console_timer_event, EFI_TIMER_PERIODIC, 50);
+	if (r != EFI_SUCCESS)
+		pr_err("Failed to set console timer\n");
+
+	efi_setup_console_size();
+
+	return r;
+out_of_memory:
+	pr_err("Out of memory\n");
+	return r;
+}
+
+static int efi_console_init(void)
+{
+	efi_register_deferred_init(efi_console_register, NULL);
+	return 0;
+}
+console_initcall(efi_console_init);
diff --git a/include/efi/loader.h b/include/efi/loader.h
index 74d177568353..4dcd15854560 100644
--- a/include/efi/loader.h
+++ b/include/efi/loader.h
@@ -22,6 +22,9 @@ extern efi_uintn_t efi_memory_map_key;
 extern struct efi_runtime_services efi_runtime_services;
 extern struct efi_system_table systab;
 
+extern struct efi_simple_text_output_protocol efi_con_out;
+extern struct efi_simple_text_input_protocol efi_con_in;
+
 /* Called by bootefi to initialize runtime */
 efi_status_t efi_alloc_system_table(void);
 efi_status_t efi_initialize_system_table(void);
diff --git a/include/efi/protocol/text.h b/include/efi/protocol/text.h
index 7a1fe8e4875a..5e6e56b1c8db 100644
--- a/include/efi/protocol/text.h
+++ b/include/efi/protocol/text.h
@@ -101,11 +101,18 @@ struct efi_simple_text_input_protocol {
 	struct efi_event *wait_for_key;
 };
 
-#define EFI_SHIFT_STATE_VALID           0x80000000
-#define EFI_RIGHT_CONTROL_PRESSED       0x00000004
-#define EFI_LEFT_CONTROL_PRESSED        0x00000008
-#define EFI_RIGHT_ALT_PRESSED           0x00000010
-#define EFI_LEFT_ALT_PRESSED            0x00000020
+#define EFI_SHIFT_STATE_INVALID		0x00000000
+#define EFI_RIGHT_SHIFT_PRESSED		0x00000001
+#define EFI_LEFT_SHIFT_PRESSED		0x00000002
+#define EFI_RIGHT_CONTROL_PRESSED	0x00000004
+#define EFI_LEFT_CONTROL_PRESSED	0x00000008
+#define EFI_RIGHT_ALT_PRESSED		0x00000010
+#define EFI_LEFT_ALT_PRESSED		0x00000020
+#define EFI_RIGHT_LOGO_PRESSED		0x00000040
+#define EFI_LEFT_LOGO_PRESSED		0x00000080
+#define EFI_MENU_KEY_PRESSED		0x00000100
+#define EFI_SYS_REQ_PRESSED		0x00000200
+#define EFI_SHIFT_STATE_VALID		0x80000000
 
 #define EFI_CONTROL_PRESSED             (EFI_RIGHT_CONTROL_PRESSED | EFI_LEFT_CONTROL_PRESSED)
 #define EFI_ALT_PRESSED                 (EFI_RIGHT_ALT_PRESSED | EFI_LEFT_ALT_PRESSED)
@@ -113,6 +120,13 @@ struct efi_simple_text_input_protocol {
 #define KEYCHAR(k) ((k) & 0xffff)
 #define CHAR_CTRL(c) ((c) - 'a' + 1)
 
+#define EFI_TOGGLE_STATE_INVALID	0x00
+#define EFI_SCROLL_LOCK_ACTIVE		0x01
+#define EFI_NUM_LOCK_ACTIVE		0x02
+#define EFI_CAPS_LOCK_ACTIVE		0x04
+#define EFI_KEY_STATE_EXPOSED		0x40
+#define EFI_TOGGLE_STATE_VALID		0x80
+
 #define EFI_BLACK   0x00
 #define EFI_BLUE    0x01
 #define EFI_GREEN   0x02
@@ -131,7 +145,13 @@ struct efi_simple_text_input_protocol {
 #define EFI_YELLOW          (EFI_BROWN | EFI_BRIGHT)
 #define EFI_WHITE           (EFI_BLUE | EFI_GREEN | EFI_RED | EFI_BRIGHT)
 
-#define EFI_TEXT_ATTR(f,b)  ((f) | ((b) << 4))
+#define EFI_TEXT_ATTR(f,b)	((f) | ((b) << 4))
+/* extract foreground color from EFI attribute */
+#define EFI_ATTR_FG(attr)	((attr) & 0x07)
+/* treat high bit of FG as bright/bold (similar to edk2) */
+#define EFI_ATTR_BOLD(attr)	(((attr) >> 3) & 0x01)
+/* extract background color from EFI attribute */
+#define EFI_ATTR_BG(attr)	(((attr) >> 4) & 0x7)
 
 #define EFI_BACKGROUND_BLACK        0x00
 #define EFI_BACKGROUND_BLUE         0x10
-- 
2.47.3




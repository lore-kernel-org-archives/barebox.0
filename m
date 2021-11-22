Delivery-date: Mon, 22 Nov 2021 09:54:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp55S-0003ek-Fo
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:54:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp55Q-0001xV-Un
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:54:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=npQDhUYdGziI1FcNM1SId0K9wqRNvoGhELp6NKcA648=; b=L1eRpnPrqV24Xy
	BsSnKPAbxtChTlTqxf0GDJkgNzmUFQSnHuJkUjsEzatAg1IDF21NSinIbqzV6HFA/GBP3HMBeVzVU
	M5PvodVx+ZPOap4myjuFSZWe5FqZVRyAG0iM2zMp9/Y3mawlCriXEqhjYnmlGCXRbzBXfhT6JalUE
	Ivz/5LNhB95Ml3op0iovggfHNwQTAcPwAfLQi4vjV57OCDHRpxa3UDjUdYea7fOJuDIcZnoNP7S9Y
	G3ZALsqZXGtKalF02G0t8Ub12/6JNjtvLWRa6VAsazBeCeMtQ1o2UztTLdwFzO/QxK9A+sH4usSts
	P2KN6gdiDkybCvC5PJog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp540-00FNzp-Cj; Mon, 22 Nov 2021 08:52:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zK-00FL5J-Jd
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:51 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zB-0007wK-4C; Mon, 22 Nov 2021 09:47:37 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4z9-00Atet-EE; Mon, 22 Nov 2021 09:47:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Nov 2021 09:47:11 +0100
Message-Id: <20211122084732.2597109-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004746_981176_68650B86 
X-CRM114-Status: GOOD (  14.74  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 09/30] serial: efi-stdio: move efi-stdio.h header to central
 location
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

EFI loader will provide simple text input/output protocols, so it makes
sense to reuse the same definitions for both loader and payload.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/serial/efi-stdio.c |  43 +---------------
 drivers/serial/efi-stdio.h |  59 ----------------------
 include/efi/efi-stdio.h    | 100 +++++++++++++++++++++++++++++++++++++
 3 files changed, 101 insertions(+), 101 deletions(-)
 delete mode 100644 drivers/serial/efi-stdio.h
 create mode 100644 include/efi/efi-stdio.h

diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
index 7b943aaa3b7e..d5049dfdadf3 100644
--- a/drivers/serial/efi-stdio.c
+++ b/drivers/serial/efi-stdio.c
@@ -15,48 +15,7 @@
 #include <linux/ctype.h>
 #include <efi/efi.h>
 #include <efi/efi-device.h>
-#include "efi-stdio.h"
-
-#define EFI_SHIFT_STATE_VALID           0x80000000
-#define EFI_RIGHT_CONTROL_PRESSED       0x00000004
-#define EFI_LEFT_CONTROL_PRESSED        0x00000008
-#define EFI_RIGHT_ALT_PRESSED           0x00000010
-#define EFI_LEFT_ALT_PRESSED            0x00000020
-
-#define EFI_CONTROL_PRESSED             (EFI_RIGHT_CONTROL_PRESSED | EFI_LEFT_CONTROL_PRESSED)
-#define EFI_ALT_PRESSED                 (EFI_RIGHT_ALT_PRESSED | EFI_LEFT_ALT_PRESSED)
-#define KEYPRESS(keys, scan, uni) ((((uint64_t)keys) << 32) | ((scan) << 16) | (uni))
-#define KEYCHAR(k) ((k) & 0xffff)
-#define CHAR_CTRL(c) ((c) - 'a' + 1)
-
-#define EFI_BLACK   0x00
-#define EFI_BLUE    0x01
-#define EFI_GREEN   0x02
-#define EFI_CYAN            (EFI_BLUE | EFI_GREEN)
-#define EFI_RED     0x04
-#define EFI_MAGENTA         (EFI_BLUE | EFI_RED)
-#define EFI_BROWN           (EFI_GREEN | EFI_RED)
-#define EFI_LIGHTGRAY       (EFI_BLUE | EFI_GREEN | EFI_RED)
-#define EFI_BRIGHT  0x08
-#define EFI_DARKGRAY        (EFI_BRIGHT)
-#define EFI_LIGHTBLUE       (EFI_BLUE | EFI_BRIGHT)
-#define EFI_LIGHTGREEN      (EFI_GREEN | EFI_BRIGHT)
-#define EFI_LIGHTCYAN       (EFI_CYAN | EFI_BRIGHT)
-#define EFI_LIGHTRED        (EFI_RED | EFI_BRIGHT)
-#define EFI_LIGHTMAGENTA    (EFI_MAGENTA | EFI_BRIGHT)
-#define EFI_YELLOW          (EFI_BROWN | EFI_BRIGHT)
-#define EFI_WHITE           (EFI_BLUE | EFI_GREEN | EFI_RED | EFI_BRIGHT)
-
-#define EFI_TEXT_ATTR(f,b)  ((f) | ((b) << 4))
-
-#define EFI_BACKGROUND_BLACK        0x00
-#define EFI_BACKGROUND_BLUE         0x10
-#define EFI_BACKGROUND_GREEN        0x20
-#define EFI_BACKGROUND_CYAN         (EFI_BACKGROUND_BLUE | EFI_BACKGROUND_GREEN)
-#define EFI_BACKGROUND_RED          0x40
-#define EFI_BACKGROUND_MAGENTA      (EFI_BACKGROUND_BLUE | EFI_BACKGROUND_RED)
-#define EFI_BACKGROUND_BROWN        (EFI_BACKGROUND_GREEN | EFI_BACKGROUND_RED)
-#define EFI_BACKGROUND_LIGHTGRAY    (EFI_BACKGROUND_BLUE | EFI_BACKGROUND_GREEN | EFI_BACKGROUND_RED)
+#include <efi/efi-stdio.h>
 
 struct efi_console_priv {
 	struct efi_simple_text_output_protocol *out;
diff --git a/drivers/serial/efi-stdio.h b/drivers/serial/efi-stdio.h
deleted file mode 100644
index e2edd8b32ec1..000000000000
--- a/drivers/serial/efi-stdio.h
+++ /dev/null
@@ -1,59 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#ifndef EFI_STDIO_H_
-#define EFI_STDIO_H_
-
-#include <efi.h>
-
-struct efi_simple_text_input_ex_protocol;
-
-typedef efi_status_t (EFIAPI *efi_input_reset_ex)(
-	struct efi_simple_text_input_ex_protocol *this,
-	efi_bool_t extended_verification
-);
-
-struct efi_key_state {
-	u32 shift_state;
-	u8 toggle_state;
-};
-
-struct efi_key_data {
-	struct efi_input_key key;
-	struct efi_key_state state;
-};
-
-typedef efi_status_t (EFIAPI *efi_input_read_key_ex)(
-	struct efi_simple_text_input_ex_protocol *this,
-	struct efi_key_data *keydata
-);
-
-typedef efi_status_t (EFIAPI *efi_set_state)(
-	struct efi_simple_text_input_ex_protocol *this,
-	u8 *key_toggle_state
-);
-
-typedef efi_status_t (EFIAPI *efi_key_notify_function)(
-	struct efi_key_data *keydata
-);
-
-typedef efi_status_t (EFIAPI *efi_register_keystroke_notify)(
-	struct efi_simple_text_input_ex_protocol *this,
-	struct efi_key_data keydata,
-	efi_key_notify_function key_notification_function,
-	void **notify_handle
-);
-
-typedef efi_status_t (EFIAPI *efi_unregister_keystroke_notify)(
-	struct efi_simple_text_input_ex_protocol *this,
-	void *notification_handle
-);
-
-struct efi_simple_text_input_ex_protocol {
-	efi_input_reset_ex reset;
-	efi_input_read_key_ex read_key_stroke_ex;
-	void *wait_for_key_ex;
-	efi_set_state set_state;
-	efi_register_keystroke_notify register_key_notify;
-	efi_unregister_keystroke_notify unregister_key_notify;
-};
-
-#endif
diff --git a/include/efi/efi-stdio.h b/include/efi/efi-stdio.h
new file mode 100644
index 000000000000..4086604e432d
--- /dev/null
+++ b/include/efi/efi-stdio.h
@@ -0,0 +1,100 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef EFI_STDIO_H_
+#define EFI_STDIO_H_
+
+#include <efi.h>
+
+struct efi_simple_text_input_ex_protocol;
+
+typedef efi_status_t (EFIAPI *efi_input_reset_ex)(
+	struct efi_simple_text_input_ex_protocol *this,
+	efi_bool_t extended_verification
+);
+
+struct efi_key_state {
+	u32 shift_state;
+	u8 toggle_state;
+};
+
+struct efi_key_data {
+	struct efi_input_key key;
+	struct efi_key_state state;
+};
+
+typedef efi_status_t (EFIAPI *efi_input_read_key_ex)(
+	struct efi_simple_text_input_ex_protocol *this,
+	struct efi_key_data *keydata
+);
+
+typedef efi_status_t (EFIAPI *efi_set_state)(
+	struct efi_simple_text_input_ex_protocol *this,
+	u8 *key_toggle_state
+);
+
+typedef efi_status_t (EFIAPI *efi_key_notify_function)(
+	struct efi_key_data *keydata
+);
+
+typedef efi_status_t (EFIAPI *efi_register_keystroke_notify)(
+	struct efi_simple_text_input_ex_protocol *this,
+	struct efi_key_data keydata,
+	efi_key_notify_function key_notification_function,
+	void **notify_handle
+);
+
+typedef efi_status_t (EFIAPI *efi_unregister_keystroke_notify)(
+	struct efi_simple_text_input_ex_protocol *this,
+	void *notification_handle
+);
+
+struct efi_simple_text_input_ex_protocol {
+	efi_input_reset_ex reset;
+	efi_input_read_key_ex read_key_stroke_ex;
+	void *wait_for_key_ex;
+	efi_set_state set_state;
+	efi_register_keystroke_notify register_key_notify;
+	efi_unregister_keystroke_notify unregister_key_notify;
+};
+
+#define EFI_SHIFT_STATE_VALID           0x80000000
+#define EFI_RIGHT_CONTROL_PRESSED       0x00000004
+#define EFI_LEFT_CONTROL_PRESSED        0x00000008
+#define EFI_RIGHT_ALT_PRESSED           0x00000010
+#define EFI_LEFT_ALT_PRESSED            0x00000020
+
+#define EFI_CONTROL_PRESSED             (EFI_RIGHT_CONTROL_PRESSED | EFI_LEFT_CONTROL_PRESSED)
+#define EFI_ALT_PRESSED                 (EFI_RIGHT_ALT_PRESSED | EFI_LEFT_ALT_PRESSED)
+#define KEYPRESS(keys, scan, uni) ((((uint64_t)keys) << 32) | ((scan) << 16) | (uni))
+#define KEYCHAR(k) ((k) & 0xffff)
+#define CHAR_CTRL(c) ((c) - 'a' + 1)
+
+#define EFI_BLACK   0x00
+#define EFI_BLUE    0x01
+#define EFI_GREEN   0x02
+#define EFI_CYAN            (EFI_BLUE | EFI_GREEN)
+#define EFI_RED     0x04
+#define EFI_MAGENTA         (EFI_BLUE | EFI_RED)
+#define EFI_BROWN           (EFI_GREEN | EFI_RED)
+#define EFI_LIGHTGRAY       (EFI_BLUE | EFI_GREEN | EFI_RED)
+#define EFI_BRIGHT  0x08
+#define EFI_DARKGRAY        (EFI_BRIGHT)
+#define EFI_LIGHTBLUE       (EFI_BLUE | EFI_BRIGHT)
+#define EFI_LIGHTGREEN      (EFI_GREEN | EFI_BRIGHT)
+#define EFI_LIGHTCYAN       (EFI_CYAN | EFI_BRIGHT)
+#define EFI_LIGHTRED        (EFI_RED | EFI_BRIGHT)
+#define EFI_LIGHTMAGENTA    (EFI_MAGENTA | EFI_BRIGHT)
+#define EFI_YELLOW          (EFI_BROWN | EFI_BRIGHT)
+#define EFI_WHITE           (EFI_BLUE | EFI_GREEN | EFI_RED | EFI_BRIGHT)
+
+#define EFI_TEXT_ATTR(f,b)  ((f) | ((b) << 4))
+
+#define EFI_BACKGROUND_BLACK        0x00
+#define EFI_BACKGROUND_BLUE         0x10
+#define EFI_BACKGROUND_GREEN        0x20
+#define EFI_BACKGROUND_CYAN         (EFI_BACKGROUND_BLUE | EFI_BACKGROUND_GREEN)
+#define EFI_BACKGROUND_RED          0x40
+#define EFI_BACKGROUND_MAGENTA      (EFI_BACKGROUND_BLUE | EFI_BACKGROUND_RED)
+#define EFI_BACKGROUND_BROWN        (EFI_BACKGROUND_GREEN | EFI_BACKGROUND_RED)
+#define EFI_BACKGROUND_LIGHTGRAY    (EFI_BACKGROUND_BLUE | EFI_BACKGROUND_GREEN | EFI_BACKGROUND_RED)
+
+#endif
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


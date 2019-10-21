Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMTuk-0000WK-J1
 for barebox@lists.infradead.org; Mon, 21 Oct 2019 09:23:48 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 21 Oct 2019 11:23:41 +0200
Message-Id: <20191021092341.27633-2-a.fatoum@pengutronix.de>
In-Reply-To: <20191021092341.27633-1-a.fatoum@pengutronix.de>
References: <20191021092341.27633-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] serial: efi-stdio: Add simple_text_input_ex_protocol
 backend
To: barebox@lists.infradead.org
Cc: Michael Olbrich <mol@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>

EFI implementations differ in how simple_text_input_protocol treats
ctrl+alpha combinations. OVMF (used with QEMU) returns a Unicode control
character, the UEFI on the Dell Latitude 7490 on the other hand ignores
the ctrl completely and returns just the letter rendering utilities
like barebox edit unusable.

To fix this, the simple_text_input_ex_protocol can be leveraged as it
additionally provides the state of modifier keys. Extend efi-stdio to use
it where possible.

Cc: Michael Olbrich <mol@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/serial/efi-stdio.c | 75 +++++++++++++++++++++++++++++++++-----
 drivers/serial/efi-stdio.h | 58 +++++++++++++++++++++++++++++
 2 files changed, 123 insertions(+), 10 deletions(-)
 create mode 100644 drivers/serial/efi-stdio.h

diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
index a8cc967b32a2..9e825181e6f9 100644
--- a/drivers/serial/efi-stdio.c
+++ b/drivers/serial/efi-stdio.c
@@ -26,6 +26,8 @@
 #include <readkey.h>
 #include <linux/ctype.h>
 #include <efi/efi.h>
+#include <efi/efi-device.h>
+#include "efi-stdio.h"
 
 #define EFI_SHIFT_STATE_VALID           0x80000000
 #define EFI_RIGHT_CONTROL_PRESSED       0x00000004
@@ -71,6 +73,7 @@
 struct efi_console_priv {
 	struct efi_simple_text_output_protocol *out;
 	struct efi_simple_input_interface *in;
+	struct efi_simple_text_input_ex_protocol *inex;
 	struct console_device cdev;
 	int lastkey;
 	u16 efi_console_buffer[CONFIG_CBSIZE];
@@ -105,29 +108,65 @@ static struct efi_ctrlkey ctrlkeys[] = {
 	{ 0x17, 27 /* escape key */ },
 };
 
+static int xlate_keypress(struct efi_input_key *k)
+{
+	int i;
+
+	/* 32 bit modifier keys + 16 bit scan code + 16 bit unicode */
+	for (i = 0; i < ARRAY_SIZE(ctrlkeys); i++) {
+		if (ctrlkeys[i].scan_code == k->scan_code)
+			return ctrlkeys[i].bb_key;
+
+	}
+
+	return k->unicode_char & 0xff;
+}
+
 static int efi_read_key(struct efi_console_priv *priv, bool wait)
 {
 	unsigned long index;
 	efi_status_t efiret;
-	struct efi_input_key k;
-	int i;
+	struct efi_key_data kd;
 
 	/* wait until key is pressed */
 	if (wait)
 		BS->wait_for_event(1, priv->in->wait_for_key, &index);
 
-        efiret = priv->in->read_key_stroke(priv->in, &k);
-        if (EFI_ERROR(efiret))
-		return -efi_errno(efiret);
+	if (priv->inex) {
+		efiret = priv->inex->read_key_stroke_ex(priv->inex, &kd);
 
-	/* 32 bit modifier keys + 16 bit scan code + 16 bit unicode */
-	for (i = 0; i < ARRAY_SIZE(ctrlkeys); i++) {
-		if (ctrlkeys[i].scan_code == k.scan_code)
-			return ctrlkeys[i].bb_key;
+		if (efiret == EFI_NOT_READY)
+			return -EAGAIN;
+
+		if (!EFI_ERROR(efiret)) {
+			if ((kd.state.shift_state & EFI_SHIFT_STATE_VALID) &&
+			    (kd.state.shift_state & EFI_CONTROL_PRESSED)) {
+				int ch = tolower(kd.key.unicode_char & 0xff);
+
+				if (isalpha(ch))
+					return CHAR_CTRL(ch);
+				if (ch == '\0') /* ctrl is pressed on its own */
+					return -EAGAIN;
+			}
 
+			if (kd.key.unicode_char || kd.key.scan_code)
+				return xlate_keypress(&kd.key);
+
+			/* Some broken firmwares offer simple_text_input_ex_protocol,
+			 * but never handle any key. Treat those as if
+			 * read_key_stroke_ex failed and fall through
+			 * to the basic simple_text_input_protocol.
+			 */
+			dev_dbg(priv->cdev.dev, "Falling back to simple_text_input_protocol\n");
+		}
 	}
 
-	return k.unicode_char & 0xff;
+	efiret = priv->in->read_key_stroke(priv->in, &kd.key);
+
+	if (EFI_ERROR(efiret))
+		return -efi_errno(efiret);
+
+	return xlate_keypress(&kd.key);
 }
 
 static void efi_console_putc(struct console_device *cdev, char c)
@@ -332,8 +371,12 @@ static void efi_set_mode(struct efi_console_priv *priv)
 
 static int efi_console_probe(struct device_d *dev)
 {
+	efi_guid_t inex_guid = EFI_SIMPLE_TEXT_INPUT_EX_PROTOCOL_GUID;
+	struct efi_simple_text_input_ex_protocol *inex;
 	struct console_device *cdev;
 	struct efi_console_priv *priv;
+	efi_status_t efiret;
+
 	int i;
 
 	priv = xzalloc(sizeof(*priv));
@@ -341,6 +384,18 @@ static int efi_console_probe(struct device_d *dev)
 	priv->out = efi_sys_table->con_out;
 	priv->in = efi_sys_table->con_in;
 
+	efiret = BS->open_protocol((void *)efi_sys_table->con_in_handle,
+			     &inex_guid,
+			     (void **)&inex,
+			     efi_parent_image,
+			     0,
+			     EFI_OPEN_PROTOCOL_GET_PROTOCOL);
+
+	if (!EFI_ERROR(efiret)) {
+		priv->inex = inex;
+		dev_dbg(dev, "Using simple_text_input_ex_protocol\n");
+	}
+
 	priv->current_color = EFI_WHITE;
 
 	efi_set_mode(priv);
diff --git a/drivers/serial/efi-stdio.h b/drivers/serial/efi-stdio.h
new file mode 100644
index 000000000000..1fa417c706c1
--- /dev/null
+++ b/drivers/serial/efi-stdio.h
@@ -0,0 +1,58 @@
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
+#endif
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

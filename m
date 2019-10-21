Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMTuq-0000ZY-PJ
 for barebox@lists.infradead.org; Mon, 21 Oct 2019 09:23:54 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 21 Oct 2019 11:23:40 +0200
Message-Id: <20191021092341.27633-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/2] serial: efi-stdio: replace globals with handles in priv
 struct
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Despite assigning efi_sys_table->{con_in,con_out} to priv->{in,out},
some functions still use the global efi_sys_table->{con_in,con_out}.
Let's restrict globals access to the probe function and have the priv
struct completely describe input and output used in the callbacks.
No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/serial/efi-stdio.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
index 2ca89fa4f861..a8cc967b32a2 100644
--- a/drivers/serial/efi-stdio.c
+++ b/drivers/serial/efi-stdio.c
@@ -116,7 +116,7 @@ static int efi_read_key(struct efi_console_priv *priv, bool wait)
 	if (wait)
 		BS->wait_for_event(1, priv->in->wait_for_key, &index);
 
-        efiret = priv->in->read_key_stroke(efi_sys_table->con_in, &k);
+        efiret = priv->in->read_key_stroke(priv->in, &k);
         if (EFI_ERROR(efiret))
 		return -efi_errno(efiret);
 
@@ -133,7 +133,8 @@ static int efi_read_key(struct efi_console_priv *priv, bool wait)
 static void efi_console_putc(struct console_device *cdev, char c)
 {
 	uint16_t str[2] = {};
-	struct efi_simple_text_output_protocol *con_out = efi_sys_table->con_out;
+	struct efi_console_priv *priv = to_efi(cdev);
+	struct efi_simple_text_output_protocol *con_out = priv->out;
 
 	str[0] = c;
 
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

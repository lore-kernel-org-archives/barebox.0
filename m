Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cVi1K-0002js-UF
 for barebox@lists.infradead.org; Mon, 23 Jan 2017 17:03:10 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Subject: [PATCH 2/5] serial: efi: improve input handling
Date: Mon, 23 Jan 2017 18:02:15 +0100
Message-Id: <20170123170218.25139-3-m.olbrich@pengutronix.de>
In-Reply-To: <20170123170218.25139-1-m.olbrich@pengutronix.de>
References: <20170123170218.25139-1-m.olbrich@pengutronix.de>
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
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

0x08 is the scan-code for 'backspace' not 'delete'.
0x17 indicates the start of an escape sequence, such as "[3~" for
'delete'.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 drivers/serial/efi-stdio.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
index bf14c5e24aa5..5ab917386e60 100644
--- a/drivers/serial/efi-stdio.c
+++ b/drivers/serial/efi-stdio.c
@@ -99,9 +99,10 @@ static struct efi_ctrlkey ctrlkeys[] = {
 	{ 0x05, BB_KEY_HOME },
 	{ 0x06, BB_KEY_END },
 	{ 0x07, BB_KEY_INSERT },
-	{ 0x08, BB_KEY_DEL },
+	{ 0x08, BB_KEY_DEL7 },
 	{ 0x09, BB_KEY_PAGEUP },
 	{ 0x0a, BB_KEY_PAGEDOWN },
+	{ 0x17, 27 /* escape key */ },
 };
 
 static int efi_read_key(struct efi_console_priv *priv, bool wait)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

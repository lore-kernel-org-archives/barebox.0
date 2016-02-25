Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYskk-0003gq-2q
 for barebox@lists.infradead.org; Thu, 25 Feb 2016 10:02:35 +0000
Received: by mail-lf0-x243.google.com with SMTP id j99so1873738lfi.2
 for <barebox@lists.infradead.org>; Thu, 25 Feb 2016 02:02:13 -0800 (PST)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Thu, 25 Feb 2016 13:05:18 +0300
Message-Id: <1456394718-12182-1-git-send-email-pmamonov@gmail.com>
In-Reply-To: <1456310925-1057-1-git-send-email-pmamonov@gmail.com>
References: <1456310925-1057-1-git-send-email-pmamonov@gmail.com>
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
Subject: [PATCH v3] input: usb keyboard: fix CTRL+ combinations
To: barebox@lists.infradead.org, s.hauer@pengutronix.de
Cc: Sam Ravnborg <sam@ravnborg.org>, Peter Mamonov <pmamonov@gmail.com>, Trent Piepho <tpiepho@kymetacorp.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 drivers/input/input.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/input/input.c b/drivers/input/input.c
index ad7400f..31a9c22 100644
--- a/drivers/input/input.c
+++ b/drivers/input/input.c
@@ -18,6 +18,7 @@
 #include <linux/bitmap.h>
 #include <input/keyboard.h>
 #include <dt-bindings/input/linux-event-codes.h>
+#include <readkey.h>
 
 static LIST_HEAD(input_consumers);
 
@@ -164,7 +165,10 @@ static void input_console_notify(struct input_notifier *in,
 	if (ic->modstate[4] || ic->modstate[5])
 		modstate |= 1 << 2;
 
-	if (modstate & (1 << 0))
+	if (modstate & (1 << 1)) {
+		ascii = keycode_bb_keys[ev->code];
+		ascii = ascii >= 'a' ? CTL_CH(ascii) : 0;
+	} else if (modstate & (1 << 0))
 		ascii = keycode_bb_shift_keys[ev->code];
 	else
 		ascii = keycode_bb_keys[ev->code];
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

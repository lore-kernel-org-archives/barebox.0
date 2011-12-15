Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rb8sn-0001vG-DN
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 10:49:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Dec 2011 11:49:34 +0100
Message-Id: <1323946179-9883-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323946179-9883-1-git-send-email-s.hauer@pengutronix.de>
References: <1323946179-9883-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/7] remove unused keyboard.h file
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/keyboard.h |   22 ----------------------
 1 files changed, 0 insertions(+), 22 deletions(-)
 delete mode 100644 include/keyboard.h

diff --git a/include/keyboard.h b/include/keyboard.h
deleted file mode 100644
index 88ae12b..0000000
--- a/include/keyboard.h
+++ /dev/null
@@ -1,22 +0,0 @@
-#ifndef __KEYBOARD_H
-#define __KEYBOARD_H
-
-#ifdef CONFIG_PS2MULT
-#include <ps2mult.h>
-#endif
-
-#if !defined(kbd_request_region) || \
-    !defined(kbd_request_irq) || \
-    !defined(kbd_read_input) || \
-    !defined(kbd_read_status) || \
-    !defined(kbd_write_output) || \
-    !defined(kbd_write_command)
-#error PS/2 low level routines not defined
-#endif
-
-extern int kbd_init (void);
-extern void handle_scancode(unsigned char scancode);
-extern int kbd_init_hw(void);
-extern void pckbd_leds(unsigned char leds);
-
-#endif /* __KEYBOARD_H */
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

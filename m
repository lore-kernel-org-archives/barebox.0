Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WEKrG-0004Vp-En
 for barebox@lists.infradead.org; Fri, 14 Feb 2014 15:39:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Feb 2014 16:38:53 +0100
Message-Id: <1392392334-20254-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392392334-20254-1-git-send-email-s.hauer@pengutronix.de>
References: <1392392334-20254-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] input: Add keycode to barebox key translation table
To: barebox@lists.infradead.org

Devicetrees specify the keyboard codes for the gpio-keys
driver, so add a table to translate them into something
barebox can use.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/input/Makefile   |   1 +
 drivers/input/keymap.c   | 136 +++++++++++++++++++++++++++++++++++++++++++++++
 include/input/keyboard.h |  10 ++++
 3 files changed, 147 insertions(+)
 create mode 100644 drivers/input/keymap.c
 create mode 100644 include/input/keyboard.h

diff --git a/drivers/input/Makefile b/drivers/input/Makefile
index b9bcc82..2143336 100644
--- a/drivers/input/Makefile
+++ b/drivers/input/Makefile
@@ -2,3 +2,4 @@ obj-$(CONFIG_KEYBOARD_GPIO) += gpio_keys.o
 obj-$(CONFIG_KEYBOARD_TWL6030) += twl6030_pwrbtn.o
 obj-$(CONFIG_KEYBOARD_IMX_KEYPAD) += imx_keypad.o
 obj-$(CONFIG_KEYBOARD_QT1070) += qt1070.o
+obj-y += keymap.o
diff --git a/drivers/input/keymap.c b/drivers/input/keymap.c
new file mode 100644
index 0000000..b9fd6a2
--- /dev/null
+++ b/drivers/input/keymap.c
@@ -0,0 +1,136 @@
+#include <linux/types.h>
+#include <input/keyboard.h>
+
+#include <dt-bindings/input/input.h>
+#include <readkey.h>
+
+uint8_t keycode_bb_keys[NR_KEYS] = {
+	[KEY_RESERVED] =	0xff,
+	[KEY_ESC] =		0x1b,
+	[KEY_1] =		'1',
+	[KEY_2] =		'2',
+	[KEY_3] =		'3',
+	[KEY_4] =		'4',
+	[KEY_5] =		'5',
+	[KEY_6] =		'6',
+	[KEY_7] =		'7',
+	[KEY_8] =		'8',
+	[KEY_9] =		'9',
+	[KEY_0] =		'0',
+	[KEY_MINUS] =		'-',
+	[KEY_EQUAL] =		'=',
+	[KEY_BACKSPACE] =	0xff,
+	[KEY_TAB] =		'\t',
+	[KEY_Q] =		'q',
+	[KEY_W] =		'w',
+	[KEY_E] =		'e',
+	[KEY_R] =		'r',
+	[KEY_T] =		't',
+	[KEY_Y] =		'y',
+	[KEY_U] =		'u',
+	[KEY_I] =		'i',
+	[KEY_O] =		'o',
+	[KEY_P] =		'p',
+	[KEY_LEFTBRACE] =	'(',
+	[KEY_RIGHTBRACE] =	')',
+	[KEY_ENTER] =		'\n',
+	[KEY_LEFTCTRL] =	0xff,
+	[KEY_A] =		'a',
+	[KEY_S] =		's',
+	[KEY_D] =		'd',
+	[KEY_F] =		'f',
+	[KEY_G] =		'g',
+	[KEY_H] =		'h',
+	[KEY_J] =		'j',
+	[KEY_K] =		'k',
+	[KEY_L] =		'l',
+	[KEY_SEMICOLON] =	';',
+	[KEY_APOSTROPHE] =	0xff,
+	[KEY_GRAVE] =		'^',
+	[KEY_LEFTSHIFT] =	0xff,
+	[KEY_BACKSLASH] =	0xff,
+	[KEY_Z] =		'z',
+	[KEY_X] =		'x',
+	[KEY_C] =		'c',
+	[KEY_V] =		'v',
+	[KEY_B] =		'b',
+	[KEY_N] =		'n',
+	[KEY_M] =		'm',
+	[KEY_COMMA] =		',',
+	[KEY_DOT] =		'.',
+	[KEY_SLASH] =		'/',
+	[KEY_RIGHTSHIFT] =	0xff,
+	[KEY_KPASTERISK] =	0xff,
+	[KEY_LEFTALT] =		0xff,
+	[KEY_SPACE] =		' ',
+	[KEY_CAPSLOCK] =	0xff,
+	[KEY_F1] =		0xff,
+	[KEY_F2] =		0xff,
+	[KEY_F3] =		0xff,
+	[KEY_F4] =		0xff,
+	[KEY_F5] =		0xff,
+	[KEY_F6] =		0xff,
+	[KEY_F7] =		0xff,
+	[KEY_F8] =		0xff,
+	[KEY_F9] =		0xff,
+	[KEY_F10] =		0xff,
+	[KEY_NUMLOCK] =		0xff,
+	[KEY_SCROLLLOCK] =	0xff,
+	[KEY_KP7] =		0xff,
+	[KEY_KP8] =		0xff,
+	[KEY_KP9] =		0xff,
+	[KEY_KPMINUS] =		0xff,
+	[KEY_KP4] =		0xff,
+	[KEY_KP5] =		0xff,
+	[KEY_KP6] =		0xff,
+	[KEY_KPPLUS] =		0xff,
+	[KEY_KP1] =		0xff,
+	[KEY_KP2] =		0xff,
+	[KEY_KP3] =		0xff,
+	[KEY_KP0] =		0xff,
+	[KEY_KPDOT] =		0xff,
+	[KEY_ZENKAKUHANKAKU] =	0xff,
+	[KEY_102ND] =		0xff,
+	[KEY_F11] =		0xff,
+	[KEY_F12] =		0xff,
+	[KEY_RO] =		0xff,
+	[KEY_KATAKANA] =	0xff,
+	[KEY_HIRAGANA] =	0xff,
+	[KEY_HENKAN] =		0xff,
+	[KEY_KATAKANAHIRAGANA] =0xff,
+	[KEY_MUHENKAN] =	0xff,
+	[KEY_KPJPCOMMA] =	0xff,
+	[KEY_KPENTER] =		0xff,
+	[KEY_RIGHTCTRL] =	0xff,
+	[KEY_KPSLASH] =		0xff,
+	[KEY_SYSRQ] =		0xff,
+	[KEY_RIGHTALT] =	0xff,
+	[KEY_LINEFEED] =	0xff,
+	[KEY_HOME] =		0xff,
+	[KEY_UP] =		BB_KEY_UP,
+	[KEY_PAGEUP] =		BB_KEY_PAGEUP,
+	[KEY_LEFT] =		BB_KEY_LEFT,
+	[KEY_RIGHT] =		BB_KEY_RIGHT,
+	[KEY_END] =		BB_KEY_END,
+	[KEY_DOWN] =		BB_KEY_DOWN,
+	[KEY_PAGEDOWN] =	BB_KEY_PAGEDOWN,
+	[KEY_INSERT] =		BB_KEY_INSERT,
+	[KEY_DELETE] =		BB_KEY_DEL7,
+	[KEY_MACRO] =		0xff,
+	[KEY_MUTE] =		0xff,
+	[KEY_VOLUMEDOWN] =	0xff,
+	[KEY_VOLUMEUP] =	0xff,
+	[KEY_POWER] =		0xff,
+	[KEY_KPEQUAL] =		0xff,
+	[KEY_KPPLUSMINUS] =	0xff,
+	[KEY_PAUSE] =		0xff,
+	[KEY_SCALE] =		0xff,
+	[KEY_KPCOMMA] =		0xff,
+	[KEY_HANGEUL] =		0xff,
+	[KEY_HANGUEL] =		KEY_HANGEUL,
+	[KEY_HANJA] =		0xff,
+	[KEY_YEN] =		0xff,
+	[KEY_LEFTMETA] =	0xff,
+	[KEY_RIGHTMETA] =	0xff,
+	[KEY_COMPOSE] =		0xff,
+};
diff --git a/include/input/keyboard.h b/include/input/keyboard.h
new file mode 100644
index 0000000..dd04690
--- /dev/null
+++ b/include/input/keyboard.h
@@ -0,0 +1,10 @@
+#ifndef __INPUT_KEYBOARD_H
+#define __INPUT_KEYBOARD_H
+
+#include <linux/types.h>
+
+#define NR_KEYS	256
+
+extern uint8_t keycode_bb_keys[NR_KEYS];
+
+#endif
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22a.google.com ([2a00:1450:4010:c07::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aX8T7-0008Eb-Rx
 for barebox@lists.infradead.org; Sat, 20 Feb 2016 14:25:14 +0000
Received: by mail-lf0-x22a.google.com with SMTP id l143so70386483lfe.2
 for <barebox@lists.infradead.org>; Sat, 20 Feb 2016 06:24:49 -0800 (PST)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Sat, 20 Feb 2016 17:27:45 +0300
Message-Id: <1455978465-28919-2-git-send-email-pmamonov@gmail.com>
In-Reply-To: <1455978465-28919-1-git-send-email-pmamonov@gmail.com>
References: <1455978465-28919-1-git-send-email-pmamonov@gmail.com>
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
Subject: [PATCH 2/2] input: usb keyboard: fix CTRL+C
To: barebox@lists.infradead.org, s.hauer@pengutronix.de
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/input/input.c    |  4 ++-
 drivers/input/keymap.c   | 82 ++++++++++++++++++++++++++++++++++++++++++++++++
 include/input/keyboard.h |  1 +
 3 files changed, 86 insertions(+), 1 deletion(-)

diff --git a/drivers/input/input.c b/drivers/input/input.c
index ad7400f..1c6891c 100644
--- a/drivers/input/input.c
+++ b/drivers/input/input.c
@@ -164,7 +164,9 @@ static void input_console_notify(struct input_notifier *in,
 	if (ic->modstate[4] || ic->modstate[5])
 		modstate |= 1 << 2;
 
-	if (modstate & (1 << 0))
+	if (modstate & (1 << 1))
+		ascii = keycode_bb_ctrl_keys[ev->code];
+	else if (modstate & (1 << 0))
 		ascii = keycode_bb_shift_keys[ev->code];
 	else
 		ascii = keycode_bb_keys[ev->code];
diff --git a/drivers/input/keymap.c b/drivers/input/keymap.c
index 79ca461..90f1818 100644
--- a/drivers/input/keymap.c
+++ b/drivers/input/keymap.c
@@ -167,3 +167,85 @@ uint8_t keycode_bb_shift_keys[NR_KEYS] = {
 	[KEY_KPEQUAL] =		'=',
 	[KEY_KPCOMMA] =		',',
 };
+
+uint8_t keycode_bb_ctrl_keys[NR_KEYS] = {
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
+	[KEY_BACKSPACE] =	8,
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
+	[KEY_LEFTBRACE] =	'[',
+	[KEY_RIGHTBRACE] =	']',
+	[KEY_ENTER] =		'\n',
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
+	[KEY_APOSTROPHE] =	'`',
+	[KEY_GRAVE] =		'^',
+	[KEY_BACKSLASH] =	'\\',
+	[KEY_Z] =		'z',
+	[KEY_X] =		'x',
+	[KEY_C] =		3,
+	[KEY_V] =		'v',
+	[KEY_B] =		'b',
+	[KEY_N] =		'n',
+	[KEY_M] =		'm',
+	[KEY_COMMA] =		',',
+	[KEY_DOT] =		'.',
+	[KEY_SLASH] =		'/',
+	[KEY_SPACE] =		' ',
+	[KEY_KP7] =		'7',
+	[KEY_KP8] =		'8',
+	[KEY_KP9] =		'9',
+	[KEY_KPMINUS] =		'-',
+	[KEY_KP4] =		'4',
+	[KEY_KP5] =		'5',
+	[KEY_KP6] =		'6',
+	[KEY_KPPLUS] =		'+',
+	[KEY_KP1] =		'1',
+	[KEY_KP2] =		'2',
+	[KEY_KP3] =		'3',
+	[KEY_KP0] =		'0',
+	[KEY_KPDOT] =		'.',
+	[KEY_KPENTER] =		'\n',
+	[KEY_HOME] =		BB_KEY_HOME,
+	[KEY_UP] =		BB_KEY_UP,
+	[KEY_PAGEUP] =		BB_KEY_PAGEUP,
+	[KEY_LEFT] =		BB_KEY_LEFT,
+	[KEY_RIGHT] =		BB_KEY_RIGHT,
+	[KEY_END] =		BB_KEY_END,
+	[KEY_DOWN] =		BB_KEY_DOWN,
+	[KEY_PAGEDOWN] =	BB_KEY_PAGEDOWN,
+	[KEY_INSERT] =		BB_KEY_INSERT,
+	[KEY_DELETE] =		BB_KEY_DEL,
+	[KEY_KPEQUAL] =		'=',
+	[KEY_KPCOMMA] =		',',
+};
diff --git a/include/input/keyboard.h b/include/input/keyboard.h
index d1f5bf5..8ccdf31 100644
--- a/include/input/keyboard.h
+++ b/include/input/keyboard.h
@@ -7,5 +7,6 @@
 
 extern uint8_t keycode_bb_keys[NR_KEYS];
 extern uint8_t keycode_bb_shift_keys[NR_KEYS];
+extern uint8_t keycode_bb_ctrl_keys[NR_KEYS];
 
 #endif
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

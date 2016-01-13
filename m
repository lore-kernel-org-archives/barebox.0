Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aJNUn-0004J6-IZ
 for barebox@lists.infradead.org; Wed, 13 Jan 2016 15:38:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Jan 2016 16:37:27 +0100
Message-Id: <1452699456-1025-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1452699456-1025-1-git-send-email-s.hauer@pengutronix.de>
References: <1452699456-1025-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/15] keymap: Add keymap for keys with shift pressed
To: Barebox List <barebox@lists.infradead.org>

When converting keys to ascii for the console we also need the
keymap with shift pressed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/input/keymap.c   | 82 ++++++++++++++++++++++++++++++++++++++++++++++++
 include/input/keyboard.h |  1 +
 2 files changed, 83 insertions(+)

diff --git a/drivers/input/keymap.c b/drivers/input/keymap.c
index 73dd112..a07b3a8 100644
--- a/drivers/input/keymap.c
+++ b/drivers/input/keymap.c
@@ -81,6 +81,88 @@ uint8_t keycode_bb_keys[NR_KEYS] = {
 	[KEY_DOWN] =		BB_KEY_DOWN,
 	[KEY_PAGEDOWN] =	BB_KEY_PAGEDOWN,
 	[KEY_INSERT] =		BB_KEY_INSERT,
+	[KEY_DELETE] =		BB_KEY_DEL,
+	[KEY_KPEQUAL] =		'=',
+	[KEY_KPCOMMA] =		',',
+};
+
+uint8_t keycode_bb_shift_keys[NR_KEYS] = {
+	[KEY_RESERVED] =	0xff,
+	[KEY_ESC] =		0x1b,
+	[KEY_1] =		'!',
+	[KEY_2] =		'@',
+	[KEY_3] =		'#',
+	[KEY_4] =		'$',
+	[KEY_5] =		'%',
+	[KEY_6] =		'^',
+	[KEY_7] =		'&',
+	[KEY_8] =		'*',
+	[KEY_9] =		'(',
+	[KEY_0] =		')',
+	[KEY_MINUS] =		'_',
+	[KEY_EQUAL] =		'+',
+	[KEY_BACKSPACE] =	0xff,
+	[KEY_TAB] =		'\t',
+	[KEY_Q] =		'Q',
+	[KEY_W] =		'W',
+	[KEY_E] =		'E',
+	[KEY_R] =		'R',
+	[KEY_T] =		'T',
+	[KEY_Y] =		'Y',
+	[KEY_U] =		'U',
+	[KEY_I] =		'I',
+	[KEY_O] =		'O',
+	[KEY_P] =		'P',
+	[KEY_LEFTBRACE] =	'{',
+	[KEY_RIGHTBRACE] =	'}',
+	[KEY_ENTER] =		'\n',
+	[KEY_A] =		'A',
+	[KEY_S] =		'S',
+	[KEY_D] =		'D',
+	[KEY_F] =		'F',
+	[KEY_G] =		'G',
+	[KEY_H] =		'H',
+	[KEY_J] =		'J',
+	[KEY_K] =		'K',
+	[KEY_L] =		'L',
+	[KEY_SEMICOLON] =	':',
+	[KEY_APOSTROPHE] =	'~',
+	[KEY_GRAVE] =		'^',
+	[KEY_BACKSLASH] =	'|',
+	[KEY_Z] =		'Z',
+	[KEY_X] =		'X',
+	[KEY_C] =		'C',
+	[KEY_V] =		'V',
+	[KEY_B] =		'B',
+	[KEY_N] =		'N',
+	[KEY_M] =		'M',
+	[KEY_COMMA] =		'<',
+	[KEY_DOT] =		'>',
+	[KEY_SLASH] =		'?',
+	[KEY_SPACE] =		' ',
+	[KEY_KP7] =		'7',
+	[KEY_KP8] =		'8',
+	[KEY_KP9] =		'9',
+	[KEY_KP4] =		'4',
+	[KEY_KP5] =		'5',
+	[KEY_KP6] =		'6',
+	[KEY_KPPLUS] =		'+',
+	[KEY_KP1] =		'1',
+	[KEY_KP2] =		'2',
+	[KEY_KP3] =		'3',
+	[KEY_KP0] =		'4',
+	[KEY_KPDOT] =		'.',
+	[KEY_KPENTER] =		'\n',
+	[KEY_KPSLASH] =		'/',
+	[KEY_HOME] =		BB_KEY_HOME,
+	[KEY_UP] =		BB_KEY_UP,
+	[KEY_PAGEUP] =		BB_KEY_PAGEUP,
+	[KEY_LEFT] =		BB_KEY_LEFT,
+	[KEY_RIGHT] =		BB_KEY_RIGHT,
+	[KEY_END] =		BB_KEY_END,
+	[KEY_DOWN] =		BB_KEY_DOWN,
+	[KEY_PAGEDOWN] =	BB_KEY_PAGEDOWN,
+	[KEY_INSERT] =		BB_KEY_INSERT,
 	[KEY_DELETE] =		BB_KEY_DEL7,
 	[KEY_KPEQUAL] =		'=',
 	[KEY_KPCOMMA] =		',',
diff --git a/include/input/keyboard.h b/include/input/keyboard.h
index dd04690..d1f5bf5 100644
--- a/include/input/keyboard.h
+++ b/include/input/keyboard.h
@@ -6,5 +6,6 @@
 #define NR_KEYS	256
 
 extern uint8_t keycode_bb_keys[NR_KEYS];
+extern uint8_t keycode_bb_shift_keys[NR_KEYS];
 
 #endif
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

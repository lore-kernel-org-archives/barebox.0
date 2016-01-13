Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aJNUn-0004J3-IR
 for barebox@lists.infradead.org; Wed, 13 Jan 2016 15:38:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Jan 2016 16:37:24 +0100
Message-Id: <1452699456-1025-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/15] keymap: remove exotic and nonprintable keys
To: Barebox List <barebox@lists.infradead.org>

We do not need these keys and they do not produce a usable result
either.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/input/keymap.c | 49 -------------------------------------------------
 1 file changed, 49 deletions(-)

diff --git a/drivers/input/keymap.c b/drivers/input/keymap.c
index eb3d4cf..2e603f4 100644
--- a/drivers/input/keymap.c
+++ b/drivers/input/keymap.c
@@ -34,7 +34,6 @@ uint8_t keycode_bb_keys[NR_KEYS] = {
 	[KEY_LEFTBRACE] =	'[',
 	[KEY_RIGHTBRACE] =	']',
 	[KEY_ENTER] =		'\n',
-	[KEY_LEFTCTRL] =	0xff,
 	[KEY_A] =		'a',
 	[KEY_S] =		's',
 	[KEY_D] =		'd',
@@ -47,7 +46,6 @@ uint8_t keycode_bb_keys[NR_KEYS] = {
 	[KEY_SEMICOLON] =	';',
 	[KEY_APOSTROPHE] =	0xff,
 	[KEY_GRAVE] =		'^',
-	[KEY_LEFTSHIFT] =	0xff,
 	[KEY_BACKSLASH] =	0xff,
 	[KEY_Z] =		'z',
 	[KEY_X] =		'x',
@@ -59,23 +57,7 @@ uint8_t keycode_bb_keys[NR_KEYS] = {
 	[KEY_COMMA] =		',',
 	[KEY_DOT] =		'.',
 	[KEY_SLASH] =		'/',
-	[KEY_RIGHTSHIFT] =	0xff,
-	[KEY_KPASTERISK] =	0xff,
-	[KEY_LEFTALT] =		0xff,
 	[KEY_SPACE] =		' ',
-	[KEY_CAPSLOCK] =	0xff,
-	[KEY_F1] =		0xff,
-	[KEY_F2] =		0xff,
-	[KEY_F3] =		0xff,
-	[KEY_F4] =		0xff,
-	[KEY_F5] =		0xff,
-	[KEY_F6] =		0xff,
-	[KEY_F7] =		0xff,
-	[KEY_F8] =		0xff,
-	[KEY_F9] =		0xff,
-	[KEY_F10] =		0xff,
-	[KEY_NUMLOCK] =		0xff,
-	[KEY_SCROLLLOCK] =	0xff,
 	[KEY_KP7] =		0xff,
 	[KEY_KP8] =		0xff,
 	[KEY_KP9] =		0xff,
@@ -89,23 +71,7 @@ uint8_t keycode_bb_keys[NR_KEYS] = {
 	[KEY_KP3] =		0xff,
 	[KEY_KP0] =		0xff,
 	[KEY_KPDOT] =		0xff,
-	[KEY_ZENKAKUHANKAKU] =	0xff,
-	[KEY_102ND] =		0xff,
-	[KEY_F11] =		0xff,
-	[KEY_F12] =		0xff,
-	[KEY_RO] =		0xff,
-	[KEY_KATAKANA] =	0xff,
-	[KEY_HIRAGANA] =	0xff,
-	[KEY_HENKAN] =		0xff,
-	[KEY_KATAKANAHIRAGANA] =0xff,
-	[KEY_MUHENKAN] =	0xff,
-	[KEY_KPJPCOMMA] =	0xff,
 	[KEY_KPENTER] =		0xff,
-	[KEY_RIGHTCTRL] =	0xff,
-	[KEY_KPSLASH] =		0xff,
-	[KEY_SYSRQ] =		0xff,
-	[KEY_RIGHTALT] =	0xff,
-	[KEY_LINEFEED] =	0xff,
 	[KEY_HOME] =		0xff,
 	[KEY_UP] =		BB_KEY_UP,
 	[KEY_PAGEUP] =		BB_KEY_PAGEUP,
@@ -116,21 +82,6 @@ uint8_t keycode_bb_keys[NR_KEYS] = {
 	[KEY_PAGEDOWN] =	BB_KEY_PAGEDOWN,
 	[KEY_INSERT] =		BB_KEY_INSERT,
 	[KEY_DELETE] =		BB_KEY_DEL7,
-	[KEY_MACRO] =		0xff,
-	[KEY_MUTE] =		0xff,
-	[KEY_VOLUMEDOWN] =	0xff,
-	[KEY_VOLUMEUP] =	0xff,
-	[KEY_POWER] =		0xff,
 	[KEY_KPEQUAL] =		0xff,
-	[KEY_KPPLUSMINUS] =	0xff,
-	[KEY_PAUSE] =		0xff,
-	[KEY_SCALE] =		0xff,
 	[KEY_KPCOMMA] =		0xff,
-	[KEY_HANGEUL] =		0xff,
-	[KEY_HANGUEL] =		KEY_HANGEUL,
-	[KEY_HANJA] =		0xff,
-	[KEY_YEN] =		0xff,
-	[KEY_LEFTMETA] =	0xff,
-	[KEY_RIGHTMETA] =	0xff,
-	[KEY_COMPOSE] =		0xff,
 };
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

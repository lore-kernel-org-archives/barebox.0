Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aJNUn-0004J5-I2
 for barebox@lists.infradead.org; Wed, 13 Jan 2016 15:38:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Jan 2016 16:37:26 +0100
Message-Id: <1452699456-1025-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/15] keymap: Add apostrophe, backslash and home
To: Barebox List <barebox@lists.infradead.org>

Add some previously undefined keys.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/input/keymap.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/input/keymap.c b/drivers/input/keymap.c
index fdc04f7..73dd112 100644
--- a/drivers/input/keymap.c
+++ b/drivers/input/keymap.c
@@ -44,9 +44,9 @@ uint8_t keycode_bb_keys[NR_KEYS] = {
 	[KEY_K] =		'k',
 	[KEY_L] =		'l',
 	[KEY_SEMICOLON] =	';',
-	[KEY_APOSTROPHE] =	0xff,
+	[KEY_APOSTROPHE] =	'`',
 	[KEY_GRAVE] =		'^',
-	[KEY_BACKSLASH] =	0xff,
+	[KEY_BACKSLASH] =	'\\',
 	[KEY_Z] =		'z',
 	[KEY_X] =		'x',
 	[KEY_C] =		'c',
@@ -72,7 +72,7 @@ uint8_t keycode_bb_keys[NR_KEYS] = {
 	[KEY_KP0] =		'0',
 	[KEY_KPDOT] =		'.',
 	[KEY_KPENTER] =		'\n',
-	[KEY_HOME] =		0xff,
+	[KEY_HOME] =		BB_KEY_HOME,
 	[KEY_UP] =		BB_KEY_UP,
 	[KEY_PAGEUP] =		BB_KEY_PAGEUP,
 	[KEY_LEFT] =		BB_KEY_LEFT,
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aJNUn-0004J4-I4
 for barebox@lists.infradead.org; Wed, 13 Jan 2016 15:38:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Jan 2016 16:37:25 +0100
Message-Id: <1452699456-1025-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/15] keymap: Add keypad keys
To: Barebox List <barebox@lists.infradead.org>

Allow to use the number keypad keys.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/input/keymap.c | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/input/keymap.c b/drivers/input/keymap.c
index 2e603f4..fdc04f7 100644
--- a/drivers/input/keymap.c
+++ b/drivers/input/keymap.c
@@ -58,20 +58,20 @@ uint8_t keycode_bb_keys[NR_KEYS] = {
 	[KEY_DOT] =		'.',
 	[KEY_SLASH] =		'/',
 	[KEY_SPACE] =		' ',
-	[KEY_KP7] =		0xff,
-	[KEY_KP8] =		0xff,
-	[KEY_KP9] =		0xff,
-	[KEY_KPMINUS] =		0xff,
-	[KEY_KP4] =		0xff,
-	[KEY_KP5] =		0xff,
-	[KEY_KP6] =		0xff,
-	[KEY_KPPLUS] =		0xff,
-	[KEY_KP1] =		0xff,
-	[KEY_KP2] =		0xff,
-	[KEY_KP3] =		0xff,
-	[KEY_KP0] =		0xff,
-	[KEY_KPDOT] =		0xff,
-	[KEY_KPENTER] =		0xff,
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
 	[KEY_HOME] =		0xff,
 	[KEY_UP] =		BB_KEY_UP,
 	[KEY_PAGEUP] =		BB_KEY_PAGEUP,
@@ -82,6 +82,6 @@ uint8_t keycode_bb_keys[NR_KEYS] = {
 	[KEY_PAGEDOWN] =	BB_KEY_PAGEDOWN,
 	[KEY_INSERT] =		BB_KEY_INSERT,
 	[KEY_DELETE] =		BB_KEY_DEL7,
-	[KEY_KPEQUAL] =		0xff,
-	[KEY_KPCOMMA] =		0xff,
+	[KEY_KPEQUAL] =		'=',
+	[KEY_KPCOMMA] =		',',
 };
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

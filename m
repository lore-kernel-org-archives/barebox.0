Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aJNUn-0004J2-IS
 for barebox@lists.infradead.org; Wed, 13 Jan 2016 15:38:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Jan 2016 16:37:23 +0100
Message-Id: <1452699456-1025-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/15] keymap: Fix braces
To: Barebox List <barebox@lists.infradead.org>

KEY_LEFTBRACE is the '[' key on an english keyboard and KEY_RIGHTBRACE
is the ']' key.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/input/keymap.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/input/keymap.c b/drivers/input/keymap.c
index b9fd6a2..eb3d4cf 100644
--- a/drivers/input/keymap.c
+++ b/drivers/input/keymap.c
@@ -31,8 +31,8 @@ uint8_t keycode_bb_keys[NR_KEYS] = {
 	[KEY_I] =		'i',
 	[KEY_O] =		'o',
 	[KEY_P] =		'p',
-	[KEY_LEFTBRACE] =	'(',
-	[KEY_RIGHTBRACE] =	')',
+	[KEY_LEFTBRACE] =	'[',
+	[KEY_RIGHTBRACE] =	']',
 	[KEY_ENTER] =		'\n',
 	[KEY_LEFTCTRL] =	0xff,
 	[KEY_A] =		'a',
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x233.google.com ([2a00:1450:4010:c07::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aX8T7-0008Dm-49
 for barebox@lists.infradead.org; Sat, 20 Feb 2016 14:25:11 +0000
Received: by mail-lf0-x233.google.com with SMTP id l143so70386333lfe.2
 for <barebox@lists.infradead.org>; Sat, 20 Feb 2016 06:24:48 -0800 (PST)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Sat, 20 Feb 2016 17:27:44 +0300
Message-Id: <1455978465-28919-1-git-send-email-pmamonov@gmail.com>
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
Subject: [PATCH 1/2] input: usb keyboard: fix BACKSPACE
To: barebox@lists.infradead.org, s.hauer@pengutronix.de
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/input/keymap.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/input/keymap.c b/drivers/input/keymap.c
index a07b3a8..79ca461 100644
--- a/drivers/input/keymap.c
+++ b/drivers/input/keymap.c
@@ -19,7 +19,7 @@ uint8_t keycode_bb_keys[NR_KEYS] = {
 	[KEY_0] =		'0',
 	[KEY_MINUS] =		'-',
 	[KEY_EQUAL] =		'=',
-	[KEY_BACKSPACE] =	0xff,
+	[KEY_BACKSPACE] =	8,
 	[KEY_TAB] =		'\t',
 	[KEY_Q] =		'q',
 	[KEY_W] =		'w',
@@ -101,7 +101,7 @@ uint8_t keycode_bb_shift_keys[NR_KEYS] = {
 	[KEY_0] =		')',
 	[KEY_MINUS] =		'_',
 	[KEY_EQUAL] =		'+',
-	[KEY_BACKSPACE] =	0xff,
+	[KEY_BACKSPACE] =	8,
 	[KEY_TAB] =		'\t',
 	[KEY_Q] =		'Q',
 	[KEY_W] =		'W',
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

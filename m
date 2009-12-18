Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NLf4n-0005Cr-7P
	for barebox@lists.infradead.org; Fri, 18 Dec 2009 15:49:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Dec 2009 16:47:55 +0100
Message-Id: <1261151305-18627-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1261151305-18627-6-git-send-email-s.hauer@pengutronix.de>
References: <1261151305-18627-1-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-2-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-3-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-4-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-5-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/36] replace // style comments
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/readkey.h |   20 ++++++++++----------
 1 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/include/readkey.h b/include/readkey.h
index d073e43..919af64 100644
--- a/include/readkey.h
+++ b/include/readkey.h
@@ -3,22 +3,22 @@
 
 #define CTL_CH(c)		((c) - 'a' + 1)
 
-// Misc. non-Ascii keys
-#define KEY_UP			CTL_CH('p')	// cursor key Up
-#define KEY_DOWN		CTL_CH('n')	// cursor key Down
-#define KEY_RIGHT		CTL_CH('f')	// Cursor Key Right
-#define KEY_LEFT		CTL_CH('b')	// cursor key Left
-#define KEY_HOME		CTL_CH('a')	// Cursor Key Home
+/* Misc. non-Ascii keys */
+#define KEY_UP			CTL_CH('p')	/* cursor key Up	*/
+#define KEY_DOWN		CTL_CH('n')	/* cursor key Down	*/
+#define KEY_RIGHT		CTL_CH('f')	/* Cursor Key Right	*/
+#define KEY_LEFT		CTL_CH('b')	/* cursor key Left	*/
+#define KEY_HOME		CTL_CH('a')	/* Cursor Key Home	*/
 #define KEY_ERASE_TO_EOL	CTL_CH('k')
 #define KEY_REFRESH_TO_EOL	CTL_CH('e')
 #define KEY_ERASE_LINE		CTL_CH('x')
 #define KEY_INSERT		CTL_CH('o')
 #define KEY_CLEAR_SCREEN	CTL_CH('l')
 #define KEY_DEL7		127
-#define KEY_END			133		// Cursor Key End
-#define KEY_PAGEUP		135		// Cursor Key Page Up
-#define KEY_PAGEDOWN		136		// Cursor Key Page Down
-#define KEY_DEL			137		// Cursor Key Del
+#define KEY_END			133		/* Cursor Key End	*/
+#define KEY_PAGEUP		135		/* Cursor Key Page Up	*/
+#define KEY_PAGEDOWN		136		/* Cursor Key Page Down	*/
+#define KEY_DEL			137		/* Cursor Key Del	*/
 
 #define ANSI_CLEAR_SCREEN "\e[2J\e[;H"
 
-- 
1.6.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

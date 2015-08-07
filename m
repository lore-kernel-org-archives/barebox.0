Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZNhyG-00056n-2K
 for barebox@lists.infradead.org; Fri, 07 Aug 2015 13:46:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Aug 2015 15:45:34 +0200
Message-Id: <1438955141-8850-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1438955141-8850-1-git-send-email-s.hauer@pengutronix.de>
References: <1438955141-8850-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/8] video: fbconsole: do not enter when we are already in
 fbconsole
To: Barebox List <barebox@lists.infradead.org>

Make it possible to issue console messages from inside the fbconsole
code without entering the fbconsole again.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/fbconsole.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index b368079..b798307 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -40,6 +40,7 @@ struct fbc_priv {
 	u8 csi[256];
 
 	int active;
+	int in_console;
 };
 
 static int fbc_getc(struct console_device *cdev)
@@ -282,6 +283,10 @@ static void fbc_putc(struct console_device *cdev, char c)
 	struct fbc_priv *priv = container_of(cdev,
 					struct fbc_priv, cdev);
 
+	if (priv->in_console)
+		return;
+	priv->in_console = 1;
+
 	switch (priv->state) {
 	case LIT:
 		switch (c) {
@@ -329,6 +334,7 @@ static void fbc_putc(struct console_device *cdev, char c)
 		}
 		break;
 	}
+	priv->in_console = 0;
 }
 
 static int setup_font(struct fbc_priv *priv)
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

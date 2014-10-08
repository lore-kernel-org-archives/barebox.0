Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XbkTs-0004u7-BC
 for barebox@lists.infradead.org; Wed, 08 Oct 2014 06:12:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  8 Oct 2014 08:11:49 +0200
Message-Id: <1412748709-26556-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] input: Let input support depend on !CONSOLE_NONE
To: barebox@lists.infradead.org

Without console support the input devices make no sense, so add
a depends on !CONSOLE_NONE.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/input/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/input/Kconfig b/drivers/input/Kconfig
index 07545ed..b4e86fd 100644
--- a/drivers/input/Kconfig
+++ b/drivers/input/Kconfig
@@ -3,6 +3,7 @@
 #
 
 menu "Input device support"
+	depends on !CONSOLE_NONE
 
 config KEYBOARD_GPIO
 	bool "GPIO Buttons"
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

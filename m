Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TRdsu-0003z1-HQ
 for barebox@lists.infradead.org; Fri, 26 Oct 2012 06:59:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Oct 2012 08:59:02 +0200
Message-Id: <1351234748-24994-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1351234748-24994-1-git-send-email-s.hauer@pengutronix.de>
References: <1351234748-24994-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/15] misc JTAG: Let Jtag driver depend on GENERIC_GPIO
To: barebox@lists.infradead.org

It uses the gpio functions, so let it depend on GENERIC_GPIO.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/misc/Kconfig |    1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index c3d31ec..699046b 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -11,6 +11,7 @@ if MISC_DEVICES
 
 config JTAG
 	tristate "JTAG Bitbang driver"
+	depends on GENERIC_GPIO
 	help
 	  Controls JTAG chains connected to I/O pins
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

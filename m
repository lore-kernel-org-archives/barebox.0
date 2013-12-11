Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22d.google.com ([2a00:1450:4010:c03::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VqrFC-0000xZ-93
 for barebox@lists.infradead.org; Wed, 11 Dec 2013 21:22:58 +0000
Received: by mail-la0-f45.google.com with SMTP id eh20so4264603lab.32
 for <barebox@lists.infradead.org>; Wed, 11 Dec 2013 13:22:33 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 12 Dec 2013 01:29:55 +0400
Message-Id: <1386797395-28878-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] of: gpio: Fix Kconfig variables to depend on
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/of/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index cdf7ac7..c4525cb 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -20,8 +20,8 @@ config OF_NET
 	def_bool y
 
 config OF_GPIO
-	depends on CONFIG_GPIOLIB
-	depends on CONFIG_OFDEVICE
+	depends on GPIOLIB
+	depends on OFDEVICE
 	def_bool y
 
 config OF_BAREBOX_DRIVERS
-- 
1.8.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

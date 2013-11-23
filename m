Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x232.google.com ([2a00:1450:400c:c00::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vk6gf-0002UU-7P
 for barebox@lists.infradead.org; Sat, 23 Nov 2013 06:27:26 +0000
Received: by mail-wg0-f50.google.com with SMTP id a1so129990wgh.5
 for <barebox@lists.infradead.org>; Fri, 22 Nov 2013 22:27:00 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Sat, 23 Nov 2013 07:26:51 +0100
Message-Id: <1385188011-32376-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH next] of: gpio: add missing type of config symbol
To: barebox@lists.infradead.org

On commit:

e306e5a724f9a2e68f636899ae2807e9a9e603d4

the type of config symbol is missing. This patch adds the necessary
config symbol type to avoid a Kconfig warning.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 drivers/of/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index 2afed42..cdf7ac7 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -22,6 +22,7 @@ config OF_NET
 config OF_GPIO
 	depends on CONFIG_GPIOLIB
 	depends on CONFIG_OFDEVICE
+	def_bool y
 
 config OF_BAREBOX_DRIVERS
 	depends on OFDEVICE
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

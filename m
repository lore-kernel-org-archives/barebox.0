Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x233.google.com ([2a00:1450:4010:c04::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZarVj-0006Bg-VZ
 for barebox@lists.infradead.org; Sat, 12 Sep 2015 20:35:00 +0000
Received: by lbcao8 with SMTP id ao8so53255870lbc.3
 for <barebox@lists.infradead.org>; Sat, 12 Sep 2015 13:34:37 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 12 Sep 2015 23:34:28 +0300
Message-Id: <1442090069-30186-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] logo: Kconfig: make BAREBOX_LOGO_* depend on BAREBOX_LOGO
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 lib/logo/Kconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/lib/logo/Kconfig b/lib/logo/Kconfig
index 5b40d75..0718053 100644
--- a/lib/logo/Kconfig
+++ b/lib/logo/Kconfig
@@ -5,6 +5,8 @@ menuconfig BAREBOX_LOGO
 	  dependencies. The logo can be found under /logo/barebox-logo-<width>.png
 	  in the running barebox.
 
+if BAREBOX_LOGO
+
 config BAREBOX_LOGO_64
 	bool "include 64x32 pixel logo"
 
@@ -19,3 +21,5 @@ config BAREBOX_LOGO_400
 
 config BAREBOX_LOGO_640
 	bool "include 640x320 pixel logo"
+
+endif # BAREBOX_LOGO
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

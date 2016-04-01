Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1alxut-0002rW-Cl
 for barebox@lists.infradead.org; Fri, 01 Apr 2016 12:11:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Apr 2016 14:10:43 +0200
Message-Id: <1459512644-8581-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1459512644-8581-1-git-send-email-s.hauer@pengutronix.de>
References: <1459512644-8581-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/7] ARM: i.MX: xload-esdhc: Add debug messages
To: Barebox List <barebox@lists.infradead.org>

When imx6_esdhc_start_image fails print an error, otherwise print a
success message.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/xload-esdhc.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/xload-esdhc.c b/arch/arm/mach-imx/xload-esdhc.c
index c150adf..0ff58c8 100644
--- a/arch/arm/mach-imx/xload-esdhc.c
+++ b/arch/arm/mach-imx/xload-esdhc.c
@@ -276,8 +276,12 @@ int imx6_esdhc_start_image(int instance)
 	pr_debug("Check ok, loading image\n");
 
 	ret = imx6_esdhc_load_image(instance, buf, len);
-	if (ret)
+	if (ret) {
+		pr_err("Loading image failed with %d\n", ret);
 		return ret;
+	}
+
+	pr_debug("Image loaded successfully\n");
 
 	bb = buf;
 
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

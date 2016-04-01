Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1alxuy-0002vB-Ch
 for barebox@lists.infradead.org; Fri, 01 Apr 2016 12:11:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Apr 2016 14:10:42 +0200
Message-Id: <1459512644-8581-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/7] ARM: i.MX: xload-esdhc: Fix typo successul -> successful
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/xload-esdhc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/xload-esdhc.c b/arch/arm/mach-imx/xload-esdhc.c
index 325e2e8..c150adf 100644
--- a/arch/arm/mach-imx/xload-esdhc.c
+++ b/arch/arm/mach-imx/xload-esdhc.c
@@ -251,7 +251,7 @@ int imx6_esdhc_load_image(int instance, void *buf, int len)
  * (This information is used to calculate the length of the image). The
  * image is started afterwards.
  *
- * Return: If successul, this function does not return. A negative error
+ * Return: If successful, this function does not return. A negative error
  * code is returned when this function fails.
  */
 int imx6_esdhc_start_image(int instance)
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

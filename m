Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jsKao-0001Ew-KR
 for barebox@lists.infradead.org; Mon, 06 Jul 2020 06:27:07 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  6 Jul 2020 08:27:04 +0200
Message-Id: <20200706062704.396-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: layerscape: ppa: fix error propagation in ppa_init()
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

On fit_open_image, we returned PTR_ERR(fit) instead of the correct ret.
We also didn't call fit_close as we should. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-layerscape/ppa.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-layerscape/ppa.c b/arch/arm/mach-layerscape/ppa.c
index 477e8947813c..6ab7659be730 100644
--- a/arch/arm/mach-layerscape/ppa.c
+++ b/arch/arm/mach-layerscape/ppa.c
@@ -77,8 +77,8 @@ static int ppa_init(void *ppa, size_t ppa_size, void *sec_firmware_addr)
 	if (IS_ERR(conf)) {
 		pr_err("Cannot open default config in ppa FIT image: %s\n",
 		       strerrorp(conf));
-		fit_close(fit);
-		return PTR_ERR(fit);
+		ret = PTR_ERR(fit);
+		goto err;
 	}
 
 
@@ -86,7 +86,6 @@ static int ppa_init(void *ppa, size_t ppa_size, void *sec_firmware_addr)
 	if (ret) {
 		pr_err("Cannot open firmware image in ppa FIT image: %s\n",
 		       strerror(-ret));
-		ret = PTR_ERR(fit);
 		goto err;
 	}
 
@@ -107,7 +106,7 @@ static int ppa_init(void *ppa, size_t ppa_size, void *sec_firmware_addr)
 err:
 	fit_close(fit);
 
-	return 0;
+	return ret;
 }
 
 int ls1046a_ppa_init(resource_size_t ppa_start, resource_size_t ppa_size)
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

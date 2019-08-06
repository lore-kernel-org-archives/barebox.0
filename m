Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hurke-0007LN-Kh
 for barebox@lists.infradead.org; Tue, 06 Aug 2019 05:11:15 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue,  6 Aug 2019 07:10:51 +0200
Message-Id: <87c364fcd198e97267c8baa0655e605b110e99a8.1565068235.git-series.r.czerwinski@pengutronix.de>
In-Reply-To: <cover.20f706d0d5a7ead5c114378becb025aefb9c7b8a.1565068235.git-series.r.czerwinski@pengutronix.de>
References: <cover.20f706d0d5a7ead5c114378becb025aefb9c7b8a.1565068235.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH v3 01/16] i.MX: HABv4: ignore return for i.MX28/6 initcalls
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Move the status call below the explanations and return Null.
No functional changes intended.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/hab/habv4.c | 18 +++++-------------
 1 file changed, 5 insertions(+), 13 deletions(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index 6a60be6..b11cf7b 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -511,21 +511,17 @@ int imx6_hab_get_status(void)
 
 static int init_imx6_hab_get_status(void)
 {
-	int ret = 0;
-
 	if (!cpu_is_mx6())
 		/* can happen in multi-image builds and is not an error */
 		return 0;
 
-	ret = imx6_hab_get_status();
-
 	/*
 	 * Nobody will check the return value if there were HAB errors, but the
 	 * initcall will fail spectaculously with a strange error message.
 	 */
-	if (ret == -EPERM)
-		return 0;
-	return ret;
+	imx6_hab_get_status();
+
+	return 0;
 }
 
 /*
@@ -544,19 +540,15 @@ int imx28_hab_get_status(void)
 
 static int init_imx28_hab_get_status(void)
 {
-	int ret = 0;
-
 	if (!cpu_is_mx28())
 		/* can happen in multi-image builds and is not an error */
 		return 0;
 
-	ret = imx28_hab_get_status();
 
 	/* nobody will check the return value if there were HAB errors, but the
 	 * initcall will fail spectaculously with a strange error message. */
-	if (ret == -EPERM)
-		return 0;
-	return ret;
+	imx28_hab_get_status();
+	return 0;
 }
 /* i.MX28 ROM code can be run after MMU setup to make use of caching */
 postmmu_initcall(init_imx28_hab_get_status);
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

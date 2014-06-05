Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WsSy0-0008SD-Nv
 for barebox@lists.infradead.org; Thu, 05 Jun 2014 08:24:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jun 2014 10:23:37 +0200
Message-Id: <1401956624-31802-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1401956624-31802-1-git-send-email-s.hauer@pengutronix.de>
References: <1401956624-31802-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/9] ARM: MXS: Remove unused variables
To: barebox@lists.infradead.org

Fixes:

arch/arm/boards/crystalfontz-cfa10036/cfa10036.c: In function 'cfa10036_devices_init':
arch/arm/boards/crystalfontz-cfa10036/cfa10036.c:119:9: warning: unused variable 'ret' [-Wunused-variable]
arch/arm/boards/chumby_falconwing/falconwing.c: In function 'falconwing_devices_init':
arch/arm/boards/chumby_falconwing/falconwing.c:287:9: warning: unused variable 'rc' [-Wunused-variable]
arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c: In function 'imx23_olinuxino_devices_init':
arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c:118:9: warning: unused variable 'rc' [-Wunused-variable]

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/chumby_falconwing/falconwing.c     | 2 +-
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c   | 2 +-
 arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c | 3 +--
 3 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 669de95..77581f6 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -284,7 +284,7 @@ static void falconwing_init_usb(void)
 
 static int falconwing_devices_init(void)
 {
-	int i, rc;
+	int i;
 
 	/* initizalize gpios */
 	for (i = 0; i < ARRAY_SIZE(pad_setup); i++)
diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
index 3374338..e6ebe82 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
@@ -116,7 +116,7 @@ mem_initcall(cfa10036_mem_init);
 
 static int cfa10036_devices_init(void)
 {
-	int i, ret;
+	int i;
 
 	/* initizalize muxing */
 	for (i = 0; i < ARRAY_SIZE(cfa10036_pads); i++)
diff --git a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
index 3d46604..6346c25 100644
--- a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
+++ b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
@@ -115,8 +115,7 @@ static void olinuxino_init_usb(void)
 
 static int imx23_olinuxino_devices_init(void)
 {
-	int i, rc;
-
+	int i;
 
 	/* initizalize gpios */
 	for (i = 0; i < ARRAY_SIZE(pad_setup); i++)
-- 
2.0.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

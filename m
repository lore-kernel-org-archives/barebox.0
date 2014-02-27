Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJ1PG-0006SI-Aj
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 13:53:47 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1WJ1Ot-00078k-6q
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 14:53:23 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 27 Feb 2014 14:53:21 +0100
Message-Id: <1393509203-836-3-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1393509203-836-1-git-send-email-l.stach@pengutronix.de>
References: <1393509203-836-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 3/5] ARM: i.MX: edmqmx6: choose the environment at the correct
 time
To: barebox@lists.infradead.org

From: Michael Olbrich <m.olbrich@pengutronix.de>

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
v2 lst:
- correct compatible
- proper function naming
---
 arch/arm/boards/datamodul-edm-qmx6/board.c | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/datamodul-edm-qmx6/board.c b/arch/arm/boards/datamodul-edm-qmx6/board.c
index 8a49beee2faa..3184912c4782 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/board.c
+++ b/arch/arm/boards/datamodul-edm-qmx6/board.c
@@ -111,15 +111,11 @@ static int realq7_env_init(void)
 }
 late_initcall(realq7_env_init);
 
-static int realq7_console_init(void)
+static int realq7_device_init(void)
 {
 	if (!of_machine_is_compatible("dmo,imx6q-edmqmx6"))
 		return 0;
 
-	barebox_set_hostname("eDM-QMX6");
-
-	imx6_init_lowlevel();
-
 	switch (bootsource_get()) {
 	case BOOTSOURCE_MMC:
 		of_device_enable_path("/chosen/environment-emmc");
@@ -132,4 +128,17 @@ static int realq7_console_init(void)
 
 	return 0;
 }
-postcore_initcall(realq7_console_init);
+device_initcall(realq7_device_init);
+
+static int realq7_postcore_init(void)
+{
+	if (!of_machine_is_compatible("dmo,imx6q-edmqmx6"))
+		return 0;
+
+	barebox_set_hostname("eDM-QMX6");
+
+	imx6_init_lowlevel();
+
+	return 0;
+}
+postcore_initcall(realq7_postcore_init);
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

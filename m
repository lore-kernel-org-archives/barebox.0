Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x233.google.com ([2607:f8b0:400e:c02::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YBwih-00031D-CC
 for barebox@lists.infradead.org; Fri, 16 Jan 2015 02:33:08 +0000
Received: by mail-pd0-f179.google.com with SMTP id v10so1714232pde.10
 for <barebox@lists.infradead.org>; Thu, 15 Jan 2015 18:32:46 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 15 Jan 2015 18:32:35 -0800
Message-Id: <1421375556-21715-3-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1421375556-21715-1-git-send-email-andrew.smirnov@gmail.com>
References: <1421375556-21715-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/3] i.MX6: phytec: Check environment path selection for errors
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code to explicitly check for success of of_device_enable_path()
when selecting which media is expected to contain barebox environment.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/phytec-phyflex-imx6/board.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/phytec-phyflex-imx6/board.c b/arch/arm/boards/phytec-phyflex-imx6/board.c
index 7ac7928..c731faf 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/board.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/board.c
@@ -65,6 +65,9 @@ static void phyflex_err006282_workaround(void)
 
 static int phytec_pfla02_init(void)
 {
+	int ret;
+	char *environment_path;
+
 	if (!of_machine_is_compatible("phytec,imx6q-pfla02") &&
 			!of_machine_is_compatible("phytec,imx6dl-pfla02") &&
 			!of_machine_is_compatible("phytec,imx6s-pfla02"))
@@ -76,17 +79,22 @@ static int phytec_pfla02_init(void)
 
 	switch (bootsource_get()) {
 	case BOOTSOURCE_MMC:
-		of_device_enable_path("/chosen/environment-sd");
+		environment_path = "/chosen/environment-sd";
 		break;
 	case BOOTSOURCE_NAND:
-		of_device_enable_path("/chosen/environment-nand");
+		environment_path = "/chosen/environment-nand";
 		break;
 	default:
 	case BOOTSOURCE_SPI:
-		of_device_enable_path("/chosen/environment-spinor");
+		environment_path = "/chosen/environment-spinor";
 		break;
 	}
 
+	ret = of_device_enable_path(environment_path);
+	if (ret < 0)
+		pr_warn("Failed to enable environment partition '%s' (%d)\n",
+			environment_path, ret);
+
 	return 0;
 }
 device_initcall(phytec_pfla02_init);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

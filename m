Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22e.google.com ([2607:f8b0:400e:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YBwig-000313-7Y
 for barebox@lists.infradead.org; Fri, 16 Jan 2015 02:33:07 +0000
Received: by mail-pa0-f46.google.com with SMTP id lf10so21284889pab.5
 for <barebox@lists.infradead.org>; Thu, 15 Jan 2015 18:32:44 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 15 Jan 2015 18:32:33 -0800
Message-Id: <1421375556-21715-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/3] i.MX6: phytec: Separate SoM specific code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Separate SoM(designator PFLA02) specific and base board(designator
PBAB0x) code into two distinct functions. PHYTEC default environment
for PHYFLEX references peripherals that may or may not be used on
custom baseboards used with SoMs. Move the code appending it into a
separate function that would have effect only for boards explicitly
claiming compatibility with PHYTEC baseboards.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/phytec-phyflex-imx6/board.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/phytec-phyflex-imx6/board.c b/arch/arm/boards/phytec-phyflex-imx6/board.c
index 1551460..7ac7928 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/board.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/board.c
@@ -87,8 +87,19 @@ static int phytec_pfla02_init(void)
 		break;
 	}
 
+	return 0;
+}
+device_initcall(phytec_pfla02_init);
+
+static int phytec_pbab0x_init(void)
+{
+	if (!of_machine_is_compatible("phytec,imx6x-pbab01") &&
+		!of_machine_is_compatible("phytec,imx6dl-pbab05") &&
+		!of_machine_is_compatible("phytec,imx6q-pbab02"))
+		return 0;
+
 	defaultenv_append_directory(defaultenv_phyflex_imx6);
 
 	return 0;
 }
-device_initcall(phytec_pfla02_init);
+device_initcall(phytec_pbab0x_init);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

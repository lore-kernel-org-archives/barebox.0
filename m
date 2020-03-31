Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLvN-00061n-My
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 18:47:56 +0000
Received: by mail-pf1-x443.google.com with SMTP id a13so709493pfa.2
 for <barebox@lists.infradead.org>; Tue, 31 Mar 2020 11:47:45 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 Mar 2020 11:47:08 -0700
Message-Id: <20200331184722.22707-10-andrew.smirnov@gmail.com>
In-Reply-To: <20200331184722.22707-1-andrew.smirnov@gmail.com>
References: <20200331184722.22707-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 09/23] ARM: zii-imx7d-dev: Differentiate between RPU2 and RMU2
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code to configure hostname so we could differentiate between the
two in scripts.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-imx7d-dev/board.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boards/zii-imx7d-dev/board.c b/arch/arm/boards/zii-imx7d-dev/board.c
index e46a4b181..b53a6af49 100644
--- a/arch/arm/boards/zii-imx7d-dev/board.c
+++ b/arch/arm/boards/zii-imx7d-dev/board.c
@@ -48,3 +48,13 @@ static int zii_imx7d_rpu2_coredevices_init(void)
 }
 coredevice_initcall(zii_imx7d_rpu2_coredevices_init);
 
+static int zii_imx7d_dev_init(void)
+{
+	if (of_machine_is_compatible("zii,imx7d-rpu2"))
+		barebox_set_hostname("rpu2");
+	else if (of_machine_is_compatible("zii,imx7d-rmu2"))
+		barebox_set_hostname("rmu2");
+
+	return 0;
+}
+late_initcall(zii_imx7d_dev_init);
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

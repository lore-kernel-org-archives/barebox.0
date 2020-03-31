Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLvG-0005ua-A9
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 18:47:39 +0000
Received: by mail-pj1-x1041.google.com with SMTP id jz1so1224489pjb.0
 for <barebox@lists.infradead.org>; Tue, 31 Mar 2020 11:47:38 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 Mar 2020 11:47:02 -0700
Message-Id: <20200331184722.22707-4-andrew.smirnov@gmail.com>
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
Subject: [PATCH 03/23] ARM: zii-imx7d-dev: Fix compatible name
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Fix compatible name use in zii_imx7d_rpu2_coredevices_init(). Upstream
uses "zii,imx7d-rpu2" and so should we.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-imx7d-dev/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/zii-imx7d-dev/board.c b/arch/arm/boards/zii-imx7d-dev/board.c
index 89f051530..e46a4b181 100644
--- a/arch/arm/boards/zii-imx7d-dev/board.c
+++ b/arch/arm/boards/zii-imx7d-dev/board.c
@@ -33,7 +33,7 @@ static void zii_imx7d_rpu2_init_fec(void)
 
 static int zii_imx7d_rpu2_coredevices_init(void)
 {
-	if (!of_machine_is_compatible("zii,imx7d-zii-rpu2") &&
+	if (!of_machine_is_compatible("zii,imx7d-rpu2") &&
 	    !of_machine_is_compatible("zii,imx7d-rmu2"))
 		return 0;
 
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLvM-00060z-QC
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 18:48:09 +0000
Received: by mail-pg1-x544.google.com with SMTP id i34so623636pgl.4
 for <barebox@lists.infradead.org>; Tue, 31 Mar 2020 11:47:44 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 Mar 2020 11:47:07 -0700
Message-Id: <20200331184722.22707-9-andrew.smirnov@gmail.com>
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
Subject: [PATCH 08/23] ARM: zii-imx6q-rdu2: Differentiate between RDU2 and
 RDU2+
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code to configure hostname so we could differentiate between the
two in scripts.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-imx6q-rdu2/board.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/zii-imx6q-rdu2/board.c b/arch/arm/boards/zii-imx6q-rdu2/board.c
index d41609bfa..0bb4700b6 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/board.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/board.c
@@ -128,8 +128,11 @@ static int rdu2_devices_init(void)
 {
 	struct i2c_client client;
 
-	if (!of_machine_is_compatible("zii,imx6q-zii-rdu2") &&
-	    !of_machine_is_compatible("zii,imx6qp-zii-rdu2"))
+	if (of_machine_is_compatible("zii,imx6q-zii-rdu2"))
+		barebox_set_hostname("rdu2");
+	else if (of_machine_is_compatible("zii,imx6qp-zii-rdu2"))
+		barebox_set_hostname("rdu2p");
+	else
 		return 0;
 
 	client.adapter = i2c_get_adapter(1);
@@ -147,8 +150,6 @@ static int rdu2_devices_init(void)
 		i2c_write_reg(&client, 0x2e, &reg, 1);
 	}
 
-	barebox_set_hostname("rdu2");
-
 	imx6_bbu_internal_spi_i2c_register_handler("SPI", "/dev/m25p0.barebox",
 						   BBU_HANDLER_FLAG_DEFAULT);
 
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

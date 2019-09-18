Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUnC-0001qU-If
 for barebox@lists.infradead.org; Wed, 18 Sep 2019 07:54:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Sep 2019 09:54:09 +0200
Message-Id: <20190918075421.20456-5-s.hauer@pengutronix.de>
In-Reply-To: <20190918075421.20456-1-s.hauer@pengutronix.de>
References: <20190918075421.20456-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/16] ARM: duckbill: Check machine type in initcalls
To: Barebox List <barebox@lists.infradead.org>

Check for the right machine type in initcalls before executing them to
make the board multi image safe.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/duckbill/board.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boards/duckbill/board.c b/arch/arm/boards/duckbill/board.c
index 3c6ab8e596..13d4ae43cf 100644
--- a/arch/arm/boards/duckbill/board.c
+++ b/arch/arm/boards/duckbill/board.c
@@ -62,6 +62,9 @@ static struct fsl_usb2_platform_data usb_pdata = {
 
 static int duckbill_devices_init(void)
 {
+	if (!of_machine_is_compatible("i2se,duckbill"))
+		return 0;
+
 	duckbill_get_ethaddr(); /* must be after registering ocotp */
 
 	imx28_usb_phy0_enable();
@@ -74,6 +77,9 @@ fs_initcall(duckbill_devices_init);
 
 static int duckbill_console_init(void)
 {
+	if (!of_machine_is_compatible("i2se,duckbill"))
+		return 0;
+
 	barebox_set_model("I2SE Duckbill");
 	barebox_set_hostname("duckbill");
 
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1b9T-0001Xl-18
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 20:29:29 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1l1b9R-0007nA-QH
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 21:29:25 +0100
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1l1b9R-0000wi-EQ
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 21:29:25 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 18 Jan 2021 21:29:18 +0100
Message-Id: <20210118202922.3581-2-m.felsch@pengutronix.de>
In-Reply-To: <20210118202922.3581-1-m.felsch@pengutronix.de>
References: <20210118202922.3581-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 2/6] ARM: boards: kontron-samx6i: simplify memory detection
 function
To: barebox@lists.infradead.org

The Dual/Quad modules always have twice the size of the Solo/DualLite
modules. Determine the size once and multiply it if we are running on a
Quad/Dual module. The only special case is the 4GB size where I've
copied the value from the vendor u-boot [1].

[1] https://github.com/kontron/u-boot-smarc-samx7/blob/master/board/kontron/amx6/amx6.c

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boards/kontron-samx6i/mem.c | 34 ++++++++++++----------------
 1 file changed, 15 insertions(+), 19 deletions(-)

diff --git a/arch/arm/boards/kontron-samx6i/mem.c b/arch/arm/boards/kontron-samx6i/mem.c
index 8132624e3b..08dceb55c0 100644
--- a/arch/arm/boards/kontron-samx6i/mem.c
+++ b/arch/arm/boards/kontron-samx6i/mem.c
@@ -49,26 +49,22 @@ resource_size_t samx6i_get_size(void)
 	id0 = imx6_gpio_val(gpio6, 7);
 	id1 = imx6_gpio_val(gpio6, 9);
 
-	if (cpu_type == IMX6_CPUTYPE_IMX6D ||
-			cpu_type == IMX6_CPUTYPE_IMX6Q) {
-		if (id0 && id1)
-			size = SZ_2G;
-		else if (id0)
-			size = SZ_2G;
-		else if (id1)
-			size = SZ_1G;
-		else
-			size = SZ_512M;
-	} else if (cpu_type == IMX6_CPUTYPE_IMX6S ||
-			cpu_type == IMX6_CPUTYPE_IMX6DL) {
-		if (id0 && id1)
-			size = SZ_2G;
-		else if (id0)
-			size = SZ_1G;
-		else if (id1)
-			size = SZ_512M;
+	/* Solo/DualLite module sizes */
+	if (id0 && id1)
+		size = SZ_2G;
+	else if (id0)
+		size = SZ_1G;
+	else if (id1)
+		size = SZ_512M;
+	else
+		size = SZ_256M;
+
+	/* Dual/Quad modules always have twice the size */
+	if (cpu_type == IMX6_CPUTYPE_IMX6D || cpu_type == IMX6_CPUTYPE_IMX6Q) {
+		if (size == SZ_2G)
+			size = 0xf0000000; /* 4G on a 32bit system */
 		else
-			size = SZ_256M;
+			size *= 2;
 	}
 
 	return size;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

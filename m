Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJ1PG-0006SJ-Al
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 13:53:48 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1WJ1Ot-00078k-7c
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 14:53:23 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 27 Feb 2014 14:53:22 +0100
Message-Id: <1393509203-836-4-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 4/5] ARM: i.MX: edmqmx6: set display GPIOs
To: barebox@lists.infradead.org

From: Michael Olbrich <m.olbrich@pengutronix.de>

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
v2 lst:
- move to device initcall
- use IMX_GPIO_NR macro
---
 arch/arm/boards/datamodul-edm-qmx6/board.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boards/datamodul-edm-qmx6/board.c b/arch/arm/boards/datamodul-edm-qmx6/board.c
index 3184912c4782..b0b4ae98d446 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/board.c
+++ b/arch/arm/boards/datamodul-edm-qmx6/board.c
@@ -116,6 +116,9 @@ static int realq7_device_init(void)
 	if (!of_machine_is_compatible("dmo,imx6q-edmqmx6"))
 		return 0;
 
+	gpio_direction_output(IMX_GPIO_NR(2, 22), 1);
+	gpio_direction_output(IMX_GPIO_NR(2, 21), 1);
+
 	switch (bootsource_get()) {
 	case BOOTSOURCE_MMC:
 		of_device_enable_path("/chosen/environment-emmc");
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tun2b-0007FI-3T
 for barebox@lists.infradead.org; Mon, 14 Jan 2013 16:37:42 +0000
Received: from mail439.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 25C95FF92F6
 for <barebox@lists.infradead.org>; Mon, 14 Jan 2013 17:47:13 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 14 Jan 2013 17:36:10 +0100
Message-Id: <1358181372-24547-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1358181372-24547-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130114163253.GD22953@game.jcrosoft.org>
 <1358181372-24547-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/5] at91sam9g45: fix i2c typos
To: barebox@lists.infradead.org

arch/arm/mach-at91/at91sam9g45_devices.c: In function 'at91_add_device_i2c':
arch/arm/mach-at91/at91sam9g45_devices.c:158:42: error: 'pdata_i2c' undeclared (first use in this function)
arch/arm/mach-at91/at91sam9g45_devices.c:158:42: note: each undeclared identifier is reported only once for each function it appears in
arch/arm/mach-at91/at91sam9g45_devices.c:163:8: error: expected ':' or '...' before ';' token
arch/arm/mach-at91/at91sam9g45_devices.c:166:8: error: expected ':' or '...' before ';' token

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam9g45_devices.c |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index c5f99b1..d2746da 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -155,15 +155,15 @@ static struct i2c_gpio_platform_data pdata_i2c1 = {
 
 void at91_add_device_i2c(short i2c_id, struct i2c_board_info *devices, int nr_devices)
 {
-	struct i2c_gpio_platform_data *pdata = &pdata_i2c;
+	struct i2c_gpio_platform_data *pdata;
 
 	i2c_register_board_info(i2c_id, devices, nr_devices);
 
 	switch (i2c_id) {
-	case 0;
+	case 0:
 		pdata = &pdata_i2c0;
 		break;
-	case 1;
+	case 1:
 		pdata = &pdata_i2c1;
 		break;
 	default:
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

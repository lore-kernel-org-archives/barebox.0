Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-f178.google.com ([209.85.192.178])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjgGx-0007Rm-4U
 for barebox@lists.infradead.org; Tue, 04 Jun 2013 01:42:51 +0000
Received: by mail-pd0-f178.google.com with SMTP id w16so1690715pde.37
 for <barebox@lists.infradead.org>; Mon, 03 Jun 2013 18:42:26 -0700 (PDT)
Message-ID: <1370310141.7191.1.camel@phoenix>
From: Axel Lin <axel.lin@ingics.com>
Date: Tue, 04 Jun 2013 09:42:21 +0800
Mime-Version: 1.0
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
Subject: [PATCH] at91: sama5d3: fix off-by-one array boundary checking for
 pdata_i2c
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

i2c_id is used as array subscript, so it's valid value range is
0 ... ARRAY_SIZE -1.

Signed-off-by: Axel Lin <axel.lin@ingics.com>
---
 arch/arm/mach-at91/sama5d3_devices.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-at91/sama5d3_devices.c b/arch/arm/mach-at91/sama5d3_devices.c
index 031168b..e456bd0 100644
--- a/arch/arm/mach-at91/sama5d3_devices.c
+++ b/arch/arm/mach-at91/sama5d3_devices.c
@@ -322,7 +322,7 @@ void at91_add_device_i2c(short i2c_id, struct i2c_board_info *devices, int nr_de
 {
 	struct i2c_gpio_platform_data *pdata;
 
-	if (i2c_id > ARRAY_SIZE(pdata_i2c))
+	if (i2c_id >= ARRAY_SIZE(pdata_i2c))
 		return;
 
 	i2c_register_board_info(i2c_id, devices, nr_devices);
-- 
1.8.1.2




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

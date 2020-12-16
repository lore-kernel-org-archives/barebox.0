Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kpWZ3-0004xA-3e
 for barebox@lists.infradead.org; Wed, 16 Dec 2020 13:09:57 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1kpWYx-0001fC-Gw
 for barebox@lists.infradead.org; Wed, 16 Dec 2020 14:09:51 +0100
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1kpWYx-0006jd-6Y
 for barebox@lists.infradead.org; Wed, 16 Dec 2020 14:09:51 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 16 Dec 2020 14:09:49 +0100
Message-Id: <20201216130949.25830-3-s.trumtrar@pengutronix.de>
In-Reply-To: <20201216130949.25830-1-s.trumtrar@pengutronix.de>
References: <20201216130949.25830-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 3/3] eeprom: at24: add support for 24cs64
To: Barebox List <barebox@lists.infradead.org>

The 24cs64 is a 64-Kbit eeprom with 32 byte write pages.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/eeprom/at24.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 568aa02a4c8c..8c04c5684b61 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -112,6 +112,7 @@ static struct platform_device_id at24_ids[] = {
 	{ "24c16", AT24_DEVICE_MAGIC(16384 / 8, 0) },
 	{ "24c32", AT24_DEVICE_MAGIC(32768 / 8, AT24_FLAG_ADDR16) },
 	{ "24c64", AT24_DEVICE_MAGIC(65536 / 8, AT24_FLAG_ADDR16) },
+	{ "24cs64", AT24_DEVICE_MAGIC(16, AT24_FLAG_ADDR16) },
 	{ "24c128", AT24_DEVICE_MAGIC(131072 / 8, AT24_FLAG_ADDR16) },
 	{ "24c256", AT24_DEVICE_MAGIC(262144 / 8, AT24_FLAG_ADDR16) },
 	{ "24c512", AT24_DEVICE_MAGIC(524288 / 8, AT24_FLAG_ADDR16) },
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

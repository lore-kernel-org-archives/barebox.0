Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Ogakx-0000VV-9S
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 09:59:28 +0000
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed,  4 Aug 2010 11:59:05 +0200
Message-Id: <1280915957-2910-2-git-send-email-m.grzeschik@pengutronix.de>
In-Reply-To: <1280915957-2910-1-git-send-email-m.grzeschik@pengutronix.de>
References: <1280915957-2910-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 01/13] i2c: Add missing defines for omap
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/i2c/i2c.h |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index c031bbb..2507d68 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -30,6 +30,8 @@ struct i2c_platform_data {
 #define I2C_NAME_SIZE	20
 
 #define I2C_M_RD		0x0001	/* read data, from slave to master */
+#define I2C_M_TEN               0x0010  /* this is a ten bit chip address */
+#define I2C_M_IGNORE_NAK        0x1000  /* if I2C_FUNC_PROTOCOL_MANGLING */
 
 /**
  * struct i2c_msg - an I2C transaction segment beginning with START
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

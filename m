Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixE7c-0000HB-Gn
 for barebox@lists.infradead.org; Thu, 30 Jan 2020 18:00:57 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1ixE7a-0003xT-Vr
 for barebox@lists.infradead.org; Thu, 30 Jan 2020 19:00:54 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1ixE7a-0007zw-NT
 for barebox@lists.infradead.org; Thu, 30 Jan 2020 19:00:54 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Thu, 30 Jan 2020 19:00:51 +0100
Message-Id: <20200130180053.30000-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH v2 1/3] regulator: pfuze: remove unsued define
To: barebox@lists.infradead.org

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/regulator/pfuze.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/regulator/pfuze.c b/drivers/regulator/pfuze.c
index 1950ffb04c..55f7eb5d4c 100644
--- a/drivers/regulator/pfuze.c
+++ b/drivers/regulator/pfuze.c
@@ -31,8 +31,6 @@
 
 #define DRIVERNAME		"pfuze"
 
-#define MC13XXX_NUMREGS		0x3f
-
 #define PFUZE100_SW1ABMODE	0x23
 #define PFUZE100_SW1CMODE	0x31
 #define PFUZE100_SW2MODE	0x38
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

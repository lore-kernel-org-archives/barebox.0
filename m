Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PwvGW-0001Yb-Uh
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 11:39:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Mar 2011 12:39:43 +0100
Message-Id: <1299584385-6016-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1299584385-6016-1-git-send-email-s.hauer@pengutronix.de>
References: <1299584385-6016-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] mfd/mc13892: Add missing semicolons
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mfd/mc13892.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mfd/mc13892.c b/drivers/mfd/mc13892.c
index 08a439b..b2cc911 100644
--- a/drivers/mfd/mc13892.c
+++ b/drivers/mfd/mc13892.c
@@ -132,7 +132,7 @@ int mc13892_reg_write(struct mc13892 *mc13892, enum mc13892_reg reg, u32 val)
 #endif
 	return -EINVAL;
 }
-EXPORT_SYMBOL(mc13892_reg_write)
+EXPORT_SYMBOL(mc13892_reg_write);
 
 int mc13892_reg_read(struct mc13892 *mc13892, enum mc13892_reg reg, u32 *val)
 {
@@ -146,7 +146,7 @@ int mc13892_reg_read(struct mc13892 *mc13892, enum mc13892_reg reg, u32 *val)
 #endif
 	return -EINVAL;
 }
-EXPORT_SYMBOL(mc13892_reg_read)
+EXPORT_SYMBOL(mc13892_reg_read);
 
 int mc13892_set_bits(struct mc13892 *mc13892, enum mc13892_reg reg, u32 mask, u32 val)
 {
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

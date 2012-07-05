Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Smrra-0002DS-Ru
 for barebox@lists.infradead.org; Thu, 05 Jul 2012 19:37:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jul 2012 21:36:36 +0200
Message-Id: <1341517020-5581-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1341517020-5581-1-git-send-email-s.hauer@pengutronix.de>
References: <1341517020-5581-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/30] Add missing semicolons at end of EXPORT_SYMBOL
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mfd/mc34704.c  |    4 ++--
 drivers/mfd/mc9sdz60.c |    4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mfd/mc34704.c b/drivers/mfd/mc34704.c
index 20c01e2..0432a98 100644
--- a/drivers/mfd/mc34704.c
+++ b/drivers/mfd/mc34704.c
@@ -52,7 +52,7 @@ int mc34704_reg_read(struct mc34704 *mc34704, u8 reg, u8 *val)
 
 	return ret == 1 ? 0 : ret;
 }
-EXPORT_SYMBOL(mc34704_reg_read)
+EXPORT_SYMBOL(mc34704_reg_read);
 
 int mc34704_reg_write(struct mc34704 *mc34704, u8 reg, u8 val)
 {
@@ -62,7 +62,7 @@ int mc34704_reg_write(struct mc34704 *mc34704, u8 reg, u8 val)
 
 	return ret == 1 ? 0 : ret;
 }
-EXPORT_SYMBOL(mc34704_reg_write)
+EXPORT_SYMBOL(mc34704_reg_write);
 
 static ssize_t mc34704_read(struct cdev *cdev, void *_buf, size_t count,
 		loff_t offset, ulong flags)
diff --git a/drivers/mfd/mc9sdz60.c b/drivers/mfd/mc9sdz60.c
index 0cd5007..75d0789 100644
--- a/drivers/mfd/mc9sdz60.c
+++ b/drivers/mfd/mc9sdz60.c
@@ -51,7 +51,7 @@ int mc9sdz60_reg_read(struct mc9sdz60 *mc9sdz60, enum mc9sdz60_reg reg, u8 *val)
 
 	return ret == 1 ? 0 : ret;
 }
-EXPORT_SYMBOL(mc9sdz60_reg_read)
+EXPORT_SYMBOL(mc9sdz60_reg_read);
 
 int mc9sdz60_reg_write(struct mc9sdz60 *mc9sdz60, enum mc9sdz60_reg reg, u8 val)
 {
@@ -61,7 +61,7 @@ int mc9sdz60_reg_write(struct mc9sdz60 *mc9sdz60, enum mc9sdz60_reg reg, u8 val)
 
 	return ret == 1 ? 0 : ret;
 }
-EXPORT_SYMBOL(mc9sdz60_reg_write)
+EXPORT_SYMBOL(mc9sdz60_reg_write);
 
 int mc9sdz60_set_bits(struct mc9sdz60 *mc9sdz60, enum mc9sdz60_reg reg, u8 mask, u8 val)
 {
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

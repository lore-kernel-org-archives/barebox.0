Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TRdsu-0003yz-HL
 for barebox@lists.infradead.org; Fri, 26 Oct 2012 06:59:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Oct 2012 08:59:01 +0200
Message-Id: <1351234748-24994-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1351234748-24994-1-git-send-email-s.hauer@pengutronix.de>
References: <1351234748-24994-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/15] mfd stmpe: Add missing semicolons at end of
 EXPORT_SYMBOL
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mfd/stmpe-i2c.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mfd/stmpe-i2c.c b/drivers/mfd/stmpe-i2c.c
index 12e95c1..d7c29cc 100644
--- a/drivers/mfd/stmpe-i2c.c
+++ b/drivers/mfd/stmpe-i2c.c
@@ -35,7 +35,7 @@ int stmpe_reg_read(struct stmpe *stmpe, u32 reg, u8 *val)
 
 	return ret == 1 ? 0 : ret;
 }
-EXPORT_SYMBOL(stmpe_reg_read)
+EXPORT_SYMBOL(stmpe_reg_read);
 
 int stmpe_reg_write(struct stmpe *stmpe, u32 reg, u8 val)
 {
@@ -45,7 +45,7 @@ int stmpe_reg_write(struct stmpe *stmpe, u32 reg, u8 val)
 
 	return ret == 1 ? 0 : ret;
 }
-EXPORT_SYMBOL(stmpe_reg_write)
+EXPORT_SYMBOL(stmpe_reg_write);
 
 int stmpe_set_bits(struct stmpe *stmpe, u32 reg, u8 mask, u8 val)
 {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

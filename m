Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from proxima.lasnet.de ([2a01:198:210:70::2])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZCpQD-0007nm-RM
 for barebox@lists.infradead.org; Wed, 08 Jul 2015 13:29:58 +0000
Received: from polaris.guest.pengutronix.de (hazel.nat.pengutronix.de
 [85.220.165.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: polaris@lasnet.de)
 by proxima.lasnet.de (Postfix) with ESMTPSA id 1C892C2B0B
 for <barebox@lists.infradead.org>; Wed,  8 Jul 2015 15:29:33 +0200 (CEST)
From: Jan Luebbe <jluebbe@debian.org>
Date: Wed,  8 Jul 2015 15:29:16 +0200
Message-Id: <1436362158-24488-3-git-send-email-jluebbe@debian.org>
In-Reply-To: <1436362158-24488-1-git-send-email-jluebbe@debian.org>
References: <1436362158-24488-1-git-send-email-jluebbe@debian.org>
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
Subject: [PATCH 2/4] i2c: only use set_scl for recovery after calling
 prepare_recovery
To: barebox@lists.infradead.org

set_scl may be ineffective before calling the driver specific
prepare_recovery callback.

Signed-off-by: Jan Luebbe <jluebbe@debian.org>
---
 drivers/i2c/i2c.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index e350ac5..39837fe 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -299,6 +299,9 @@ static int i2c_generic_recovery(struct i2c_adapter *adap)
 	if (bri->prepare_recovery)
 		bri->prepare_recovery(adap);
 
+	bri->set_scl(adap, val);
+	ndelay(RECOVERY_NDELAY);
+
 	/*
 	 * By this time SCL is high, as we need to give 9 falling-rising edges
 	 */
@@ -329,7 +332,6 @@ static int i2c_generic_recovery(struct i2c_adapter *adap)
 
 int i2c_generic_scl_recovery(struct i2c_adapter *adap)
 {
-	adap->bus_recovery_info->set_scl(adap, 1);
 	return i2c_generic_recovery(adap);
 }
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

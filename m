Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwlg0-0004HM-JV
 for barebox@lists.infradead.org; Wed, 29 Jan 2020 11:38:34 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1iwlfx-0004wY-Hk
 for barebox@lists.infradead.org; Wed, 29 Jan 2020 12:38:29 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1iwlfu-0002B9-Fh
 for barebox@lists.infradead.org; Wed, 29 Jan 2020 12:38:26 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 29 Jan 2020 12:38:23 +0100
Message-Id: <20200129113823.8304-1-m.felsch@pengutronix.de>
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
Subject: [PATCH] regulator: fixed: take regulator-boot-on into account
To: barebox@lists.infradead.org

There are regulators which are turned on by default (hw-design) and
shouldn't be disabled during the boot. Upstream uses the
regulator-boot-on dt-property for it:

8<--------------------------------------------------
  regulator-boot-on:
    description: bootloader/firmware enabled regulator
    type: boolean
8<--------------------------------------------------

The difference between boot-on and always-on is the linux suspend
handling. Regulators marked as boot-on can be disabled during suspend.
This case isn't interesting for barebox so we can mark those as
always-on too.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/regulator/fixed.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/regulator/fixed.c b/drivers/regulator/fixed.c
index cb5d785817..78b8290ff2 100644
--- a/drivers/regulator/fixed.c
+++ b/drivers/regulator/fixed.c
@@ -86,7 +86,8 @@ static int regulator_fixed_probe(struct device_d *dev)
 	fix->rdesc.ops = &fixed_ops;
 	fix->rdev.desc = &fix->rdesc;
 
-	if (of_find_property(dev->device_node, "regulator-always-on", NULL)) {
+	if (of_find_property(dev->device_node, "regulator-always-on", NULL) ||
+	    of_find_property(dev->device_node, "regulator-boot-on", NULL)) {
 		fix->always_on = 1;
 		regulator_fixed_enable(&fix->rdev);
 	}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

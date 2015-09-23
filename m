Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZelwU-0007LD-5h
 for barebox@lists.infradead.org; Wed, 23 Sep 2015 15:26:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Sep 2015 17:26:11 +0200
Message-Id: <1443021972-18223-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] state: write names in enum32 variables to oftree again
To: Barebox List <barebox@lists.infradead.org>

Commit 179b75a (state: fixup: only export default value during
fixup if set) accidently removed writing the enum32 value names
to the device tree. Add it back again

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/state.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/common/state.c b/common/state.c
index aa436fc..9f8ead1 100644
--- a/common/state.c
+++ b/common/state.c
@@ -259,13 +259,6 @@ static int state_enum32_export(struct state_variable *var,
 			return ret;
 	}
 
-	if (conv == STATE_CONVERT_FIXUP)
-		return 0;
-
-	ret = of_property_write_u32(node, "value", enum32->value);
-	if (ret)
-		return ret;
-
 	len = 0;
 
 	for (i = 0; i < enum32->num_names; i++)
@@ -281,6 +274,13 @@ static int state_enum32_export(struct state_variable *var,
 
 	free(prop);
 
+	if (conv == STATE_CONVERT_FIXUP)
+		return 0;
+
+	ret = of_property_write_u32(node, "value", enum32->value);
+	if (ret)
+		return ret;
+
 	return ret;
 }
 
-- 
2.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

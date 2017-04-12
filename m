Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cyIRI-0005lL-0K
 for barebox@lists.infradead.org; Wed, 12 Apr 2017 13:36:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cyIQt-000833-Fs
 for barebox@lists.infradead.org; Wed, 12 Apr 2017 15:35:39 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 12 Apr 2017 15:35:38 +0200
Message-Id: <20170412133539.32000-2-l.stach@pengutronix.de>
In-Reply-To: <20170412133539.32000-1-l.stach@pengutronix.de>
References: <20170412133539.32000-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/3] mtd: of: only add partition layout param when GLOBAL
 support is enabled
To: barebox@lists.infradead.org

Fixes: a2fa18f9f483 (mtd: of: Make used partition binding configurable)
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/of/partition.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 25b41cb012c6..ac20490231b5 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -253,9 +253,11 @@ static const char *of_binding_names[] = {
 
 static int of_partition_init(void)
 {
-	dev_add_param_enum(&global_device, "of_partition_binding", NULL, NULL,
-			   &of_partition_binding, of_binding_names,
-			   ARRAY_SIZE(of_binding_names), NULL);
+	if (IS_ENABLED(CONFIG_GLOBALVAR))
+		dev_add_param_enum(&global_device, "of_partition_binding",
+				   NULL, NULL,
+				   &of_partition_binding, of_binding_names,
+				   ARRAY_SIZE(of_binding_names), NULL);
 
 	return 0;
 }
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

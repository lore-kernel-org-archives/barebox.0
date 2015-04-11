Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp03.smtpout.orange.fr ([80.12.242.125]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yh3BO-0004VM-VV
 for barebox@lists.infradead.org; Sat, 11 Apr 2015 21:43:20 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sat, 11 Apr 2015 23:42:41 +0200
Message-Id: <1428788562-10004-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 1/2] net: smc1111: fix platform data initializations
To: barebox@lists.infradead.org

The configuration and control setup introduced in commit "extend the
driver for 91c94 and 91c96 support" suffers from a typo defect, which
makes the commit broken.

The typo happens to be in barebox tree, while it's not in the tested
patches I had, and there was a mismatch in my former submission, which
is fixed by this patch.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/net/smc91111.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index 698c74a..bcb470c 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -1437,6 +1437,8 @@ static int smc91c111_probe(struct device_d *dev)
 			priv->a = access_via_16bit;
 		pdata->config_setup = pdata->config_setup;
 		pdata->control_setup = pdata->control_setup;
+		priv->config_setup = pdata->config_setup;
+		priv->control_setup = pdata->control_setup;
 	}
 
 	edev->init = smc91c111_init_dev;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

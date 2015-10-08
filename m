Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x236.google.com ([2a00:1450:400c:c05::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZkIcA-0002Ia-4T
 for barebox@lists.infradead.org; Thu, 08 Oct 2015 21:20:38 +0000
Received: by wicfx3 with SMTP id fx3so42432447wic.0
 for <barebox@lists.infradead.org>; Thu, 08 Oct 2015 14:20:16 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Thu,  8 Oct 2015 23:20:11 +0200
Message-Id: <1444339211-17596-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH] net: mvneta: add Armada XP compatible
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Marvell NETA Network Engine found in Armada 370 and XP SoCs
also has a different compatible for Armada XP. Add the compatible
to the of_device_id list.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: barebox@lists.infradead.org
---
 drivers/net/mvneta.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/mvneta.c b/drivers/net/mvneta.c
index aab52c45deec..1690f3b576c7 100644
--- a/drivers/net/mvneta.c
+++ b/drivers/net/mvneta.c
@@ -761,6 +761,7 @@ static int mvneta_probe(struct device_d *dev)
 
 static struct of_device_id mvneta_dt_ids[] = {
 	{ .compatible = "marvell,armada-370-neta", },
+	{ .compatible = "marvell,armada-xp-neta" },
 	{ }
 };
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

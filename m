Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJICC-0001ux-Li
 for barebox@lists.infradead.org; Sat, 12 Oct 2019 14:16:38 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 12 Oct 2019 16:16:32 +0200
Message-Id: <20191012141632.14995-2-a.fatoum@pengutronix.de>
In-Reply-To: <20191012141632.14995-1-a.fatoum@pengutronix.de>
References: <20191012141632.14995-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] regulator: pfuze: add device_id of pfuze3001
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

This enables easy access to the pfuze3001's registers via regmap.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/regulator/pfuze.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/regulator/pfuze.c b/drivers/regulator/pfuze.c
index eeb787cdab1f..1950ffb04c13 100644
--- a/drivers/regulator/pfuze.c
+++ b/drivers/regulator/pfuze.c
@@ -191,6 +191,7 @@ static struct platform_device_id pfuze_ids[] = {
 	{ .name = "pfuze100" },
 	{ .name = "pfuze200" },
 	{ .name = "pfuze3000" },
+	{ .name = "pfuze3001" },
 	{ }
 };
 
@@ -198,6 +199,7 @@ static __maybe_unused struct of_device_id pfuze_dt_ids[] = {
 	{ .compatible = "fsl,pfuze100" },
 	{ .compatible = "fsl,pfuze200" },
 	{ .compatible = "fsl,pfuze3000" },
+	{ .compatible = "fsl,pfuze3001" },
 	{ }
 };
 
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

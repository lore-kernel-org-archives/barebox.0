Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahze-00052h-UU
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 15:15:43 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iahzA-0006u0-Fg
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 16:15:08 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 29 Nov 2019 16:15:04 +0100
Message-Id: <20191129151505.23946-39-l.stach@pengutronix.de>
In-Reply-To: <20191129151505.23946-1-l.stach@pengutronix.de>
References: <20191129151505.23946-1-l.stach@pengutronix.de>
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
Subject: [PATCH 38/39] pinctrl: tegra: mark drvdata as maybe unused
To: barebox@lists.infradead.org

If the driver is only built for one of the two supported SoCs we end
up with some unused structures.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/pinctrl/pinctrl-tegra30.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-tegra30.c b/drivers/pinctrl/pinctrl-tegra30.c
index ffb04eebbffd..278ea8c4a0b3 100644
--- a/drivers/pinctrl/pinctrl-tegra30.c
+++ b/drivers/pinctrl/pinctrl-tegra30.c
@@ -388,7 +388,7 @@ static const struct tegra_drive_pingroup tegra30_drive_groups[] = {
 	DRV_PG(vi1,   0x8c8, -1, -1, -1,  14,  5,  19,  5,  24,  4,  28,  4),
 };
 
-static const struct pinctrl_tegra30_drvdata tegra30_drvdata = {
+__maybe_unused static const struct pinctrl_tegra30_drvdata tegra30_drvdata = {
 	.pingrps = tegra30_pin_groups,
 	.num_pingrps = ARRAY_SIZE(tegra30_pin_groups),
 	.drvgrps = tegra30_drive_groups,
@@ -632,7 +632,7 @@ static const struct tegra_drive_pingroup tegra124_drive_groups[] = {
 	DRV_PG(ao4,   0x9c8,  2,  3,  4,  12,  7,  20,  7,  28,  2,  30,  2),
 };
 
-static const struct pinctrl_tegra30_drvdata tegra124_drvdata = {
+__maybe_unused static const struct pinctrl_tegra30_drvdata tegra124_drvdata = {
 	.pingrps = tegra124_pin_groups,
 	.num_pingrps = ARRAY_SIZE(tegra124_pin_groups),
 	.drvgrps = tegra124_drive_groups,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

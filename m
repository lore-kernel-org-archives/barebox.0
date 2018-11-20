Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gPCJA-0002Of-VO
 for barebox@lists.infradead.org; Tue, 20 Nov 2018 20:07:43 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Tue, 20 Nov 2018 21:07:07 +0100
Message-Id: <20181120200714.3692-3-linux@rempel-privat.de>
In-Reply-To: <20181120200714.3692-1-linux@rempel-privat.de>
References: <20181120200714.3692-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 2/9] pinctrl: tegra30: fix "Possible null pointer
 dereference: group" warning
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

The code is correct but it takes more seconds for me to understand.
And static code analyzer do not understand it at all.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 drivers/pinctrl/pinctrl-tegra30.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-tegra30.c b/drivers/pinctrl/pinctrl-tegra30.c
index d9b49c57d..ffb04eebb 100644
--- a/drivers/pinctrl/pinctrl-tegra30.c
+++ b/drivers/pinctrl/pinctrl-tegra30.c
@@ -658,8 +658,8 @@ static int pinctrl_tegra30_set_drvstate(struct pinctrl_tegra30 *ctrl,
 			break;
 		}
 	}
-	/* if no matching drivegroup is found */
-	if (i == ctrl->drvdata->num_drvgrps)
+
+	if (!group)
 		return 0;
 
 	regaddr = ctrl->regs.ctrl + (group->reg >> 2);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

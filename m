Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cl1Wk-0001hW-3Y
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 22:54:51 +0000
Received: by mail-pf0-x241.google.com with SMTP id o126so4811818pfb.1
 for <barebox@lists.infradead.org>; Mon, 06 Mar 2017 14:54:29 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  6 Mar 2017 14:53:28 -0800
Message-Id: <20170306225356.31475-18-andrew.smirnov@gmail.com>
In-Reply-To: <20170306225356.31475-1-andrew.smirnov@gmail.com>
References: <20170306225356.31475-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 17/45] pinctrl-at91: Fix a bug in at91_pinctrl_set_conf()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Pin_to_controller returns struct at91_gpio_chip, whereas at91_mux_*
functions expect void __iomem * pointing to controller register
window. Fix the code to do appropriate conversion between the two.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pinctrl/pinctrl-at91.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
index ebbc6f6..e24c9be 100644
--- a/drivers/pinctrl/pinctrl-at91.c
+++ b/drivers/pinctrl/pinctrl-at91.c
@@ -414,8 +414,10 @@ static int at91_pinctrl_set_conf(struct at91_pinctrl *info, unsigned int pin_num
 {
 	unsigned int mask;
 	void __iomem *pio;
+	struct at91_gpio_chip *at91_gpio;
 
-	pio = pin_to_controller(pin_num);
+	at91_gpio = pin_to_controller(pin_num);
+	pio  = at91_gpio->regbase;
 	mask = pin_to_mask(pin_num);
 
 	if (conf & PULL_UP && conf & PULL_DOWN)
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

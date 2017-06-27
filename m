Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dPmjM-0004Bc-Dr
 for barebox@lists.infradead.org; Tue, 27 Jun 2017 09:24:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Jun 2017 11:23:57 +0200
Message-Id: <20170627092357.20680-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] pinctrl: at91: Bail out if atmel, pins property does not exist
To: Barebox List <barebox@lists.infradead.org>

Do not blindly assume that a device node has a atmel,pins property.
Instead, test it for being NULL before using it. This also silences
a compiler warning when the driver is compiled without OF support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pinctrl/pinctrl-at91.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
index 021c1e5a2e..d52c184e44 100644
--- a/drivers/pinctrl/pinctrl-at91.c
+++ b/drivers/pinctrl/pinctrl-at91.c
@@ -449,6 +449,9 @@ static int at91_pinctrl_set_state(struct pinctrl_device *pdev, struct device_nod
 	info = to_at91_pinctrl(pdev);
 
 	list = of_get_property(np, "atmel,pins", &size);
+	if (!list)
+		return -EINVAL;
+
 	size /= sizeof(*list);
 
 	if (!size || size % 4) {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

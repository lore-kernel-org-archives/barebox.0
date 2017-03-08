Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cljmI-0006eA-96
 for barebox@lists.infradead.org; Wed, 08 Mar 2017 22:09:53 +0000
Received: by mail-pf0-x243.google.com with SMTP id 67so5068569pfg.2
 for <barebox@lists.infradead.org>; Wed, 08 Mar 2017 14:09:29 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  8 Mar 2017 14:08:53 -0800
Message-Id: <20170308220909.4560-5-andrew.smirnov@gmail.com>
In-Reply-To: <20170308220909.4560-1-andrew.smirnov@gmail.com>
References: <20170308220909.4560-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 04/20] pinctrl: at91: Fix a bug in at91_pinctrl_set_state()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Pin number, as specified in OF pinumx entries, is relative to each bank
start, whereas both at91_mux_pin() and at91_pinctrl_set_conf() asssume
absolute pin numbering, so we need to take into account each bank's pin
base and convert pin number appropriately. Failing to do so results in
any pinmux configuration being applied to pins in bank A.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pinctrl/pinctrl-at91.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
index e24c9be..34fb0ae 100644
--- a/drivers/pinctrl/pinctrl-at91.c
+++ b/drivers/pinctrl/pinctrl-at91.c
@@ -462,6 +462,8 @@ static int at91_pinctrl_set_state(struct pinctrl_device *pdev, struct device_nod
 		mux = be32_to_cpu(*list++);
 		conf = be32_to_cpu(*list++);
 
+		pin_num += bank_num * MAX_NB_GPIO_PER_BANK;
+
 		ret = at91_mux_pin(pin_num, mux, conf & PULL_UP);
 		if (ret) {
 			dev_err(pdev->dev, "failed to mux pin %d\n", pin_num);
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

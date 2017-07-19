Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dXwPd-0006Dc-Nu
 for barebox@lists.infradead.org; Wed, 19 Jul 2017 21:21:44 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Wed, 19 Jul 2017 23:21:02 +0200
Message-Id: <20170719212104.2613-4-sam@ravnborg.org>
In-Reply-To: <20170719212013.GA1675@ravnborg.org>
References: <20170719212013.GA1675@ravnborg.org>
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
Subject: [PATCH 4/6] pinctrl: at91: move initcalls to postcore_initcall
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Move initcalls to postcore_initcall() like all other pinctrl drivers.
This will init this driver earlier right after pinctrl driver.

No know bugs are fixed by this change.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/pinctrl/pinctrl-at91.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
index d52c184e4..030386977 100644
--- a/drivers/pinctrl/pinctrl-at91.c
+++ b/drivers/pinctrl/pinctrl-at91.c
@@ -538,7 +538,7 @@ static int at91_pinctrl_init(void)
 {
 	return platform_driver_register(&at91_pinctrl_driver);
 }
-coredevice_initcall(at91_pinctrl_init);
+postcore_initcall(at91_pinctrl_init);
 
 static int at91_gpio_get(struct gpio_chip *chip, unsigned offset)
 {
@@ -718,4 +718,4 @@ static int at91_gpio_init(void)
 {
 	return platform_driver_register(&at91_gpio_driver);
 }
-coredevice_initcall(at91_gpio_init);
+postcore_initcall(at91_gpio_init);
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

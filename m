Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGDSc-0000nP-IY
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 01:32:42 +0000
Received: by mail-pl1-x642.google.com with SMTP id b5-v6so629996pla.6
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 18:32:07 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 26 Oct 2018 18:31:48 -0700
Message-Id: <20181027013157.23135-3-andrew.smirnov@gmail.com>
In-Reply-To: <20181027013157.23135-1-andrew.smirnov@gmail.com>
References: <20181027013157.23135-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 02/11] VF610: Initialize pinctrl driver before gpio
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

GPIO driver on VF610 depends on functionality implemented by pinctrl
driver in its gpio_direction_*() calls. The proboing status quo works
fine for post-initcall scenarious, but in order for gpio-hogs to be
processed correctly we need to have pinctrl driver present by the time
GPIO driver is being probed.

Move GPIO driver to 'postcore' and pinctrl to 'core' to fix this
issue.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/gpio/gpio-vf610.c       | 2 +-
 drivers/pinctrl/pinctrl-vf610.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-vf610.c b/drivers/gpio/gpio-vf610.c
index 9ac838f3b..ab35310fb 100644
--- a/drivers/gpio/gpio-vf610.c
+++ b/drivers/gpio/gpio-vf610.c
@@ -160,4 +160,4 @@ static int __init gpio_vf610_init(void)
 {
 	return platform_driver_register(&vf610_gpio_driver);
 }
-core_initcall(gpio_vf610_init);
+postcore_initcall(gpio_vf610_init);
diff --git a/drivers/pinctrl/pinctrl-vf610.c b/drivers/pinctrl/pinctrl-vf610.c
index a46b0e2ca..662fa9b6c 100644
--- a/drivers/pinctrl/pinctrl-vf610.c
+++ b/drivers/pinctrl/pinctrl-vf610.c
@@ -165,4 +165,4 @@ static int pinctrl_vf610_init(void)
 {
 	return platform_driver_register(&pinctrl_vf610_driver);
 }
-postcore_initcall(pinctrl_vf610_init);
+core_initcall(pinctrl_vf610_init);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

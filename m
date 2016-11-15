Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c6gWO-0004EB-DZ
 for barebox@lists.infradead.org; Tue, 15 Nov 2016 16:23:46 +0000
Received: by mail-pg0-x244.google.com with SMTP id p66so12212380pga.2
 for <barebox@lists.infradead.org>; Tue, 15 Nov 2016 08:23:23 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 15 Nov 2016 08:22:55 -0800
Message-Id: <1479226976-12563-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/2] fixup! pinctrl: Add provisions to control GPIO pin
 direction
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

---

Sascha:

These two are fixup for issues in my Vybrid patch series, patch #2 is
for the issue you experienced and this one is for another issue I
found when building cupid_defconfig.

If you'd rather I post v3 version of the patchset with all of this
incorporated, let me know.

Thanks,
Andrey

 include/pinctrl.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/pinctrl.h b/include/pinctrl.h
index 0fde3f9..7d87169 100644
--- a/include/pinctrl.h
+++ b/include/pinctrl.h
@@ -49,7 +49,7 @@ static inline int of_pinctrl_select_state_default(struct device_node *np)
 	return -ENODEV;
 }
 
-static inline int pinctrl_gpio_direction_input(unsigend pin)
+static inline int pinctrl_gpio_direction_input(unsigned pin)
 {
 	return -ENOTSUPP;
 }
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

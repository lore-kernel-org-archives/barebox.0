Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x235.google.com ([2607:f8b0:400e:c03::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YHkkj-000721-4Z
 for barebox@lists.infradead.org; Sun, 01 Feb 2015 02:59:13 +0000
Received: by mail-pa0-f53.google.com with SMTP id kx10so67914070pab.12
 for <barebox@lists.infradead.org>; Sat, 31 Jan 2015 18:58:49 -0800 (PST)
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Sun,  1 Feb 2015 11:58:26 +0900
Message-Id: <1422759506-27440-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH] pinctrl: remove unnecessary error check
To: barebox@lists.infradead.org

The file drivers/pinctrl/pinctrl.c is compiled only when
CONFIG_PINCTRL is defined.  "IS_ENABLED(CONFIG_PINCTRL)" is
always evaluated as 1 in this function.
(Although the compiler would optimize it, the source file does
not look nice.)

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 drivers/pinctrl/pinctrl.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/pinctrl/pinctrl.c b/drivers/pinctrl/pinctrl.c
index d6479b9..10ce186 100644
--- a/drivers/pinctrl/pinctrl.c
+++ b/drivers/pinctrl/pinctrl.c
@@ -62,9 +62,6 @@ int of_pinctrl_select_state(struct device_node *np, const char *name)
 	struct device_node *np_config;
 	const char *statename;
 
-	if (!IS_ENABLED(CONFIG_PINCTRL))
-		return -ENOSYS;
-
 	if (!of_find_property(np, "pinctrl-0", NULL))
 		return 0;
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

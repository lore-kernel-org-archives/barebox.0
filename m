Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dx8P2-0000qg-Cg
 for barebox@lists.infradead.org; Wed, 27 Sep 2017 09:13:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Sep 2017 11:12:44 +0200
Message-Id: <20170927091245.9476-4-s.hauer@pengutronix.de>
In-Reply-To: <20170927091245.9476-1-s.hauer@pengutronix.de>
References: <20170927091245.9476-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] usbgadget: only set to peripheral mode when error
 checking is done
To: Barebox List <barebox@lists.infradead.org>
Cc: Oleksij Rempel <ore@pengutronix.de>

Only begin to modify the hardware when the obious errors have been
checked.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/autostart.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/autostart.c b/drivers/usb/gadget/autostart.c
index a27be899c3..2ca979057e 100644
--- a/drivers/usb/gadget/autostart.c
+++ b/drivers/usb/gadget/autostart.c
@@ -39,8 +39,6 @@ static int usbgadget_autostart(void)
 	if (!autostart)
 		return 0;
 
-	setenv("otg.mode", "peripheral");
-
 	opts = xzalloc(sizeof(*opts));
 	opts->release = usb_multi_opts_release;
 
@@ -60,6 +58,8 @@ static int usbgadget_autostart(void)
 		return 0;
 	}
 
+	setenv("otg.mode", "peripheral");
+
 	ret = usb_multi_register(opts);
 	if (ret)
 		usb_multi_opts_release(opts);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

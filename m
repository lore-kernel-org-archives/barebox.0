Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gyA87-0007Jr-BX
 for barebox@lists.infradead.org; Mon, 25 Feb 2019 06:52:48 +0000
Received: by mail-pg1-x543.google.com with SMTP id m1so4022861pgq.8
 for <barebox@lists.infradead.org>; Sun, 24 Feb 2019 22:52:46 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 24 Feb 2019 22:52:29 -0800
Message-Id: <20190225065229.3386-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] usb: imx: Do not disable VBUS on ehci_register()'s success
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>

Original code was written to exit early on ehci_register()'s
success. As a part of e3eb0c729b, however, it was modified to to early
exit on failure instead. This resulted in VBUS being erroneously
disabled after EHCI controller was added, thus breaking USB on some
i.MX boards (confirmed on ZII's RDU2).

Fixes: e3eb0c729b ("usb: host: ehci: add ehci_unregister()")
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Vivien Didelot <vivien.didelot@gmail.com>
---
 drivers/usb/imx/chipidea-imx.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 879221770..6c60c383f 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -201,14 +201,14 @@ static int ci_register_role(struct imx_chipidea *ci)
 				return ret;
 
 			ehci = ehci_register(ci->dev, &ci->data);
-			if (IS_ERR(ehci))
+			if (IS_ERR(ehci)) {
+				regulator_disable(ci->vbus);
 				return PTR_ERR(ehci);
+			}
 
 			ci->ehci = ehci;
 
 			ci->dev->detect = ci_ehci_detect;
-
-			regulator_disable(ci->vbus);
 		} else {
 			dev_err(ci->dev, "Host support not available\n");
 			return -ENODEV;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

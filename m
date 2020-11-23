Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khDmY-0007GQ-V7
 for barebox@lists.infradead.org; Mon, 23 Nov 2020 15:29:35 +0000
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1khDmW-0005MR-Fr
 for barebox@lists.infradead.org; Mon, 23 Nov 2020 16:29:32 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 23 Nov 2020 16:29:31 +0100
Message-Id: <20201123152931.4480-2-l.stach@pengutronix.de>
In-Reply-To: <20201123152931.4480-1-l.stach@pengutronix.de>
References: <20201123152931.4480-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/2] usb: imx: get power pin polarity from DT
To: barebox@lists.infradead.org

There is a documented DT property to set the power pin polarity,
parse it.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/usb/imx/chipidea-imx.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index b1a77a163798..b144f41437a9 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -168,6 +168,9 @@ static int imx_chipidea_probe_dt(struct imx_chipidea *ci)
 				   "over-current-active-high", NULL))
 		ci->flags |= MXC_EHCI_OC_PIN_ACTIVE_LOW;
 
+	if (of_find_property(ci->dev->device_node, "power-active-high", NULL))
+		ci->flags |= MXC_EHCI_PWR_PIN_ACTIVE_HIGH;
+
 	if (of_usb_get_maximum_speed(ci->dev->device_node, NULL) ==
 			USB_SPEED_FULL)
 		ci->flags |= MXC_EHCI_PFSC;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

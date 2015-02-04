Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.246]
 helo=DVREDG02.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YIx3U-0003GR-Ec
 for barebox@lists.infradead.org; Wed, 04 Feb 2015 10:19:32 +0000
From: Bo Shen <voice.shen@atmel.com>
Date: Wed, 4 Feb 2015 18:19:04 +0800
Message-ID: <1423045144-25714-1-git-send-email-voice.shen@atmel.com>
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
Subject: [PATCH] usb: at91_udc: pass the vbus initial value
To: s.hauer@pengutronix.de, plagnioj@jcrosoft.com
Cc: barebox@lists.infradead.org

If without pass the vbus initial value, the vbus status alway
present as 0 even if the vbus is connected to 5v.

Signed-off-by: Bo Shen <voice.shen@atmel.com>
---

 drivers/usb/gadget/at91_udc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/at91_udc.c
index 60e1ff7..b36ef19 100644
--- a/drivers/usb/gadget/at91_udc.c
+++ b/drivers/usb/gadget/at91_udc.c
@@ -1464,6 +1464,8 @@ static int __init at91udc_probe(struct device_d *dev)
 		DBG(udc, "VBUS detection: host:%s \n",
 			udc->vbus ? "present":"absent");
 
+		udc->gpio_vbus_val = udc->vbus;
+
 		dev_add_param_bool(dev, "vbus",
 			at91_udc_vbus_set, NULL, &udc->gpio_vbus_val, udc);
 	} else {
-- 
2.3.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x232.google.com ([2a00:1450:400c:c05::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9wxo-0006HM-76
 for barebox@lists.infradead.org; Wed, 23 Jul 2014 13:52:13 +0000
Received: by mail-wi0-f178.google.com with SMTP id hi2so2263248wib.5
 for <barebox@lists.infradead.org>; Wed, 23 Jul 2014 06:51:47 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 23 Jul 2014 15:51:45 +0200
Message-Id: <1406123512-26489-5-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406123512-26489-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406123512-26489-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 04/10] USB: fix PowerPowerCtrlMask assignment
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

usb_hub_configure() gets the hub descriptor and copies its values
over to a local descriptor.

While copying PortPowerCtrlMask it erroneously overwrites
DeviceRemovable due to a copy-and-paste error. Fix it up.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
---
 drivers/usb/core/hub.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index f90a927eef66..7553bcdd5ef3 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -342,7 +342,7 @@ static int usb_hub_configure(struct usb_device *dev)
 		hub->desc.DeviceRemovable[i] = descriptor->DeviceRemovable[i];
 
 	for (i = 0; i < ((hub->desc.bNbrPorts + 1 + 7)/8); i++)
-		hub->desc.DeviceRemovable[i] = descriptor->PortPowerCtrlMask[i];
+		hub->desc.PortPowerCtrlMask[i] = descriptor->PortPowerCtrlMask[i];
 
 	dev->maxchild = descriptor->bNbrPorts;
 	dev_dbg(&dev->dev, "%d ports detected\n", dev->maxchild);
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

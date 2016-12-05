Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cDug6-0005iq-PE
 for barebox@lists.infradead.org; Mon, 05 Dec 2016 14:55:39 +0000
Received: by mail-pf0-x242.google.com with SMTP id c4so17208409pfb.3
 for <barebox@lists.infradead.org>; Mon, 05 Dec 2016 06:55:18 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  5 Dec 2016 06:54:42 -0800
Message-Id: <1480949684-18520-15-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1480949684-18520-1-git-send-email-andrew.smirnov@gmail.com>
References: <1480949684-18520-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 14/16] i.MX: imx-usb-phy: Add VF610 OF compatiblity string
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

From looking at analogous Linux driver code it seems that all of the
differences between code "imx23-usbphy" and "vf610-usbphy" pertain to
suspend/resume functionality, which shouldn't affetct Barebox. As a
result this commit just adds a compatiblity string and no other code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/imx/imx-usb-phy.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
index 9f46f8d..274153b 100644
--- a/drivers/usb/imx/imx-usb-phy.c
+++ b/drivers/usb/imx/imx-usb-phy.c
@@ -168,6 +168,8 @@ static __maybe_unused struct of_device_id imx_usbphy_dt_ids[] = {
 	{
 		.compatible = "fsl,imx23-usbphy",
 	}, {
+		.compatible = "fsl,vf610-usbphy",
+	}, {
 		/* sentinel */
 	},
 };
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

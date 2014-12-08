Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XxzZK-0008HG-MU
 for barebox@lists.infradead.org; Mon, 08 Dec 2014 14:45:47 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XxzYx-0006lo-CJ
 for barebox@lists.infradead.org; Mon, 08 Dec 2014 15:45:23 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon,  8 Dec 2014 15:45:23 +0100
Message-Id: <1418049923-6176-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH] doc: usb: add missing new line in codeblock
To: barebox@lists.infradead.org

Fixes an error during doc generation that leads to the
code block being missing in the resulting docs.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 Documentation/user/usb.rst | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
index 88be62053629..0ff982bac462 100644
--- a/Documentation/user/usb.rst
+++ b/Documentation/user/usb.rst
@@ -155,6 +155,7 @@ value ``otg``. setting this to ``host`` or ``device`` puts the device in the cor
 mode. Once a specific mode has been selected it can't be changed later anymore.
 
 .. code-block:: sh
+
   barebox:/ devinfo otg0
   Parameters:
     mode: otg ("otg", "host", "peripheral")
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

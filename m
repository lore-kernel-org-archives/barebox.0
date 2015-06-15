Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z4QBA-0004jk-CY
 for barebox@lists.infradead.org; Mon, 15 Jun 2015 08:55:41 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1Z4QAm-00061y-NM
 for barebox@lists.infradead.org; Mon, 15 Jun 2015 10:55:16 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.85)
 (envelope-from <jbe@pengutronix.de>) id 1Z4QAm-0005kc-Gp
 for barebox@lists.infradead.org; Mon, 15 Jun 2015 10:55:16 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Mon, 15 Jun 2015 10:55:16 +0200
Message-Id: <1434358516-22058-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH] Documentation: fix typo
To: barebox@lists.infradead.org

This change enables Sphinx to resolve the reference.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 Documentation/user/usb.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
index 0ff982b..9eb1437 100644
--- a/Documentation/user/usb.rst
+++ b/Documentation/user/usb.rst
@@ -101,7 +101,7 @@ Android Fastboot support
 
 barebox has support for the android fastboot protocol. There is no dedicated command
 for initializing the fastboot protocol, instead it is integrated into the Multifunction
-Composite Gadget, see :`ref:command_usbgadget` for a usage description.
+Composite Gadget, see :ref:`command_usbgadget` for a usage description.
 
 The Fastboot gadget supports the following commands:
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

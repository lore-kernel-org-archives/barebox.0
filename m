Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XtJWC-0002PL-IF
 for barebox@lists.infradead.org; Tue, 25 Nov 2014 17:03:14 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XtJVr-0000RL-1u
 for barebox@lists.infradead.org; Tue, 25 Nov 2014 18:02:51 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 25 Nov 2014 18:02:50 +0100
Message-Id: <1416934970-24929-5-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1416934970-24929-1-git-send-email-l.stach@pengutronix.de>
References: <1416934970-24929-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH v2 5/5] usb: host: only activate Efika MX ULPI workaround if
 ULPI is selected
To: barebox@lists.infradead.org

Fixes a build failure with disabled ULPI support.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/usb/host/ehci-hcd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index d2e129679601..133561659c37 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -437,7 +437,7 @@ fail:
 	return -1;
 }
 
-#ifdef CONFIG_MACH_EFIKA_MX_SMARTBOOK
+#if defined(CONFIG_MACH_EFIKA_MX_SMARTBOOK) && defined(CONFIG_USB_ULPI)
 #include <usb/ulpi.h>
 /*
  * Add support for setting CHRGVBUS to workaround a hardware bug on efika mx/sb
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

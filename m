Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RnEvD-0006Nf-Ql
 for barebox@lists.infradead.org; Tue, 17 Jan 2012 19:42:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 17 Jan 2012 20:42:06 +0100
Message-Id: <1326829326-25841-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] USB: Remove __attribute__ ((packed)) for struct ehci_hccr and
 ehci_hcor
To: barebox@lists.infradead.org

From: Jason Kridner <jkridner@beagleboard.org>

cherry-picked from U-Boot.

commit 69716c1900274a89bd5cbd1b0bb276ceaaa04f61
Author: Jason Kridner <jkridner@beagleboard.org>
Date:   Wed Apr 20 08:54:16 2011 -0500

    USB: Remove __attribute__ ((packed)) for struct ehci_hccr and ehci_hcor

    Remove __attribute__ ((packed)) to prevent byte access to soc
    registers in some gcc versions.

    Having patches to enable ehci for the BeagleBoard lying around for
    several months, this one was the show-stopper.

    Switched to align(4), rather than remove the attribute, per suggestion
    from Alexander.

    Credits have to go to Laine Walker-Avina <lwalkera@ieee.org> for
    finding the problem.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/host/ehci.h |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/host/ehci.h b/drivers/usb/host/ehci.h
index 07a1768..eac93db 100644
--- a/drivers/usb/host/ehci.h
+++ b/drivers/usb/host/ehci.h
@@ -55,7 +55,7 @@ struct ehci_hccr {
 #define HCS_N_PORTS(p)		(((p) >> 0) & 0xf)
 	uint32_t cr_hccparams;
 	uint8_t cr_hcsp_portrt[8];
-} __attribute__ ((packed));
+} __attribute__ ((packed, aligned(4)));
 
 struct ehci_hcor {
 	uint32_t or_usbcmd;
@@ -80,7 +80,7 @@ struct ehci_hcor {
 #define FLAG_CF		(1 << 0)	/* true:  we'll support "high speed" */
 	uint32_t or_portsc[CONFIG_SYS_USB_EHCI_MAX_ROOT_PORTS];
 	uint32_t or_systune;
-} __attribute__ ((packed));
+} __attribute__ ((packed, aligned(4)));
 
 #define USBMODE		0x68		/* USB Device mode */
 #define USBMODE_SDIS	(1 << 3)	/* Stream disable */
-- 
1.7.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

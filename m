Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHXJp-00010B-CX
 for barebox@lists.infradead.org; Thu, 26 Mar 2020 18:33:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id DE20A27E0BD7
 for <barebox@lists.infradead.org>; Thu, 26 Mar 2020 19:33:27 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Thu, 26 Mar 2020 19:33:04 +0100
Message-Id: <20200326183304.16531-5-jmaselbas@kalray.eu>
In-Reply-To: <20200326183304.16531-1-jmaselbas@kalray.eu>
References: <20200326183304.16531-1-jmaselbas@kalray.eu>
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
Subject: [PATCH v2 4/4] usb: gadget: dfu: Fix DFU mode interface descriptor
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>

The gadget driver set the bInterfaceProtocol value to 1 in the DFU
interface descriptor. However this value is used to indicate that the
gadget is in run-time mode and not ready for DFU. When ready for DFU
operation the bInterfaceProtocol value must be set to 2 (DFU mode).

From the DFU 1.1 specification, the value of bInterfaceProtocol select:
 - 1: Runtime protocol  (see Table 4.1)
 - 2: DFU mode protocol (see Table 4.4)

This patch change the bInterfaceProtocol value from 1 to 2. As this
DFU gadget driver is always ready for DFU operation (DFU mode) and
doesn't require a USB reset.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>

---

I was getting errors when trying to update a partition using
dfu-util when there was more than one partition available.
(the error was "More than one DFU capable USB device found!")

This is the output of dfu-util when listing partitions.
The first is before this patch and second one is after.
Notice the difference between the two: in the first you
can read 'Found Runtime' where in the other 'Found DFU'.

The bInterfaceProtocol was set to 1 (before):

  $ dfu-util -l
  Found Runtime: [1d6b:0104] [...] alt=0, name="/dev/mtd0.p0"
  Found Runtime: [1d6b:0104] [...] alt=1, name="/dev/mtd0.p1"
  ...

When bInterfaceProtocol is set to 2 (after patch):

  $ dfu-util -l
  Found DFU: [1d6b:0104] [...] alt=0, name="/dev/mtd0.p0"
  Found DFU: [1d6b:0104] [...] alt=1, name="/dev/mtd0.p1"
  ...

---
 drivers/usb/gadget/dfu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index 225c6e3c6..9117a5b06 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -239,7 +239,7 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
 		desc[i].bNumEndpoints	=	0;
 		desc[i].bInterfaceClass =	0xfe;
 		desc[i].bInterfaceSubClass =	1;
-		desc[i].bInterfaceProtocol =	1;
+		desc[i].bInterfaceProtocol =	2;
 		desc[i].bAlternateSetting = i;
 		desc[i].iInterface = us[i + 1].id;
 		header[i] = (struct usb_descriptor_header *)&desc[i];
-- 
2.21.0.196.g041f5ea


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

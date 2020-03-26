Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHXJl-0000zE-Sq
 for barebox@lists.infradead.org; Thu, 26 Mar 2020 18:33:27 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 6293C27E0BD7
 for <barebox@lists.infradead.org>; Thu, 26 Mar 2020 19:33:23 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Thu, 26 Mar 2020 19:33:00 +0100
Message-Id: <20200326183304.16531-1-jmaselbas@kalray.eu>
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
Subject: [PATCH v2 0/4] usb: gadget: dfu: Fix timeout on erase when using big
 partition
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>

Hi,

The two first patch are focused on two fixes for an issue I encountered
when trying to use the DFU gadget on big flash partition (2MB).

You can find more information in each patch, but here is a short summary
of the issue:

When downloading a firmware into a big flash partition the erase
operation can take a long time to be complete from few seconds to
minutes in extreme cases. During the erase the DFU gadget does not
respond to any USB setup request, the host only see a stalled USB
endpoint and cannot get responses from DFU_GETSTATE nor DFU_GETSTATUS.


The last patch is a small fix that allow to use the dfu gadget after
being unbind, such as:
  barebox:/ usbgadget -D /foo(foo)
  barebox:/ usbgadget -d
  barebox:/ usbgadget -D /bar(bar)


Best regards,
Jules

change in v2:
 - reorder commits
 - reset global variables for progressive erase in dfu_cleanup
   this is to allow multi partition update without restart
 - add missing error check on erase and remove erase on non mtd device
 - add a new commit that fix a bug when exposing multiple partitions at once

---

Jules Maselbas (4):
  usb: gadget: dfu: Reset global variables on unbind
  usb: gadget: dfu: Add manifestation phase
  usb: gadget: dfu: Progressive erase if file is a mtd
  usb: gadget: dfu: Fix DFU mode interface descriptor

 drivers/usb/gadget/dfu.c | 207 +++++++++++++++++++++++++++++----------
 1 file changed, 155 insertions(+), 52 deletions(-)

-- 
2.21.0.196.g041f5ea


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

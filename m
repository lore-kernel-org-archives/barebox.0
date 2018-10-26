Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gG48w-0007e5-Rl
 for barebox@lists.infradead.org; Fri, 26 Oct 2018 15:35:24 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23993030AbeJZPfJePcVz (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Fri, 26 Oct 2018 17:35:09 +0200
Date: Fri, 26 Oct 2018 17:35:08 +0200
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181026153508.GA16049@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [PATCH 1/2] Documentation: USB gadget: document
 usbgadget.fastboot_bbu variable
To: barebox@lists.infradead.org

Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 Documentation/user/usb.rst | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
index 8396f3897..b89d46bb6 100644
--- a/Documentation/user/usb.rst
+++ b/Documentation/user/usb.rst
@@ -266,3 +266,5 @@ USB Gadget autostart Options
   See :ref:`command_usbgadget` -a. (Default 0).
 ``global.usbgadget.fastboot_function``
   Function description for fastboot. See :ref:`command_usbgadget` -A [desc].
+``global.usbgadget.fastboot_bbu``
+  Export barebox update handlers. See :ref:`command_usbgadget` -b. (Default 0).
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

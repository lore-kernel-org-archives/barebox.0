Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x232.google.com ([2a00:1450:400c:c09::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVnfe-00081A-Pp
 for barebox@lists.infradead.org; Tue, 16 Feb 2016 22:00:35 +0000
Received: by mail-wm0-x232.google.com with SMTP id b205so129852988wmb.1
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 14:00:14 -0800 (PST)
From: Philipp Zabel <philipp.zabel@gmail.com>
Date: Tue, 16 Feb 2016 23:00:02 +0100
Message-Id: <1455660002-12208-1-git-send-email-philipp.zabel@gmail.com>
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
Subject: [PATCH] Documentation: usb: fix otg mode parameter description
To: barebox@lists.infradead.org

Replace ``device`` otg.mode option with the correct ``peripheral``.

Signed-off-by: Philipp Zabel <philipp.zabel@gmail.com>
---
 Documentation/user/usb.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
index 9eb1437..99158a2 100644
--- a/Documentation/user/usb.rst
+++ b/Documentation/user/usb.rst
@@ -151,7 +151,7 @@ barebox does not have USB OTG support. However, barebox supports some USB cores
 both host and device mode. If these are specified for otg in the device tree
 (dr_mode = "otg";) barebox registers a OTG device which can be used to decide which
 mode shall be used. The device has a ``mode`` parameter which by default has the
-value ``otg``. setting this to ``host`` or ``device`` puts the device in the corresponding
+value ``otg``. setting this to ``host`` or ``peripheral`` puts the device in the corresponding
 mode. Once a specific mode has been selected it can't be changed later anymore.
 
 .. code-block:: sh
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

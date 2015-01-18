Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YCvh2-0001yY-Rc
 for barebox@lists.infradead.org; Sun, 18 Jan 2015 19:39:29 +0000
Received: from antimon.intern.lynxeye.de.Speedport_W_504V_Typ_A
 (p4FD7DEA0.dip0.t-ipconnect.de [79.215.222.160])
 by lynxeye.de (Postfix) with ESMTPA id 8358726C2001
 for <barebox@lists.infradead.org>; Sun, 18 Jan 2015 20:38:29 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 18 Jan 2015 20:38:23 +0100
Message-Id: <1421609904-14161-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 1/2] docs: fix missing newlines in codeblocks
To: barebox@lists.infradead.org

Those cause a warning while generating the docs
as well as misrendering of the generated docs.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 Documentation/boards/garz-fricke.rst | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/boards/garz-fricke.rst b/Documentation/boards/garz-fricke.rst
index 33d0dd3e3920..27acf5ad3c78 100644
--- a/Documentation/boards/garz-fricke.rst
+++ b/Documentation/boards/garz-fricke.rst
@@ -16,6 +16,7 @@ network or any other medium the Santaro supports. You can backup the original bo
 with:
 
 .. code-block:: sh
+
   cat /dev/mmcblk0boot0 > /mnt/mmcblk0boot0.backup
   cat /dev/mmcblk0boot1 > /mnt/mmcblk0boot1.backup
 
@@ -25,6 +26,7 @@ device.
 To install barebox on the board do:
 
 .. code-block:: sh
+
   echo 0 > /sys/block/mmcblk0boot0/force_ro
   cat barebox-guf-santaro.img > /dev/mmcblk0boot0
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

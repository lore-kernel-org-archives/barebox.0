Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XBL3y-0006eT-3H
 for barebox@lists.infradead.org; Sun, 27 Jul 2014 09:48:18 +0000
Received: by mail-la0-f51.google.com with SMTP id el20so4436608lab.10
 for <barebox@lists.infradead.org>; Sun, 27 Jul 2014 02:47:57 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 27 Jul 2014 13:47:28 +0400
Message-Id: <1406454448-10645-10-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406454448-10645-1-git-send-email-antonynpavlov@gmail.com>
References: <1406454448-10645-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 9/9] Documentation: add QEMU Canon A1100 barebox mini-howto
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards/digic.rst | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/boards/digic.rst b/Documentation/boards/digic.rst
new file mode 100644
index 0000000..e2c49b6
--- /dev/null
+++ b/Documentation/boards/digic.rst
@@ -0,0 +1,16 @@
+Canon DIGIC
+===========
+
+Canon PowerShot A1100 IS
+------------------------
+
+Running barebox on QEMU
+^^^^^^^^^^^^^^^^^^^^^^^
+
+QEMU supports Canon A1100 camera emulation since version 2.0.
+
+Usage::
+
+  $ qemu-system-arm -M canon-a1100 \
+      -nographic -monitor null -serial stdio \
+      -bios barebox.canon-a1100.bin
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XcK1f-0002FO-Vr
 for barebox@lists.infradead.org; Thu, 09 Oct 2014 20:09:28 +0000
Received: by mail-lb0-f170.google.com with SMTP id u10so1870007lbd.1
 for <barebox@lists.infradead.org>; Thu, 09 Oct 2014 13:09:05 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 10 Oct 2014 00:08:57 +0400
Message-Id: <1412885337-1544-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1412885337-1544-1-git-send-email-antonynpavlov@gmail.com>
References: <1412885337-1544-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/2] Documentation: mips: add little-endian qemu-malta HOWTO
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards/mips/qemu-malta.rst | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/boards/mips/qemu-malta.rst b/Documentation/boards/mips/qemu-malta.rst
index be89ae3..22da600 100644
--- a/Documentation/boards/mips/qemu-malta.rst
+++ b/Documentation/boards/mips/qemu-malta.rst
@@ -1,6 +1,9 @@
 QEMU Malta
 ==========
 
+Big-endian mode
+---------------
+
 QEMU run string::
 
   qemu-system-mips -nodefaults -M malta -m 256 \
@@ -11,6 +14,27 @@ Also you can use GXemul::
 
   gxemul -Q -x -e maltabe -M 256 0xbfc00000:barebox-flash-image
 
+
+Little-endian mode
+------------------
+
+Running little-endian Malta is a bit tricky.
+In little-endian mode the 32bit words in the boot flash image are swapped,
+a neat trick which allows bi-endian firmware.
+
+You have to swap words of ``zbarebox.bin`` image, e.g.::
+
+  echo arch/mips/pbl/zbarebox.bin \
+      | cpio --create \
+      | cpio --extract --swap --unconditional
+
+QEMU run string::
+
+  qemu-system-mipsel -nodefaults -M malta -m 256 \
+      -nographic -serial stdio -monitor null \
+      -bios barebox-flash-image
+
+
 Links
 -----
 
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

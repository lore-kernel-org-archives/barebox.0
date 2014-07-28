Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x235.google.com ([2a00:1450:4010:c04::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XBsHS-0002Xg-12
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 21:16:26 +0000
Received: by mail-lb0-f181.google.com with SMTP id 10so6120503lbg.26
 for <barebox@lists.infradead.org>; Mon, 28 Jul 2014 14:16:03 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 29 Jul 2014 01:15:28 +0400
Message-Id: <1406582130-10116-10-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406582130-10116-1-git-send-email-antonynpavlov@gmail.com>
References: <1406582130-10116-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 09/11] Documentation: add QEMU Canon A1100 barebox
 mini-howto
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

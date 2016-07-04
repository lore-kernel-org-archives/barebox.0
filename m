Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bK2Ry-0007tR-GQ
 for barebox@lists.infradead.org; Mon, 04 Jul 2016 11:54:07 +0000
Received: by mail-wm0-x243.google.com with SMTP id 187so21130481wmz.1
 for <barebox@lists.infradead.org>; Mon, 04 Jul 2016 04:53:47 -0700 (PDT)
From: Raphael Poggi <poggi.raph@gmail.com>
Date: Mon,  4 Jul 2016 13:52:57 +0200
Message-Id: <1467633177-22478-15-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1467633177-22478-1-git-send-email-poggi.raph@gmail.com>
References: <1467633177-22478-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH v5 14/14] Documentation: add aarch64-qemu-virt board doc.
To: barebox@lists.infradead.org
Cc: Raphael Poggi <poggi.raph@gmail.com>

Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
---
 Documentation/boards/aarch64-qemu-virt.rst | 13 +++++++++++++
 1 file changed, 13 insertions(+)
 create mode 100644 Documentation/boards/aarch64-qemu-virt.rst

diff --git a/Documentation/boards/aarch64-qemu-virt.rst b/Documentation/boards/aarch64-qemu-virt.rst
new file mode 100644
index 0000000..b6b446e
--- /dev/null
+++ b/Documentation/boards/aarch64-qemu-virt.rst
@@ -0,0 +1,13 @@
+===========
+
+Aarch64 Qemu virt
+------------------------
+
+Running barebox on QEMU aarch64 virt machine
+^^^^^^^^^^^^^^^^^^^^^^^
+
+Usage::
+	$ qemu-system-aarch64 -m 2048M \
+		-cpu cortex-a57 -machine virt \
+		-display none -serial stdio \
+		-kernel ../barebox/barebox
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

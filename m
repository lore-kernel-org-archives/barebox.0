Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lE6lE-0003ht-QV
 for barebox@lists.infradead.org; Mon, 22 Feb 2021 08:40:11 +0000
Received: from geraet.guest.stw.pengutronix.de (unknown [185.203.202.7])
 (Authenticated sender: ahmad@a3f.at)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 3400F24000F
 for <barebox@lists.infradead.org>; Mon, 22 Feb 2021 08:40:05 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 22 Feb 2021 09:39:59 +0100
Message-Id: <20210222083959.601990-1-ahmad@a3f.at>
In-Reply-To: <20210222070605.589180-9-ahmad@a3f.at>
References: <20210222070605.589180-9-ahmad@a3f.at>
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
Subject: [PATCH] fixup! fixup! Documentation: add Documentation on VirtIO for
 barebox
To: barebox@lists.infradead.org

Add note about how to access console.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 Documentation/user/virtio.rst | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/user/virtio.rst b/Documentation/user/virtio.rst
index caf88ecf73b3..8740c7046340 100644
--- a/Documentation/user/virtio.rst
+++ b/Documentation/user/virtio.rst
@@ -59,6 +59,8 @@ a VirtIO console on ARM::
   	-chardev socket,path=/tmp/foo,server,nowait,id=foo \
   	-device virtconsole,chardev=foo,name=console.foo
 
+To access the console socket, you can use ``socat /tmp/foo -``.
+
 Note the use of ``-kernel ./images/barebox-dt-2nd.img`` instead of
 ``-bios ./images/barebox-$BOARD.img``. ``-kernel`` will cause QEMU
 to pass barebox a fixed-up device tree describing the ``virtio-mmio``
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

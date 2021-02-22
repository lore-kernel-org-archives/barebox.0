Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lE5Ra-0006hu-Pz
 for barebox@lists.infradead.org; Mon, 22 Feb 2021 07:15:47 +0000
Received: from geraet.fritz.box (unknown [83.135.83.78])
 (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 66A341BF204
 for <barebox@lists.infradead.org>; Mon, 22 Feb 2021 07:15:45 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 22 Feb 2021 08:15:39 +0100
Message-Id: <20210222071539.591483-1-ahmad@a3f.at>
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
Subject: [PATCH] fixup! Documentation: add Documentation on VirtIO for barebox
To: barebox@lists.infradead.org

Fix case.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 Documentation/user/virtio.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/user/virtio.rst b/Documentation/user/virtio.rst
index 7233c001bcce..caf88ecf73b3 100644
--- a/Documentation/user/virtio.rst
+++ b/Documentation/user/virtio.rst
@@ -77,4 +77,4 @@ and 2 block devices::
   	-device virtio-blk-device,drive=hd1
 
 .. _VirtIO: http://docs.oasis-open.org/virtio/virtio/v1.0/virtio-v1.0.pdf
-.. _qemu: https://www.qemu.org
+.. _QEMU: https://www.qemu.org
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

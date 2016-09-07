Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bhjDT-00075m-JO
 for barebox@lists.infradead.org; Wed, 07 Sep 2016 20:13:04 +0000
Received: by mail-lf0-x242.google.com with SMTP id l131so316365lfl.0
 for <barebox@lists.infradead.org>; Wed, 07 Sep 2016 13:12:43 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  7 Sep 2016 23:12:36 +0300
Message-Id: <20160907201236.26820-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] Documentation: aarch64-qemu-virt: fix sphinx issues
To: barebox@lists.infradead.org
Cc: Raphael Poggi <poggi.raph@gmail.com>

The patch fixes these sphinx issues:

    barebox/Documentation/boards/aarch64-qemu-virt.rst:7: WARNING: Title underline too short.

    Running barebox on QEMU aarch64 virt machine
    ^^^^^^^^^^^^^^^^^^^^^^^
    barebox/Documentation/boards/aarch64-qemu-virt.rst:1: ERROR: Document or section may not begin with a transition.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Raphael Poggi <poggi.raph@gmail.com>
---
 Documentation/boards/aarch64-qemu-virt.rst | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/Documentation/boards/aarch64-qemu-virt.rst b/Documentation/boards/aarch64-qemu-virt.rst
index b6b446e..e21791a 100644
--- a/Documentation/boards/aarch64-qemu-virt.rst
+++ b/Documentation/boards/aarch64-qemu-virt.rst
@@ -1,10 +1,11 @@
-===========
+Aarch64
+=======
 
 Aarch64 Qemu virt
-------------------------
+-----------------
 
 Running barebox on QEMU aarch64 virt machine
-^^^^^^^^^^^^^^^^^^^^^^^
+^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 
 Usage::
 	$ qemu-system-aarch64 -m 2048M \
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

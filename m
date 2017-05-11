Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward12h.cmail.yandex.net ([2a02:6b8:0:f35::9d])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d8sIe-0004QZ-3N
 for barebox@lists.infradead.org; Thu, 11 May 2017 17:54:54 +0000
Received: from smtp2o.mail.yandex.net (smtp2o.mail.yandex.net [37.140.190.27])
 by forward12h.cmail.yandex.net (Yandex) with ESMTP id E7780214C5
 for <barebox@lists.infradead.org>; Thu, 11 May 2017 20:54:27 +0300 (MSK)
Received: from smtp2o.mail.yandex.net (localhost.localdomain [127.0.0.1])
 by smtp2o.mail.yandex.net (Yandex) with ESMTP id BC00A5080C96
 for <barebox@lists.infradead.org>; Thu, 11 May 2017 20:54:26 +0300 (MSK)
From: Andrey Panov <rockford@yandex.ru>
Date: Thu, 11 May 2017 20:54:25 +0300
Message-Id: <20170511175425.25515-1-rockford@yandex.ru>
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
Subject: [PATCH] ARM: Embedsky E9: Update environment
To: barebox@lists.infradead.org

Signed-off-by: Andrey Panov <rockford@yandex.ru>
---
 arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc1       | 1 +
 arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc3       | 1 +
 arch/arm/boards/embedsky-e9/defaultenv-e9/nv/boot.default | 1 +
 3 files changed, 3 insertions(+)
 create mode 100644 arch/arm/boards/embedsky-e9/defaultenv-e9/nv/boot.default

diff --git a/arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc1 b/arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc1
index 0177e6c6b..a54b77726 100644
--- a/arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc1
+++ b/arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc1
@@ -3,4 +3,5 @@
 mount /dev/mmc1.0
 
 global.bootm.image=/mnt/mmc1.0/zImage
+global.bootm.oftree=/mnt/mmc1.0/imx6q-embedsky-e9.dtb
 global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootwait"
diff --git a/arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc3 b/arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc3
index f6cb529d3..154cef9e7 100644
--- a/arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc3
+++ b/arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc3
@@ -3,4 +3,5 @@
 mount /dev/mmc3.0
 
 global.bootm.image=/mnt/mmc3.0/zImage
+global.bootm.oftree=/mnt/mmc3.0/imx6q-embedsky-e9.dtb
 global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootwait"
diff --git a/arch/arm/boards/embedsky-e9/defaultenv-e9/nv/boot.default b/arch/arm/boards/embedsky-e9/defaultenv-e9/nv/boot.default
new file mode 100644
index 000000000..da228862c
--- /dev/null
+++ b/arch/arm/boards/embedsky-e9/defaultenv-e9/nv/boot.default
@@ -0,0 +1 @@
+mmc1 mmc3
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

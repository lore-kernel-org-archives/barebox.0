Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo177.mail-out.ovh.net ([46.105.61.149])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ce5G1-0007HE-IJ
 for barebox@lists.infradead.org; Wed, 15 Feb 2017 19:28:55 +0000
Received: from player716.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo177.mail-out.ovh.net (Postfix) with ESMTP id C82052D95D
 for <barebox@lists.infradead.org>; Wed, 15 Feb 2017 20:28:30 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 15 Feb 2017 20:34:09 +0100
Message-Id: <1487187257-29082-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20170215192932.GB32649@mail.ovh.net>
References: <20170215192932.GB32649@mail.ovh.net>
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
Subject: [PATCH 01/12] efi: move block io driver to driver/block
To: barebox@lists.infradead.org

so it can be reused on any ARCH

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/efi/efi/Makefile                          | 5 ++++-
 drivers/Makefile                               | 1 +
 drivers/block/Makefile                         | 1 +
 {arch/efi/efi => drivers/block}/efi-block-io.c | 0
 4 files changed, 6 insertions(+), 1 deletion(-)
 create mode 100644 drivers/block/Makefile
 rename {arch/efi/efi => drivers/block}/efi-block-io.c (100%)

diff --git a/arch/efi/efi/Makefile b/arch/efi/efi/Makefile
index a856e5907..f088c7a94 100644
--- a/arch/efi/efi/Makefile
+++ b/arch/efi/efi/Makefile
@@ -1,2 +1,5 @@
-obj-y += efi.o clocksource.o efi-block-io.o efi-device.o efi-image.o
+obj-y += clocksource.o
+obj-y += efi.o
+obj-y += efi-device.o
+obj-y += efi-image.o
 bbenv-y += env-efi
diff --git a/drivers/Makefile b/drivers/Makefile
index 6a70f6ee1..9ff261ad2 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -1,4 +1,5 @@
 obj-y	+= base/
+obj-y	+= block/
 obj-$(CONFIG_ARM_AMBA) += amba/
 obj-y	+= net/
 obj-y	+= serial/
diff --git a/drivers/block/Makefile b/drivers/block/Makefile
new file mode 100644
index 000000000..8812c0fae
--- /dev/null
+++ b/drivers/block/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_EFI_BOOTUP) += efi-block-io.o
diff --git a/arch/efi/efi/efi-block-io.c b/drivers/block/efi-block-io.c
similarity index 100%
rename from arch/efi/efi/efi-block-io.c
rename to drivers/block/efi-block-io.c
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

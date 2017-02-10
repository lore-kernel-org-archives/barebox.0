Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cc8VG-0001j7-AX
 for barebox@lists.infradead.org; Fri, 10 Feb 2017 10:32:39 +0000
Received: from player734.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id 24AA7A30E2
 for <barebox@lists.infradead.org>; Fri, 10 Feb 2017 11:32:12 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 10 Feb 2017 11:37:46 +0100
Message-Id: <1486723070-32548-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1486723070-32548-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170210095655.GA25859@mail.ovh.net>
 <1486723070-32548-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/9] efi: move startup and payload to common/efi
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/efi/Makefile                                      | 2 +-
 common/Makefile                                        | 1 +
 {arch/efi => common}/efi/Makefile                      | 0
 {arch/efi => common}/efi/efi-image.c                   | 0
 {arch/efi => common}/efi/efi.c                         | 2 +-
 {arch/efi => common}/efi/env-efi/network/eth0-discover | 0
 6 files changed, 3 insertions(+), 2 deletions(-)
 rename {arch/efi => common}/efi/Makefile (100%)
 rename {arch/efi => common}/efi/efi-image.c (100%)
 rename {arch/efi => common}/efi/efi.c (99%)
 rename {arch/efi => common}/efi/env-efi/network/eth0-discover (100%)

diff --git a/arch/efi/Makefile b/arch/efi/Makefile
index b078bd0e3..90ae6ff8f 100644
--- a/arch/efi/Makefile
+++ b/arch/efi/Makefile
@@ -40,4 +40,4 @@ barebox.efi: $(KBUILD_BINARY) FORCE
 
 KBUILD_IMAGE := barebox.efi
 
-common-y += arch/efi/efi/ arch/efi/lib/
+common-y += arch/efi/lib/
diff --git a/common/Makefile b/common/Makefile
index 869b15a92..5f58c81d2 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -50,6 +50,7 @@ obj-$(CONFIG_BOOTCHOOSER)	+= bootchooser.o
 obj-$(CONFIG_UIMAGE)		+= image.o uimage.o
 obj-$(CONFIG_FITIMAGE)		+= image-fit.o
 obj-$(CONFIG_MENUTREE)		+= menutree.o
+obj-$(CONFIG_EFI_BOOTUP)	+= efi/
 obj-$(CONFIG_EFI_GUID)		+= efi-guid.o
 obj-$(CONFIG_EFI_DEVICEPATH)	+= efi-devicepath.o
 lwl-$(CONFIG_IMD)		+= imd-barebox.o
diff --git a/arch/efi/efi/Makefile b/common/efi/Makefile
similarity index 100%
rename from arch/efi/efi/Makefile
rename to common/efi/Makefile
diff --git a/arch/efi/efi/efi-image.c b/common/efi/efi-image.c
similarity index 100%
rename from arch/efi/efi/efi-image.c
rename to common/efi/efi-image.c
diff --git a/arch/efi/efi/efi.c b/common/efi/efi.c
similarity index 99%
rename from arch/efi/efi/efi.c
rename to common/efi/efi.c
index b14e1e823..217a6bea8 100644
--- a/arch/efi/efi/efi.c
+++ b/common/efi/efi.c
@@ -119,7 +119,7 @@ struct efi_boot {
 	void *binary;
 };
 
-struct efi_boot *efi_get_boot(int num)
+static struct efi_boot *efi_get_boot(int num)
 {
 	struct efi_boot *boot = xzalloc(sizeof(*boot));
 	void *buf, *ptr;
diff --git a/arch/efi/efi/env-efi/network/eth0-discover b/common/efi/env-efi/network/eth0-discover
similarity index 100%
rename from arch/efi/efi/env-efi/network/eth0-discover
rename to common/efi/env-efi/network/eth0-discover
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

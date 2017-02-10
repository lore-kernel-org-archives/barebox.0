Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo3.mail-out.ovh.net ([188.165.33.202])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cc8VD-0001Yd-IH
 for barebox@lists.infradead.org; Fri, 10 Feb 2017 10:32:34 +0000
Received: from player734.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id C73CAA3038
 for <barebox@lists.infradead.org>; Fri, 10 Feb 2017 11:32:08 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 10 Feb 2017 11:37:43 +0100
Message-Id: <1486723070-32548-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/9] efi: move clocksource out of arch
To: barebox@lists.infradead.org

as efi is not an arch but a boot mode from where barebox is started

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/efi/Kconfig                                        | 1 +
 arch/efi/efi/Makefile                                   | 1 -
 drivers/clocksource/Kconfig                             | 4 ++++
 drivers/clocksource/Makefile                            | 1 +
 arch/efi/efi/clocksource.c => drivers/clocksource/efi.c | 0
 5 files changed, 6 insertions(+), 1 deletion(-)
 rename arch/efi/efi/clocksource.c => drivers/clocksource/efi.c (100%)

diff --git a/arch/efi/Kconfig b/arch/efi/Kconfig
index d8d0592e5..01301c04f 100644
--- a/arch/efi/Kconfig
+++ b/arch/efi/Kconfig
@@ -7,6 +7,7 @@ config ARCH_EFI
 	select EFI_DEVICEPATH
 	select PRINTF_UUID
 	select GENERIC_FIND_NEXT_BIT
+	select CLOCKSOURCE_EFI
 
 config ARCH_TEXT_BASE
 	hex
diff --git a/arch/efi/efi/Makefile b/arch/efi/efi/Makefile
index f088c7a94..51db60b88 100644
--- a/arch/efi/efi/Makefile
+++ b/arch/efi/efi/Makefile
@@ -1,4 +1,3 @@
-obj-y += clocksource.o
 obj-y += efi.o
 obj-y += efi-device.o
 obj-y += efi-image.o
diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index f1ab554f9..ae1f10eae 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -34,6 +34,10 @@ config CLOCKSOURCE_DUMMY_RATE
 	  The option CONFIG_CLOCKSOURCE_DUMMY_RATE is used to adjust this clocksource.
 	  The bigger rate valuest makes clocksource "faster".
 
+config CLOCKSOURCE_EFI
+	bool
+	depends on ARCH_EFI
+
 config CLOCKSOURCE_MVEBU
 	bool
 	depends on ARCH_MVEBU
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index 39982ffb2..e83fdeeec 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -3,6 +3,7 @@ obj-$(CONFIG_ARM_SMP_TWD) += arm_smp_twd.o
 obj-$(CONFIG_CLOCKSOURCE_BCM283X) += bcm2835.o
 obj-$(CONFIG_CLOCKSOURCE_CLPS711X) += clps711x.o
 obj-$(CONFIG_CLOCKSOURCE_DIGIC)   += digic.o
+obj-$(CONFIG_CLOCKSOURCE_EFI) += efi.o
 obj-$(CONFIG_CLOCKSOURCE_MVEBU)   += mvebu.o
 obj-$(CONFIG_CLOCKSOURCE_NOMADIK) += nomadik.o
 obj-$(CONFIG_CLOCKSOURCE_ORION)   += orion.o
diff --git a/arch/efi/efi/clocksource.c b/drivers/clocksource/efi.c
similarity index 100%
rename from arch/efi/efi/clocksource.c
rename to drivers/clocksource/efi.c
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

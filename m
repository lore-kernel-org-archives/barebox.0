Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo177.mail-out.ovh.net ([46.105.39.154])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ce5G2-0007Hz-30
 for barebox@lists.infradead.org; Wed, 15 Feb 2017 19:28:58 +0000
Received: from player716.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo177.mail-out.ovh.net (Postfix) with ESMTP id 509152F83E
 for <barebox@lists.infradead.org>; Wed, 15 Feb 2017 20:28:36 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 15 Feb 2017 20:34:14 +0100
Message-Id: <1487187257-29082-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1487187257-29082-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170215192932.GB32649@mail.ovh.net>
 <1487187257-29082-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 06/12] x86: move bios bootup code to arch/x86/bios
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/x86/Makefile                  | 1 +
 arch/x86/bios/Makefile             | 3 +++
 arch/x86/{lib => bios}/bios_disk.S | 0
 arch/x86/{lib => bios}/memory16.S  | 0
 arch/x86/{lib => bios}/traveler.S  | 0
 arch/x86/lib/Makefile              | 3 ---
 6 files changed, 4 insertions(+), 3 deletions(-)
 create mode 100644 arch/x86/bios/Makefile
 rename arch/x86/{lib => bios}/bios_disk.S (100%)
 rename arch/x86/{lib => bios}/memory16.S (100%)
 rename arch/x86/{lib => bios}/traveler.S (100%)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index da17d70bd..640c24b62 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -40,6 +40,7 @@ endif
 common-y += $(BOARD) $(MACH)
 common-y += arch/x86/lib/
 common-y += arch/x86/boot/
+common-$(CONFIG_X86_BIOS_BRINGUP) += arch/x86/bios/
 
 # arch/x86/cpu/
 
diff --git a/arch/x86/bios/Makefile b/arch/x86/bios/Makefile
new file mode 100644
index 000000000..414ee42a4
--- /dev/null
+++ b/arch/x86/bios/Makefile
@@ -0,0 +1,3 @@
+obj-y += memory16.o
+obj-y += traveler.o
+obj-y += bios_disk.o
diff --git a/arch/x86/lib/bios_disk.S b/arch/x86/bios/bios_disk.S
similarity index 100%
rename from arch/x86/lib/bios_disk.S
rename to arch/x86/bios/bios_disk.S
diff --git a/arch/x86/lib/memory16.S b/arch/x86/bios/memory16.S
similarity index 100%
rename from arch/x86/lib/memory16.S
rename to arch/x86/bios/memory16.S
diff --git a/arch/x86/lib/traveler.S b/arch/x86/bios/traveler.S
similarity index 100%
rename from arch/x86/lib/traveler.S
rename to arch/x86/bios/traveler.S
diff --git a/arch/x86/lib/Makefile b/arch/x86/lib/Makefile
index b67629f11..6054b9e3f 100644
--- a/arch/x86/lib/Makefile
+++ b/arch/x86/lib/Makefile
@@ -3,7 +3,4 @@ obj-y += memory.o
 obj-y += gdt.o
 
 # needed, when running via a 16 bit BIOS
-obj-$(CONFIG_X86_BIOS_BRINGUP) += memory16.o
-obj-$(CONFIG_X86_BIOS_BRINGUP) += traveler.o
-obj-$(CONFIG_X86_BIOS_BRINGUP) += bios_disk.o
 obj-$(CONFIG_CMD_LINUX16) += linux_start.o
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

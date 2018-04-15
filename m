Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7fqP-0005hG-Ue
 for barebox@lists.infradead.org; Sun, 15 Apr 2018 11:29:19 +0000
Received: by mail-lf0-x241.google.com with SMTP id v207-v6so18138014lfa.10
 for <barebox@lists.infradead.org>; Sun, 15 Apr 2018 04:29:14 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 15 Apr 2018 14:28:55 +0300
Message-Id: <20180415112858.5163-8-antonynpavlov@gmail.com>
In-Reply-To: <20180415112858.5163-1-antonynpavlov@gmail.com>
References: <20180415112858.5163-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 07/10] RISC-V: erizo: add nmon image creation
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/Makefile      | 11 +++++++++++
 scripts/erizo-nmon-image |  3 +++
 2 files changed, 14 insertions(+)

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 9a3921065c..c837d4e2e4 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -73,3 +73,14 @@ CFLAGS += $(cflags-y)
 lds-y	:= arch/riscv/lib/barebox.lds
 
 CLEAN_FILES += arch/riscv/lib/barebox.lds
+
+ifeq ($(CONFIG_MACH_ERIZO),y)
+KBUILD_IMAGE := barebox.erizo.nmon
+endif
+
+quiet_cmd_erizo_nmon_image = MKIMAGE $@
+      cmd_erizo_nmon_image = $(srctree)/scripts/erizo-nmon-image $< $@ || \
+	echo "WARNING: Couldn't create erizo nmon image due to previous errors."
+
+barebox.erizo.nmon: $(KBUILD_BINARY) FORCE
+	$(call if_changed,erizo_nmon_image)
diff --git a/scripts/erizo-nmon-image b/scripts/erizo-nmon-image
new file mode 100755
index 0000000000..4f0185b6de
--- /dev/null
+++ b/scripts/erizo-nmon-image
@@ -0,0 +1,3 @@
+#!/bin/sh
+
+hexdump -v -e '/4 "%08x\n"' $1 | perl -e '$a = 0x80000000; while (<>) { chop; printf("expect \"nmon> \"\n"); printf("send \"w%08x$_\"\n", $a); $a = $a + 4; }' > $2
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

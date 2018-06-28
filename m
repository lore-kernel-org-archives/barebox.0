Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-f65.google.com ([209.85.215.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYRa9-0004EK-0q
 for barebox@lists.infradead.org; Thu, 28 Jun 2018 07:44:08 +0000
Received: by mail-lf0-f65.google.com with SMTP id u202-v6so3454274lff.9
 for <barebox@lists.infradead.org>; Thu, 28 Jun 2018 00:42:58 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 28 Jun 2018 10:39:50 +0300
Message-Id: <20180628073953.15384-10-antonynpavlov@gmail.com>
In-Reply-To: <20180628073953.15384-1-antonynpavlov@gmail.com>
References: <20180628073953.15384-1-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 09/12] RISC-V: erizo: add nmon image creation
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/Makefile      | 11 +++++++++++
 scripts/erizo-nmon-image | 10 ++++++++++
 2 files changed, 21 insertions(+)

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
index 0000000000..b56fd365c6
--- /dev/null
+++ b/scripts/erizo-nmon-image
@@ -0,0 +1,10 @@
+#!/bin/sh
+
+if [ $# != 2 ]; then
+	echo "Usage:"
+	echo "  erizo-nmon-image <input-binary-file> <output-expect-file>"
+
+	exit 1
+fi
+
+hexdump -v -e '/4 "%08x\n"' $1 | perl -e '$a = 0x80000000; while (<>) { chop; printf("expect \"nmon> \"\n"); printf("send \"w%08x$_\"\n", $a); $a = $a + 4; }' > $2
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

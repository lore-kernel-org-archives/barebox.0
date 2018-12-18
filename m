Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZ9fp-0003gi-Kx
 for barebox@lists.infradead.org; Tue, 18 Dec 2018 07:20:19 +0000
Received: by mail-lf1-x141.google.com with SMTP id i26so11456086lfc.0
 for <barebox@lists.infradead.org>; Mon, 17 Dec 2018 23:20:10 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 18 Dec 2018 10:19:40 +0300
Message-Id: <20181218071943.2560-8-antonynpavlov@gmail.com>
In-Reply-To: <20181218071943.2560-1-antonynpavlov@gmail.com>
References: <20181218071943.2560-1-antonynpavlov@gmail.com>
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
Subject: [PATCH v3 07/10] RISC-V: erizo: add nmon image creation
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/Makefile      | 11 +++++++++++
 scripts/erizo-nmon-image | 10 ++++++++++
 2 files changed, 21 insertions(+)

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index d5a392de05..643c0bc8eb 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -54,3 +54,14 @@ CFLAGS += $(cflags-y)
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
2.20.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

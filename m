Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x244.google.com ([2a00:1450:400c:c0c::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxhzg-0004TE-Lt
 for barebox@lists.infradead.org; Thu, 28 Sep 2017 23:13:30 +0000
Received: by mail-wr0-x244.google.com with SMTP id 97so3469582wrb.0
 for <barebox@lists.infradead.org>; Thu, 28 Sep 2017 16:13:05 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 29 Sep 2017 02:12:46 +0300
Message-Id: <20170928231249.4158-8-antonynpavlov@gmail.com>
In-Reply-To: <20170928231249.4158-1-antonynpavlov@gmail.com>
References: <20170928231249.4158-1-antonynpavlov@gmail.com>
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
Subject: [RFC v4 07/10] RISC-V: erizo: add nmon image creation
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/Makefile      | 11 +++++++++++
 scripts/erizo-nmon-image |  3 +++
 2 files changed, 14 insertions(+)

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 8947a1860..0b282538a 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -69,3 +69,14 @@ CFLAGS += $(cflags-y)
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
index 000000000..4f0185b6d
--- /dev/null
+++ b/scripts/erizo-nmon-image
@@ -0,0 +1,3 @@
+#!/bin/sh
+
+hexdump -v -e '/4 "%08x\n"' $1 | perl -e '$a = 0x80000000; while (<>) { chop; printf("expect \"nmon> \"\n"); printf("send \"w%08x$_\"\n", $a); $a = $a + 4; }' > $2
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

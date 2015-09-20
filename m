Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZdnRy-0002zN-Nm
 for barebox@lists.infradead.org; Sun, 20 Sep 2015 22:51:16 +0000
Received: by lagj9 with SMTP id j9so58573087lag.2
 for <barebox@lists.infradead.org>; Sun, 20 Sep 2015 15:50:51 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 21 Sep 2015 01:50:44 +0300
Message-Id: <1442789445-10778-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1442789445-10778-1-git-send-email-antonynpavlov@gmail.com>
References: <1442789445-10778-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/3] MIPS: PBL: Add missing pieces for xz compressed PBL image
To: barebox@lists.infradead.org

Also ignore piggy.shipped binary (CONFIG_IMAGE_COMPRESSION_NONE=y).

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/lib/Makefile       | 2 ++
 arch/mips/pbl/.gitignore     | 2 ++
 arch/mips/pbl/Makefile       | 1 +
 arch/mips/pbl/piggy.xzkern.S | 6 ++++++
 4 files changed, 11 insertions(+)

diff --git a/arch/mips/lib/Makefile b/arch/mips/lib/Makefile
index 71c4f6b..0145f35 100644
--- a/arch/mips/lib/Makefile
+++ b/arch/mips/lib/Makefile
@@ -12,3 +12,5 @@ obj-$(CONFIG_CPU_MIPS64) += c-r4k.o
 
 obj-$(CONFIG_CMD_MIPS_CPUINFO) += cpuinfo.o
 obj-$(CONFIG_CMD_BOOTM)	+= bootm.o
+
+pbl-y	+= ashldi3.o
diff --git a/arch/mips/pbl/.gitignore b/arch/mips/pbl/.gitignore
index 1b7f618..be604a8 100644
--- a/arch/mips/pbl/.gitignore
+++ b/arch/mips/pbl/.gitignore
@@ -1,6 +1,8 @@
 piggy.gzip
 piggy.lzo
 piggy.lz4
+piggy.xzkern
+piggy.shipped
 zbarebox
 zbarebox.bin
 zbarebox.lds
diff --git a/arch/mips/pbl/Makefile b/arch/mips/pbl/Makefile
index b03bca1..44ce3d1 100644
--- a/arch/mips/pbl/Makefile
+++ b/arch/mips/pbl/Makefile
@@ -2,6 +2,7 @@
 suffix_$(CONFIG_IMAGE_COMPRESSION_GZIP) = gzip
 suffix_$(CONFIG_IMAGE_COMPRESSION_LZO)	= lzo
 suffix_$(CONFIG_IMAGE_COMPRESSION_LZ4)	= lz4
+suffix_$(CONFIG_IMAGE_COMPRESSION_XZKERN)	= xzkern
 suffix_$(CONFIG_IMAGE_COMPRESSION_NONE)	= shipped
 
 OBJCOPYFLAGS_zbarebox.bin = -O binary
diff --git a/arch/mips/pbl/piggy.xzkern.S b/arch/mips/pbl/piggy.xzkern.S
new file mode 100644
index 0000000..edfa53b
--- /dev/null
+++ b/arch/mips/pbl/piggy.xzkern.S
@@ -0,0 +1,6 @@
+#include <asm/asm.h>
+
+	.section .data
+EXPORT(input_data)
+	.incbin	"arch/mips/pbl/piggy.xzkern"
+EXPORT(input_data_end)
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f170.google.com ([209.85.217.170])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tz8oA-0000XI-05
 for barebox@lists.infradead.org; Sat, 26 Jan 2013 16:40:46 +0000
Received: by mail-lb0-f170.google.com with SMTP id ge1so2212353lbb.15
 for <barebox@lists.infradead.org>; Sat, 26 Jan 2013 08:40:44 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 26 Jan 2013 20:52:39 +0400
Message-Id: <1359219160-18500-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1359219160-18500-1-git-send-email-antonynpavlov@gmail.com>
References: <1359219160-18500-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/4] MIPS: rzx50: use mips_add_ram0()
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/rzx50/Makefile |    1 +
 arch/mips/boards/rzx50/board.c  |   12 ++++++++++++
 2 files changed, 13 insertions(+)
 create mode 100644 arch/mips/boards/rzx50/board.c

diff --git a/arch/mips/boards/rzx50/Makefile b/arch/mips/boards/rzx50/Makefile
index ff1a655..9e14763 100644
--- a/arch/mips/boards/rzx50/Makefile
+++ b/arch/mips/boards/rzx50/Makefile
@@ -1 +1,2 @@
+obj-y += board.o
 obj-$(CONFIG_DRIVER_SERIAL_NS16550) += serial.o
diff --git a/arch/mips/boards/rzx50/board.c b/arch/mips/boards/rzx50/board.c
new file mode 100644
index 0000000..9e655ab
--- /dev/null
+++ b/arch/mips/boards/rzx50/board.c
@@ -0,0 +1,12 @@
+#include <common.h>
+#include <init.h>
+#include <sizes.h>
+#include <asm/memory.h>
+
+static int mem_init(void)
+{
+	mips_add_ram0(SZ_64M);
+
+	return 0;
+}
+mem_initcall(mem_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

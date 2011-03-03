Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHU3-0003Mn-8i
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:00 +0000
Received: by wwj40 with SMTP id 40so1440124wwj.18
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:58:57 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:16 +0100
Message-Id: <4d701d31.9009d80a.2cd3.5e72@mx.google.com>
In-Reply-To: <n>
References: <n>
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
Subject: [PATCH 02/54] Add arch/nios2/Makefile
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/Makefile

---
 arch/nios2/Makefile |   31 +++++++++++++++++++++++++++++++
 1 files changed, 31 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/Makefile

diff --git a/arch/nios2/Makefile b/arch/nios2/Makefile
new file mode 100644
index 0000000..9842c0b
--- /dev/null
+++ b/arch/nios2/Makefile
@@ -0,0 +1,31 @@
+CPPFLAGS += -fno-strict-aliasing
+
+board-$(CONFIG_GENERIC) := generic
+cpu-$(CONFIG_NIOS2)	:= nios2
+
+KALLSYMS         += --symbol-prefix=_
+
+archprepare: maketools
+
+	@echo "  SYMLINK include/nios_sopc.h -> arch/nios2/boards/$(board-y)/nios_sopc.h"
+	@ln -fsn ../arch/nios2/boards/$(board-y)/nios_sopc.h include/nios_sopc.h
+
+PHONY += maketools
+
+ifneq ($(board-y),)
+BOARD  := arch/nios2/boards/$(board-y)/
+else
+BOARD  :=
+endif
+
+ifneq ($(cpu-y),)
+CPU  := arch/nios2/cpu-$(cpu-y)/
+else
+CPU  :=
+endif
+
+common-y += $(BOARD)
+common-y += arch/nios2/lib/ $(CPU)
+
+lds-y += $(BOARD)/barebox.lds
+
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

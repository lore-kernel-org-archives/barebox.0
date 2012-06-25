Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sj8er-0007it-Il
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 12:44:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jun 2012 14:44:38 +0200
Message-Id: <1340628281-8774-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340628281-8774-1-git-send-email-s.hauer@pengutronix.de>
References: <1340628281-8774-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] openrisc: link to libgcc
To: barebox@lists.infradead.org

To get symbols like __ashrdi3.

Franck started generating these symbols from gcc assembly, which seems
to be the cleaner approach. The simpler approach for now to get additional
symbols is to link in libgcc, which is the same as the kernel does.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Franck Jullien <franck.jullien@gmail.com>
---
 arch/openrisc/Makefile |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/openrisc/Makefile b/arch/openrisc/Makefile
index fd8bbbf..1f4b175 100644
--- a/arch/openrisc/Makefile
+++ b/arch/openrisc/Makefile
@@ -1,5 +1,7 @@
 CPPFLAGS += -D__OR1K__ -ffixed-r10 -mhard-mul -mhard-div
 
+LIBGCC          := $(shell $(CC) $(KBUILD_CFLAGS) -print-libgcc-file-name)
+
 board-$(CONFIG_GENERIC) := generic
 
 KALLSYMS += --symbol-prefix=_
@@ -18,4 +20,6 @@ common-y += $(BOARD)
 common-y += arch/openrisc/lib/
 common-y += arch/openrisc/cpu/
 
+common-y          += $(LIBGCC)
+
 lds-y += arch/openrisc/cpu/barebox.lds
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

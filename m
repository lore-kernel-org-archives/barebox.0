Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZyfB0-00069O-MR
 for barebox@lists.infradead.org; Tue, 17 Nov 2015 12:15:59 +0000
Received: by lbblt2 with SMTP id lt2so4219783lbb.3
 for <barebox@lists.infradead.org>; Tue, 17 Nov 2015 04:15:36 -0800 (PST)
From: Sergey Koshechkin <serge.koshechkin@gmail.com>
Date: Tue, 17 Nov 2015 15:15:22 +0300
Message-Id: <1447762522-13533-1-git-send-email-serge.koshechkin@gmail.com>
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
Subject: [PATCH 3/3] Makefile: set -Wmissing-prototypes on all architechtures
 (was only on mips)
To: barebox@lists.infradead.org
Cc: Sergey Koshechkin <serge.koshechkin@gmail.com>

Signed-off-by: Sergey Koshechkin <serge.koshechkin@gmail.com>
---
 Makefile           | 2 +-
 arch/mips/Makefile | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 1029dc1..9a54a44 100644
--- a/Makefile
+++ b/Makefile
@@ -183,7 +183,7 @@ CONFIG_SHELL := $(shell if [ -x "$$BASH" ]; then echo $$BASH; \
 
 HOSTCC       = gcc
 HOSTCXX      = g++
-HOSTCFLAGS   = -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer
+HOSTCFLAGS   = -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer
 HOSTCXXFLAGS = -O2
 
 # Decide whether to build built-in, modular, or both.
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 75761b5..b003945 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -12,7 +12,7 @@ endif
 CPPFLAGS += -D__MIPS__ -fno-strict-aliasing -fno-merge-constants
 
 cflags-y += -G 0 -mno-abicalls -fno-pic -pipe
-cflags-y += -Wall -Wmissing-prototypes -Wstrict-prototypes \
+cflags-y += -Wall -Wstrict-prototypes \
 	-Wno-uninitialized -Wno-format -Wno-main
 
 ifdef CONFIG_32BIT
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

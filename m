Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RhiOB-0005Tc-70
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 13:57:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  2 Jan 2012 14:57:14 +0100
Message-Id: <1325512634-25797-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1325512634-25797-1-git-send-email-s.hauer@pengutronix.de>
References: <1325512634-25797-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] Makefile: disable warning: generating trampoline in object
To: barebox@lists.infradead.org

Our stack is executable, so disable this warning

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/Makefile b/Makefile
index d96fc88..c64a3cb 100644
--- a/Makefile
+++ b/Makefile
@@ -454,6 +454,8 @@ CFLAGS          += $(call cc-option, -fno-stack-protector)
 # Use make W=1 to enable this warning (see scripts/Makefile.build)
 CFLAGS += $(call cc-disable-warning, unused-but-set-variable)
 
+CFLAGS += $(call cc-disable-warning, trampolines)
+
 # arch Makefile may override CC so keep this after arch Makefile is included
 NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
 CHECKFLAGS     += $(NOSTDINC_FLAGS)
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

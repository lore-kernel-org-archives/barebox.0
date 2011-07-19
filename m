Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f43.google.com ([209.85.161.43])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QjI0X-0000PL-Ti
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 21:39:15 +0000
Received: by fxg17 with SMTP id 17so555755fxg.16
	for <barebox@lists.infradead.org>; Tue, 19 Jul 2011 14:39:12 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 20 Jul 2011 01:38:54 +0400
Message-Id: <1311111546-888-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1311111546-888-1-git-send-email-antonynpavlov@gmail.com>
References: <1311111546-888-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v7 03/15] MIPS: update libgcc-related files for barebox
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/lib/ashldi3.c |    2 +-
 arch/mips/lib/ashrdi3.c |    2 +-
 arch/mips/lib/lshrdi3.c |    2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/mips/lib/ashldi3.c b/arch/mips/lib/ashldi3.c
index beb80f3..1626891 100644
--- a/arch/mips/lib/ashldi3.c
+++ b/arch/mips/lib/ashldi3.c
@@ -1,4 +1,4 @@
-#include <linux/module.h>
+#include <module.h>
 
 #include "libgcc.h"
 
diff --git a/arch/mips/lib/ashrdi3.c b/arch/mips/lib/ashrdi3.c
index c884a91..28f5074 100644
--- a/arch/mips/lib/ashrdi3.c
+++ b/arch/mips/lib/ashrdi3.c
@@ -1,4 +1,4 @@
-#include <linux/module.h>
+#include <module.h>
 
 #include "libgcc.h"
 
diff --git a/arch/mips/lib/lshrdi3.c b/arch/mips/lib/lshrdi3.c
index dcf8d68..989ec8b 100644
--- a/arch/mips/lib/lshrdi3.c
+++ b/arch/mips/lib/lshrdi3.c
@@ -1,4 +1,4 @@
-#include <linux/module.h>
+#include <module.h>
 
 #include "libgcc.h"
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

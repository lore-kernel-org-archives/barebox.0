Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qe2JZ-0003Z5-4h
	for barebox@lists.infradead.org; Tue, 05 Jul 2011 09:53:11 +0000
Received: by bwf12 with SMTP id 12so5981878bwf.36
	for <barebox@lists.infradead.org>; Tue, 05 Jul 2011 02:53:07 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  5 Jul 2011 13:52:40 +0400
Message-Id: <1309859569-11119-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1309859569-11119-1-git-send-email-antonynpavlov@gmail.com>
References: <1309859569-11119-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 03/12 v4-draft] MIPS: update libgcc-related files for barebox
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

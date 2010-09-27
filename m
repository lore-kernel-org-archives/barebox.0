Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P06vX-00073b-D8
	for barebox@lists.infradead.org; Mon, 27 Sep 2010 06:11:05 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 27 Sep 2010 08:09:27 +0200
Message-Id: <1285567767-938-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1285567767-938-1-git-send-email-plagnioj@jcrosoft.com>
References: <1285567767-938-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] x86: fix out of tree build support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 scripts/setupmbr/setupmbr.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/setupmbr/setupmbr.c b/scripts/setupmbr/setupmbr.c
index 3cfec97..dd7f38c 100644
--- a/scripts/setupmbr/setupmbr.c
+++ b/scripts/setupmbr/setupmbr.c
@@ -42,8 +42,8 @@
 #include <assert.h>
 
 /* include the info from this barebox release */
-#include "include/generated/utsrelease.h"
-#include "arch/x86/include/asm/barebox.lds.h"
+#include "../../include/generated/utsrelease.h"
+#include "../../arch/x86/include/asm/barebox.lds.h"
 
 /** define to disable integrity tests and debug messages */
 #define NDEBUG
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

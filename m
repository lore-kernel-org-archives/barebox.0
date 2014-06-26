Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x233.google.com ([2a00:1450:400c:c00::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X05NV-0004f2-Ek
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 08:49:58 +0000
Received: by mail-wg0-f51.google.com with SMTP id x12so3310167wgg.10
 for <barebox@lists.infradead.org>; Thu, 26 Jun 2014 01:49:34 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Thu, 26 Jun 2014 10:49:14 +0200
Message-Id: <1403772557-28482-2-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 1/4] commands: include missing header
To: barebox@lists.infradead.org

When compiled for ARCH=sandbox, we get a compiler warning
if we don't include the needed header file as well.

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 commands/linux_exec.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/commands/linux_exec.c b/commands/linux_exec.c
index 741168a..590e0bf 100644
--- a/commands/linux_exec.c
+++ b/commands/linux_exec.c
@@ -16,6 +16,7 @@
  */
 
 #include <common.h>
+#include <malloc.h>
 #include <command.h>
 #include <mach/linux.h>
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

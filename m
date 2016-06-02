Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b8KjD-00022p-F0
 for barebox@lists.infradead.org; Thu, 02 Jun 2016 04:59:31 +0000
Received: by mail-pf0-x242.google.com with SMTP id f144so6541594pfa.2
 for <barebox@lists.infradead.org>; Wed, 01 Jun 2016 21:59:10 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  1 Jun 2016 21:58:31 -0700
Message-Id: <1464843531-1824-3-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1464843531-1824-1-git-send-email-andrew.smirnov@gmail.com>
References: <1464843531-1824-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 02/22] e1000: Include <net.h> in e1000.h
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

That header(e1000.h) uses a number of definitions from net.h, so for it
to be self-contained it needs to include that file. This change also
allows remove includes of net.h from other files.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/e1000.h  | 1 +
 drivers/net/e1000/eeprom.c | 1 -
 drivers/net/e1000/main.c   | 1 -
 3 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
index 82ff32e..19faf0b 100644
--- a/drivers/net/e1000/e1000.h
+++ b/drivers/net/e1000/e1000.h
@@ -17,6 +17,7 @@
  */
 
 #include <io.h>
+#include <net.h>
 
 #ifndef _E1000_HW_H_
 #define _E1000_HW_H_
diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index fb39a85..cc9199b 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -1,6 +1,5 @@
 #include <common.h>
 #include <init.h>
-#include <net.h>
 #include <malloc.h>
 
 #include "e1000.h"
diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index 552b0dc..f5eb086 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -31,7 +31,6 @@ tested on both gig copper and gig fiber boards
 
 #include <common.h>
 #include <init.h>
-#include <net.h>
 #include <malloc.h>
 #include <linux/pci.h>
 #include <dma.h>
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jxnjL-0006xb-B5
 for barebox@lists.infradead.org; Tue, 21 Jul 2020 08:34:32 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 7AE9927E0506
 for <barebox@lists.infradead.org>; Tue, 21 Jul 2020 10:34:27 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 21 Jul 2020 10:34:01 +0200
Message-Id: <20200721083401.31880-2-jmaselbas@kalray.eu>
In-Reply-To: <20200721083401.31880-1-jmaselbas@kalray.eu>
References: <20200721083401.31880-1-jmaselbas@kalray.eu>
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
Subject: [PATCH 2/2] ratp: Remove duplicated includes
To: Barebox List <barebox@lists.infradead.org>
Cc: Jules Maselbas <jmaselbas@kalray.eu>

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 common/ratp/ratp.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/common/ratp/ratp.c b/common/ratp/ratp.c
index d06a7ca96..1f9271c99 100644
--- a/common/ratp/ratp.c
+++ b/common/ratp/ratp.c
@@ -18,11 +18,9 @@
 
 #include <common.h>
 #include <command.h>
-#include <kfifo.h>
 #include <malloc.h>
 #include <init.h>
 #include <ratp.h>
-#include <command.h>
 #include <byteorder.h>
 #include <environment.h>
 #include <kfifo.h>
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

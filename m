Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0JF-0004PA-DC
 for barebox@lists.infradead.org; Fri, 24 Apr 2020 15:32:10 +0000
Received: from astat.fritz.box (a89-183-55-103.net-htp.de [89.183.55.103])
 by lynxeye.de (Postfix) with ESMTPA id A6214E74217
 for <barebox@lists.infradead.org>; Fri, 24 Apr 2020 17:31:32 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 24 Apr 2020 17:31:29 +0200
Message-Id: <20200424153129.129366-1-dev@lynxeye.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] dtc: remove redundant YYLOC global declaration
To: barebox@lists.infradead.org

Same as the upstream fix for building dtc with gcc 10.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 scripts/dtc/dtc-lexer.l | 1 -
 1 file changed, 1 deletion(-)

diff --git a/scripts/dtc/dtc-lexer.l b/scripts/dtc/dtc-lexer.l
index 5c6c3fd557d7..b3b7270300de 100644
--- a/scripts/dtc/dtc-lexer.l
+++ b/scripts/dtc/dtc-lexer.l
@@ -23,7 +23,6 @@ LINECOMMENT	"//".*\n
 #include "srcpos.h"
 #include "dtc-parser.tab.h"
 
-YYLTYPE yylloc;
 extern bool treesource_error;
 
 /* CAUTION: this will stop working if we ever use yyless() or yyunput() */
-- 
2.26.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

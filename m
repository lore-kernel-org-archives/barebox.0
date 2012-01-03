Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RhwaQ-0006R4-I9
 for barebox@lists.infradead.org; Tue, 03 Jan 2012 05:07:00 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 3ECFFDC332B
 for <barebox@lists.infradead.org>; Tue,  3 Jan 2012 06:07:55 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  3 Jan 2012 06:00:45 +0100
Message-Id: <1325566850-24432-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/6] defaultenv: source the init_board so we can keep exported
 env
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv/bin/init |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/defaultenv/bin/init b/defaultenv/bin/init
index b66f7d9..b371c42 100644
--- a/defaultenv/bin/init
+++ b/defaultenv/bin/init
@@ -21,7 +21,7 @@ if [ -e /dev/nand0 -a -n "$nand_parts" ]; then
 fi
 
 if [ -f /env/bin/init_board ]; then
-	/env/bin/init_board
+	. /env/bin/init_board
 fi
 
 echo
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo4.mail-out.ovh.net ([91.121.62.11]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SPPU9-0008Kw-G2
 for barebox@lists.infradead.org; Wed, 02 May 2012 02:40:10 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 190F0104DA83
 for <barebox@lists.infradead.org>; Wed,  2 May 2012 04:41:28 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  2 May 2012 04:18:49 +0200
Message-Id: <1335925129-15439-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] complete: eth typo fix
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
Hi,

	for to commit this when pushing the complete sorry

Best Regards,
J.
 net/eth.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/net/eth.c b/net/eth.c
index 4ea9fb0..2b492ad 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -126,7 +126,7 @@ int eth_complete(struct string_list *sl, char *instr)
 
 		string_list_add_asprintf(sl, "%s ", devname);
 	}
-	return COMPLETE_CONTNINUE;
+	return COMPLETE_CONTINUE;
 }
 #endif
 
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

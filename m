Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo3.mail-out.ovh.net ([87.98.165.232]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SMHh1-00027M-Ag
 for barebox@lists.infradead.org; Mon, 23 Apr 2012 11:44:32 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 3C4B3FFABF7
 for <barebox@lists.infradead.org>; Mon, 23 Apr 2012 13:46:03 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 23 Apr 2012 13:24:51 +0200
Message-Id: <1335180291-26991-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1335180291-26991-1-git-send-email-plagnioj@jcrosoft.com>
References: <1335180291-26991-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] menu: fix menu alloc init
To: barebox@lists.infradead.org

The auto_select is supposed to be set to -1.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/menu.h |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/include/menu.h b/include/menu.h
index 136fe61..74abcfb 100644
--- a/include/menu.h
+++ b/include/menu.h
@@ -79,6 +79,7 @@ static inline struct menu* menu_alloc(void)
 	if (m) {
 		INIT_LIST_HEAD(&m->entries);
 		m->nb_entries = 0;
+		m->auto_select = -1;
 	}
 	return m;
 }
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

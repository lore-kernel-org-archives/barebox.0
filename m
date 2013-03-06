Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo4.mail-out.ovh.net ([46.105.34.195]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UD9sj-0006UN-Px
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 08:39:27 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id EE824104E4F0
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 09:50:27 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  6 Mar 2013 09:35:01 +0100
Message-Id: <1362558901-11146-9-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1362558901-11146-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130306083347.GB4401@game.jcrosoft.org>
 <1362558901-11146-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 9/9] barebox_banner: switch to pr_info
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/version.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/version.c b/common/version.c
index 22e111a..d33f4d0 100644
--- a/common/version.c
+++ b/common/version.c
@@ -16,6 +16,6 @@ void barebox_banner (void)
 	if (!board)
 		board = CONFIG_BOARDINFO;
 
-	printf("\n\n%s\n\n", version_string);
-	printf("Board: %s\n", board);
+	pr_info("\n\n%s\n\n", version_string);
+	pr_info("Board: %s\n", board);
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

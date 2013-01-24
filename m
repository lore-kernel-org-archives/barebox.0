Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TyL4n-0000zu-Qh
 for barebox@lists.infradead.org; Thu, 24 Jan 2013 11:34:38 +0000
Received: from mail21.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 6863FDC0950
 for <barebox@lists.infradead.org>; Thu, 24 Jan 2013 12:44:24 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 24 Jan 2013 12:33:15 +0100
Message-Id: <1359027196-20458-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130124113051.GU26329@game.jcrosoft.org>
References: <20130124113051.GU26329@game.jcrosoft.org>
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
Subject: [PATCH 1/2] menu: the dependancy on process escape is wrong drop it
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/Kconfig |    1 -
 1 file changed, 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index eccae4c..0066ec4 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -403,7 +403,6 @@ config AUTO_COMPLETE
 config MENU
 	bool
 	prompt "Menu Framework"
-	depends on PROCESS_ESCAPE_SEQUENCE
 	help
 	  a menu framework that allow us to create list menu to simplify
 	  barebox and make it more user-frendly
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo1.mail-out.ovh.net ([188.165.48.29]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1StwJA-0002Gv-Bd
 for barebox@lists.infradead.org; Wed, 25 Jul 2012 07:47:19 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 75922FF9725
 for <barebox@lists.infradead.org>; Wed, 25 Jul 2012 09:52:43 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 25 Jul 2012 09:47:32 +0200
Message-Id: <1343202453-16279-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1343202453-16279-1-git-send-email-plagnioj@jcrosoft.com>
References: <1343202453-16279-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/4] version: add missing EXPORT_SYMBOL for version_string
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/version.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/version.c b/common/version.c
index 51a8e7c..a557904 100644
--- a/common/version.c
+++ b/common/version.c
@@ -4,7 +4,7 @@
 
 const char version_string[] =
 	"barebox " UTS_RELEASE " " UTS_VERSION "\n";
-
+EXPORT_SYMBOL(version_string);
 
 void barebox_banner (void)
 {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

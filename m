Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VO14s-0006cL-7o
 for barebox@lists.infradead.org; Mon, 23 Sep 2013 08:01:08 +0000
Received: from mail436.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 22713DC85BE
 for <barebox@lists.infradead.org>; Mon, 23 Sep 2013 10:00:44 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 23 Sep 2013 10:02:00 +0200
Message-Id: <1379923320-22018-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] console_simple: fix: set f_active
To: barebox@lists.infradead.org

so generic code can check if the console is enabled

and now we can use loadb & loadxy

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/console_simple.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/console_simple.c b/common/console_simple.c
index e82d9cb..0f83fa4 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -97,6 +97,8 @@ int console_register(struct console_device *newcdev)
 		newcdev->setbrg(newcdev, newcdev->baudrate);
 	}
 
+	newcdev->f_active = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
+
 	barebox_banner();
 
 	return 0;
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPSEt-0000it-JW
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 07:13:24 +0000
Received: from mail195.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id B14F4DC2034
 for <barebox@lists.infradead.org>; Fri, 27 Sep 2013 09:13:02 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 27 Sep 2013 09:14:11 +0200
Message-Id: <1380266058-18501-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130927071255.GB32444@ns203013.ovh.net>
References: <20130927071255.GB32444@ns203013.ovh.net>
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
Subject: [PATCH 1/8] console_simple: fix: set f_active
To: barebox@lists.infradead.org

so generic code can check if the console is enabled

and now we can use loadb & loadxy

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/console_simple.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/console_simple.c b/common/console_simple.c
index e1d4c85..6cb72bb 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -94,6 +94,8 @@ int console_register(struct console_device *newcdev)
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

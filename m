Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo1.mail-out.ovh.net ([178.33.104.224]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VNdK1-0004hJ-5H
 for barebox@lists.infradead.org; Sun, 22 Sep 2013 06:39:10 +0000
Received: from mail630.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 8F7791004AE8
 for <barebox@lists.infradead.org>; Sun, 22 Sep 2013 08:38:47 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 22 Sep 2013 08:39:55 +0200
Message-Id: <1379831996-11714-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] console_simple: set baudrate at register
To: barebox@lists.infradead.org

as the console is always enable

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/console_simple.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/common/console_simple.c b/common/console_simple.c
index 5c80dcd..e1d4c85 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -89,6 +89,11 @@ int console_register(struct console_device *newcdev)
 	console_list.prev = console_list.next = &newcdev->list;
 	newcdev->list.prev = newcdev->list.next = &console_list;
 
+	if (newcdev->setbrg) {
+		newcdev->baudrate = CONFIG_BAUDRATE;
+		newcdev->setbrg(newcdev, newcdev->baudrate);
+	}
+
 	barebox_banner();
 
 	return 0;
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

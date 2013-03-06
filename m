Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo4.mail-out.ovh.net ([188.165.36.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UD9sj-0006UC-3z
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 08:39:27 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id D7C9B104E4E7
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 09:50:27 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  6 Mar 2013 09:34:59 +0100
Message-Id: <1362558901-11146-7-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 7/9] net/console: switch to pr_xxx
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/netconsole.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/netconsole.c b/net/netconsole.c
index 7d0f3f4..8db8356 100644
--- a/net/netconsole.c
+++ b/net/netconsole.c
@@ -185,7 +185,7 @@ static int netconsole_init(void)
 
 	ret = console_register(cdev);
 	if (ret) {
-		printf("netconsole: registering failed with %s\n", strerror(-ret));
+		pr_err("netconsole: registering failed with %s\n", strerror(-ret));
 		kfree(priv);
 		return ret;
 	}
@@ -194,7 +194,7 @@ static int netconsole_init(void)
 	dev_add_param(&cdev->class_dev, "port", nc_port_set, NULL, 0);
 	dev_set_param(&cdev->class_dev, "port", "6666");
 
-	printf("registered netconsole as %s%d\n", cdev->class_dev.name, cdev->class_dev.id);
+	pr_info("registered netconsole as %s%d\n", cdev->class_dev.name, cdev->class_dev.id);
 
 	return 0;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

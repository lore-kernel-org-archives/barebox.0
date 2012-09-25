Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo5.mail-out.ovh.net ([178.33.107.29]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGVAr-0006Mj-T6
 for barebox@lists.infradead.org; Tue, 25 Sep 2012 13:27:42 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 5240BFFACEE
 for <barebox@lists.infradead.org>; Tue, 25 Sep 2012 15:33:40 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 25 Sep 2012 15:25:09 +0200
Message-Id: <1348579509-8255-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1348579509-8255-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120925132132.GM26553@game.jcrosoft.org>
 <1348579509-8255-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] devinfo: display device bus name
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/base/driver.c |    5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index a81a9ba..6c8fd05 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -423,9 +423,12 @@ static int do_devinfo(int argc, char *argv[])
 			       res->start, resource_size(res));
 		}
 
-		printf("driver: %s\n\n", dev->driver ?
+		printf("driver: %s\n", dev->driver ?
 				dev->driver->name : "none");
 
+		printf("bus: %s\n\n", dev->bus ?
+				dev->bus->name : "none");
+
 		if (dev->driver)
 			dev->driver->info(dev);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

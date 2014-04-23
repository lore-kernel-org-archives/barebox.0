Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WctLQ-0003g5-4Z
 for barebox@lists.infradead.org; Wed, 23 Apr 2014 09:19:56 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1WctL1-00023X-PM
 for barebox@lists.infradead.org; Wed, 23 Apr 2014 11:19:31 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <jbe@pengutronix.de>) id 1WctL3-0001ZW-10
 for barebox@lists.infradead.org; Wed, 23 Apr 2014 11:19:33 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Wed, 23 Apr 2014 11:19:25 +0200
Message-Id: <1398244766-5843-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1398244766-5843-1-git-send-email-jbe@pengutronix.de>
References: <1398244766-5843-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 2/3] net/ifup.c: avoid setting the MAC twice
To: barebox@lists.infradead.org

The command always sets the MAC address of the interface in the code path.
For the static network configuration case it sets it again, due to the
environment variable keyword ("ethaddr") is listed again in the table.
Remove this keyword from the table, because the MAC is already set.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 net/ifup.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/net/ifup.c b/net/ifup.c
index c74120c..3216ce7 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -31,7 +31,6 @@ static char *vars[] = {
 	"netmask",
 	"gateway",
 	"serverip",
-	"ethaddr",
 };
 
 static int eth_set_param(struct device_d *dev, const char *param)
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

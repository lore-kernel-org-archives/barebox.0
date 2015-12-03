Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x232.google.com ([2a00:1450:4010:c07::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a4NwB-00085v-Mr
 for barebox@lists.infradead.org; Thu, 03 Dec 2015 07:04:20 +0000
Received: by lffu14 with SMTP id u14so80307167lff.1
 for <barebox@lists.infradead.org>; Wed, 02 Dec 2015 23:03:57 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  3 Dec 2015 10:03:49 +0300
Message-Id: <1449126229-11256-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1449126229-11256-1-git-send-email-antonynpavlov@gmail.com>
References: <1449126229-11256-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/2] net: tap: fix whitespaces
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/net/tap.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/tap.c b/drivers/net/tap.c
index dfa9bc2..4277956 100644
--- a/drivers/net/tap.c
+++ b/drivers/net/tap.c
@@ -99,14 +99,15 @@ static int tap_probe(struct device_d *dev)
 
 	eth_register(edev);
 
-        return 0;
+	return 0;
+
 out:
 	free(priv);
 	return ret;
 }
 
 static struct driver_d tap_driver = {
-        .name  = "tap",
-        .probe = tap_probe,
+	.name  = "tap",
+	.probe = tap_probe,
 };
 device_platform_driver(tap_driver);
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

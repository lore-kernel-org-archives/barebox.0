Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22e.google.com ([2607:f8b0:400e:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVqwU-0003nY-2h
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 01:30:12 +0000
Received: by mail-pa0-x22e.google.com with SMTP id fl4so1522554pad.0
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 17:29:49 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 16 Feb 2016 17:29:15 -0800
Message-Id: <1455672559-25061-15-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
References: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 14/18] fec_imx: Unregister MDIO when probe fails
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/fec_imx.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 0877a53..27d816f 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -799,14 +799,16 @@ static int fec_probe(struct device_d *dev)
 
 	ret = mdiobus_register(&fec->miibus);
 	if (ret)
-		return ret;
+		goto free_receive_packets;
 
 	ret = eth_register(edev);
 	if (ret)
-		return ret;
+		goto unregister_mdio;
 
 	return 0;
 
+unregister_mdio:
+	mdiobus_unregister(&fec->miibus);
 free_receive_packets:
 	fec_free_receive_packets(fec, FEC_RBD_NUM, FEC_MAX_PKT_SIZE);
 free_xbd:
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

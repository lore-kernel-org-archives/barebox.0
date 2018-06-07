Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQuY0-0006Ic-OG
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 13:01:49 +0000
Received: by mail-pg0-x243.google.com with SMTP id r21-v6so4402249pgv.4
 for <barebox@lists.infradead.org>; Thu, 07 Jun 2018 06:01:37 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Jun 2018 06:00:25 -0700
Message-Id: <20180607130108.5339-10-andrew.smirnov@gmail.com>
In-Reply-To: <20180607130108.5339-1-andrew.smirnov@gmail.com>
References: <20180607130108.5339-1-andrew.smirnov@gmail.com>
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
Subject: [RESEND v3 09/52] net: fec_imx: Make use of IS_ALIGNED
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/fec_imx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 0ca594082..98711baa7 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -467,7 +467,7 @@ static int fec_send(struct eth_device *dev, void *eth_data, int data_length)
 		return -1;
 	}
 
-	if ((unsigned long)eth_data & (DB_DATA_ALIGNMENT - 1))
+	if (!IS_ALIGNED((unsigned long)eth_data, DB_DATA_ALIGNMENT))
 		dev_warn(&dev->dev, "Transmit data not aligned: %p!\n", eth_data);
 
 	/*
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

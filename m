Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp02.smtpout.orange.fr ([80.12.242.124]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a5Kqb-0000cS-Hh
 for barebox@lists.infradead.org; Sat, 05 Dec 2015 21:58:30 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sat,  5 Dec 2015 22:58:00 +0100
Message-Id: <1449352680-18650-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH] net: smc1111: fix ethernet mac setting
To: barebox@lists.infradead.org

Even if the setting of the MAC address does work correctly, the function
return an error.

In the former barebox version, this didn't seem to be a problem. In
v2015.11.0 version, the "ifup eth0" command fails because of this, and
as a consequence the network interface doesn't work.

The fix is straightforward.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/net/smc91111.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index 5ea1bc3..1199b37 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -1392,7 +1392,7 @@ static int smc91c111_set_ethaddr(struct eth_device *edev,
 		SMC_outw(priv, address, (ADDR0_REG + i));
 	}
 
-	return -1;
+	return 0;
 }
 
 #if (SMC_DEBUG > 2 )
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp33.i.mail.ru ([94.100.177.93])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VeqYm-000249-1E
 for barebox@lists.infradead.org; Fri, 08 Nov 2013 18:13:35 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri,  8 Nov 2013 22:12:57 +0400
Message-Id: <1383934379-27100-6-git-send-email-shc_work@mail.ru>
In-Reply-To: <1383934379-27100-1-git-send-email-shc_work@mail.ru>
References: <1383934379-27100-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 4/6] net: netx: Fix signed/unsigned arguments for printf
To: barebox@lists.infradead.org

"%d" in format string requires a signed integer.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/net/netx_eth.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/netx_eth.c b/drivers/net/netx_eth.c
index 9ca9bce..ee3ed23 100644
--- a/drivers/net/netx_eth.c
+++ b/drivers/net/netx_eth.c
@@ -86,7 +86,7 @@ static int netx_eth_send (struct eth_device *edev,
 #endif
 	val = PFIFO_REG( PFIFO_BASE(CON_FIFO_PORT_LO(xcno)) );
 	if((val & FIFO_PTR_ERROR_MASK) & 0x8)
-		printf("error sending frame: %d\n",val);
+		printf("error sending frame: %u\n", val);
 
 	return 0;
 }
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

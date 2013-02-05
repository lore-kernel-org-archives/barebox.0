Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U2fZg-0001Mq-0I
 for barebox@lists.infradead.org; Tue, 05 Feb 2013 10:16:25 +0000
Received: from mail412.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 5886EFFA7EB
 for <barebox@lists.infradead.org>; Tue,  5 Feb 2013 11:30:45 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  5 Feb 2013 11:15:06 +0100
Message-Id: <1360059306-31118-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1360059306-31118-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130205101236.GA19322@game.jcrosoft.org>
 <1360059306-31118-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/4] macb: drop non used define
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/macb.c |    4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 641b365..9d2dfd2 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -68,10 +68,6 @@ struct macb_dma_desc {
 #define RXBUF_FRAME_START	0x00004000
 #define RXBUF_FRAME_END		0x00008000
 #define RXBUF_TYPEID_MATCH	0x00400000
-#define RXBUF_ADDR4_MATCH	0x00800000
-#define RXBUF_ADDR3_MATCH	0x01000000
-#define RXBUF_ADDR2_MATCH	0x02000000
-#define RXBUF_ADDR1_MATCH	0x04000000
 #define RXBUF_BROADCAST		0x80000000
 
 #define TXBUF_FRMLEN_MASK	0x000007ff
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

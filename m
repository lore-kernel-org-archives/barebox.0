Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U5eDc-0002C5-3K
 for barebox@lists.infradead.org; Wed, 13 Feb 2013 15:25:57 +0000
Received: from mail406.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 5570BDC12D5
 for <barebox@lists.infradead.org>; Wed, 13 Feb 2013 16:36:18 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 13 Feb 2013 16:24:45 +0100
Message-Id: <1360769085-11062-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] amba: pl011: set RTS during initialization
To: barebox@lists.infradead.org
Cc: Rob Herring <rob.herring@calxeda.com>

From: Rob Herring <rob.herring@calxeda.com>

RTS is an output. Either flow control is used and you care about the state or
it is not used and you don't care. So setting it to active does no harm in
either case. This is inline with what Linux does.

Mandatory for Highbank as example

Signed-off-by: Rob Herring <rob.herring@calxeda.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/serial/amba-pl011.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/serial/amba-pl011.c b/drivers/serial/amba-pl011.c
index 58c69e5..0e07588 100644
--- a/drivers/serial/amba-pl011.c
+++ b/drivers/serial/amba-pl011.c
@@ -175,7 +175,7 @@ int pl011_init_port (struct console_device *cdev)
 	/*
 	 ** Finally, enable the UART
 	 */
-	writel((UART01x_CR_UARTEN | UART011_CR_TXE | UART011_CR_RXE),
+	writel((UART01x_CR_UARTEN | UART011_CR_TXE | UART011_CR_RXE | UART011_CR_RTS),
 	       uart->base + UART011_CR);
 
 	return 0;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

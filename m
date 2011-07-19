Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo4.mail-out.ovh.net ([188.165.55.104]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QjEBc-0005D4-CK
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 17:34:26 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 22D5CFF988A
	for <barebox@lists.infradead.org>;
	Tue, 19 Jul 2011 19:34:51 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 19 Jul 2011 19:17:27 +0200
Message-Id: <1311095849-16071-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1311095849-16071-1-git-send-email-plagnioj@jcrosoft.com>
References: <1311095849-16071-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/8] amba-pl011: fix missing switch to "struct resource"
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/serial/amba-pl011.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/serial/amba-pl011.c b/drivers/serial/amba-pl011.c
index c83983d..b5755dd 100644
--- a/drivers/serial/amba-pl011.c
+++ b/drivers/serial/amba-pl011.c
@@ -143,13 +143,13 @@ int pl011_init_port (struct console_device *cdev)
 	 ** Set the UART to be 8 bits, 1 stop bit, no parity, fifo enabled.
 	 */
 	writel((UART01x_LCRH_WLEN_8 | UART01x_LCRH_FEN),
-	       dev->map_base + UART011_LCRH);
+	       uart->base + UART011_LCRH);
 
 	/*
 	 ** Finally, enable the UART
 	 */
 	writel((UART01x_CR_UARTEN | UART011_CR_TXE | UART011_CR_RXE),
-	       dev->map_base + UART011_CR);
+	       uart->base + UART011_CR);
 
 	return 0;
 }
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SApCP-00037l-HC
 for barebox@lists.infradead.org; Thu, 22 Mar 2012 21:05:34 +0000
Received: by werp11 with SMTP id p11so2676173wer.36
 for <barebox@lists.infradead.org>; Thu, 22 Mar 2012 14:05:31 -0700 (PDT)
From: Marek Belisko <marek.belisko@open-nandra.com>
Date: Thu, 22 Mar 2012 22:05:18 +0100
Message-Id: <1332450318-26079-2-git-send-email-marek.belisko@open-nandra.com>
In-Reply-To: <1332450318-26079-1-git-send-email-marek.belisko@open-nandra.com>
References: <1332450318-26079-1-git-send-email-marek.belisko@open-nandra.com>
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
Subject: [PATCH 2/2] pxa27x_udc: Fix compilation warning.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

Fix following:
drivers/usb/gadget/pxa27x_udc.c:1482:1: warning: initialization from incompatible pointer type

Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
---
 drivers/usb/gadget/pxa27x_udc.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/pxa27x_udc.c b/drivers/usb/gadget/pxa27x_udc.c
index 5652555..26be29d 100644
--- a/drivers/usb/gadget/pxa27x_udc.c
+++ b/drivers/usb/gadget/pxa27x_udc.c
@@ -1473,9 +1473,9 @@ static struct pxa_udc memory = {
 	}
 };
 
-static int pxa27x_udc_poller(struct poller_struct *poller)
+static void pxa27x_udc_poller(struct poller_struct *poller)
 {
-	return usb_gadget_poll();
+	usb_gadget_poll();
 }
 static struct poller_struct poller = {
 	.func		= pxa27x_udc_poller
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

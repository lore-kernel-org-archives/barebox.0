Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKG0a-00052i-RO
 for barebox@lists.infradead.org; Mon, 21 Sep 2020 07:13:10 +0000
Received: from localhost.localdomain (p5ded6c86.dip0.t-ipconnect.de
 [93.237.108.134]) (Authenticated sender: ahmad@a3f.at)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id D10EBE0012
 for <barebox@lists.infradead.org>; Mon, 21 Sep 2020 07:13:06 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 21 Sep 2020 09:13:01 +0200
Message-Id: <20200921071301.561952-2-ahmad@a3f.at>
In-Reply-To: <20200921071301.561952-1-ahmad@a3f.at>
References: <20200921071301.561952-1-ahmad@a3f.at>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] USB: musb: host: fix mismatched format specifier in
 dev_dbg()
To: barebox@lists.infradead.org

Unadorned 0 is an int, but is printed used %zu. As it's just an interger
literal, just hardcode it into the string.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/usb/musb/musb_host.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/musb/musb_host.c b/drivers/usb/musb/musb_host.c
index 68d819af2cc8..be9651b04960 100644
--- a/drivers/usb/musb/musb_host.c
+++ b/drivers/usb/musb/musb_host.c
@@ -1189,8 +1189,8 @@ void musb_host_rx(struct musb *musb, u8 epnum)
 
 	pipe = urb->pipe;
 
-	dev_dbg(musb->controller, "<== hw %d rxcsr %04x, urb actual %d (+dma %zu)\n",
-		epnum, rx_csr, urb->actual_length, 0);
+	dev_dbg(musb->controller, "<== hw %d rxcsr %04x, urb actual %d (+dma 0)\n",
+		epnum, rx_csr, urb->actual_length);
 
 	/* check for errors, concurrent stall & unlink is not really
 	 * handled yet! */
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

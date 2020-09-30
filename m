Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNWPK-0002mq-9V
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 07:20:17 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 30 Sep 2020 09:20:01 +0200
Message-Id: <20200930072005.1407-8-a.fatoum@pengutronix.de>
In-Reply-To: <20200930072005.1407-1-a.fatoum@pengutronix.de>
References: <20200930072005.1407-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 08/12] USB: musb: remove dead stores
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reading the interrupt registers has a side-effect, so their value need
not be used for anythig. Storing it into a variable never read
obfuscates this however. Cast to (void) for clarity.

Reported-by: clang-analyzer-10
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/musb/musb_core.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/musb/musb_core.c b/drivers/usb/musb/musb_core.c
index 9fdef8679b88..266663a9b0ec 100644
--- a/drivers/usb/musb/musb_core.c
+++ b/drivers/usb/musb/musb_core.c
@@ -330,7 +330,6 @@ void musb_load_testpacket(struct musb *musb)
 static void musb_generic_disable(struct musb *musb)
 {
 	void __iomem	*mbase = musb->mregs;
-	u16	temp;
 
 	/* disable interrupts */
 	musb_writeb(mbase, MUSB_INTRUSBE, 0);
@@ -343,9 +342,9 @@ static void musb_generic_disable(struct musb *musb)
 	musb_writeb(mbase, MUSB_DEVCTL, 0);
 
 	/*  flush pending interrupts */
-	temp = musb_readb(mbase, MUSB_INTRUSB);
-	temp = musb_readw(mbase, MUSB_INTRTX);
-	temp = musb_readw(mbase, MUSB_INTRRX);
+	(void)musb_readb(mbase, MUSB_INTRUSB);
+	(void)musb_readw(mbase, MUSB_INTRTX);
+	(void)musb_readw(mbase, MUSB_INTRRX);
 
 }
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp38.i.mail.ru ([94.100.177.98])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVliB-0008TT-3F
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 16:41:28 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 26 Apr 2013 20:41:13 +0400
Message-Id: <1366994474-21325-8-git-send-email-shc_work@mail.ru>
In-Reply-To: <1366994474-21325-1-git-send-email-shc_work@mail.ru>
References: <1366994474-21325-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 8/9] Serial: mpc5xxx: Fix setup mode at port initialization
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/serial/serial_mpc5xxx.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/serial/serial_mpc5xxx.c b/drivers/serial/serial_mpc5xxx.c
index 532eea3..ed77807 100644
--- a/drivers/serial/serial_mpc5xxx.c
+++ b/drivers/serial/serial_mpc5xxx.c
@@ -82,12 +82,10 @@ static int __mpc5xxx_serial_init(struct mpc5xxx_psc *psc)
 	psc->sicr = 0;
 
 	/* configure parity, bit length and so on */
+	psc->mode = PSC_MODE_8_BITS | PSC_MODE_PARNONE | PSC_MODE_ONE_STOP;
 #if defined(CONFIG_MGT5100)
-	psc->mode = PSC_MODE_ERR | PSC_MODE_8_BITS | PSC_MODE_PARNONE;
-#elif defined(CONFIG_MPC5200)
-	psc->mode = PSC_MODE_8_BITS | PSC_MODE_PARNONE;
+	psc->mode |= PSC_MODE_ERR;
 #endif
-	psc->mode = PSC_MODE_ONE_STOP;
 
 	/* disable all interrupts */
 	psc->psc_imr = 0;
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

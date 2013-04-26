Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp38.i.mail.ru ([94.100.177.98])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVliC-0008Tz-OB
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 16:41:29 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 26 Apr 2013 20:41:14 +0400
Message-Id: <1366994474-21325-9-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 9/9] MCI: imx-esdhc: Remove now unneeded check
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/mci/imx-esdhc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 8194b4d..8133d2e 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -460,7 +460,7 @@ static int esdhc_init(struct mci_host *mci, struct device_d *dev)
 	regs = host->regs;
 
 	/* Enable cache snooping */
-	if (host && !host->no_snoop)
+	if (!host->no_snoop)
 		esdhc_write32(&regs->scr, 0x00000040);
 
 	/* Reset the entire host controller */
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

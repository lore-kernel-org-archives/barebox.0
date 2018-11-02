Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gIVUv-0005Nj-D9
 for barebox@lists.infradead.org; Fri, 02 Nov 2018 09:12:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  2 Nov 2018 10:11:56 +0100
Message-Id: <20181102091156.26476-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] mmc: atmel: Make write work on sama5d3
To: Barebox List <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

For some reason the sama5d3 needs a delay after a
MMC_CMD_STOP_TRANSMISSION command. Without it writing fails with:

ERROR: atmel_mci f0000000.mmc@f0000000: command/data timeout
ERROR: atmel_mci f0000000.mmc@f0000000: command/data timeout

The reason is not yet clear, so live with this hack for now.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/atmel_mci.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 0d3b245ced..122d999087 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -468,6 +468,10 @@ static int atmci_request(struct mci_host *mci, struct mci_cmd *cmd, struct mci_d
 	}
 
 	stat = atmci_poll_status(host, ATMCI_CMDRDY);
+
+	if (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
+		mdelay(5);
+
 	return atmci_cmd_done(host, stat);
 }
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

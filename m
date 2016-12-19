Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cJ4it-0000BX-Ss
 for barebox@lists.infradead.org; Mon, 19 Dec 2016 20:39:52 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Mon, 19 Dec 2016 21:39:28 +0100
Message-Id: <20161219203928.29518-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20161217204644.4419-1-u.kleine-koenig@pengutronix.de>
References: <20161217204644.4419-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] fixup! ata/ahci: simplify ahci_read_id
To: barebox@lists.infradead.org

---
 drivers/ata/ahci.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index cea031af5a84..b4161059707d 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -207,7 +207,6 @@ static int ahci_read_id(struct ata_port *ata, void *buf)
 {
 	struct ahci_port *ahci = container_of(ata, struct ahci_port, ata);
 	u8 fis[20];
-	int ret;
 
 	memset(fis, 0, sizeof(fis));
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

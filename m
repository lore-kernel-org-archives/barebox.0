Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPRqQ-0000A8-0e
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 06:48:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2013 08:47:34 +0200
Message-Id: <1380264462-27614-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380264462-27614-1-git-send-email-s.hauer@pengutronix.de>
References: <1380264462-27614-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/11] ata: ide-sff: Add missing wait for ready in write
 function
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/ide-sff.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/ata/ide-sff.c b/drivers/ata/ide-sff.c
index 0e8b744..a7f2647 100644
--- a/drivers/ata/ide-sff.c
+++ b/drivers/ata/ide-sff.c
@@ -298,6 +298,9 @@ static int __maybe_unused ide_write(struct ata_port *port,
 		rc = ata_wr_cmd(ide, ATA_CMD_WRITE);
 		if (rc != 0)
 			return rc;
+		rc = ata_wait_ready(ide, MAX_TIMEOUT);
+		if (rc != 0)
+			return rc;
 		ata_wr_sector(ide, buffer);
 		num_blocks--;
 		sector++;
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

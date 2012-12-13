Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjGex-0006hu-4o
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 21:49:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Dec 2012 22:49:04 +0100
Message-Id: <1355435350-20348-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1355435350-20348-1-git-send-email-s.hauer@pengutronix.de>
References: <1355435350-20348-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/7] ata sff: set device pointer in ata port
To: barebox@lists.infradead.org

This was forgotten in the last ata updates and leads to NULL
pointer dereferences.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/ide-sff.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/ata/ide-sff.c b/drivers/ata/ide-sff.c
index 3dd6f63..632b0e5 100644
--- a/drivers/ata/ide-sff.c
+++ b/drivers/ata/ide-sff.c
@@ -333,6 +333,7 @@ int ide_port_register(struct device_d *dev, struct ata_ioports *io)
 
 	ide->io = io;
 	ide->port.ops = &ide_ops;
+	ide->port.dev = dev;
 
 	ret = ata_port_register(&ide->port);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

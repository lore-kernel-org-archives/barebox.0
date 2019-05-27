Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVK9a-0001as-DK
 for barebox@lists.infradead.org; Mon, 27 May 2019 18:15:23 +0000
Received: by mail-pg1-x544.google.com with SMTP id w22so9466256pgi.6
 for <barebox@lists.infradead.org>; Mon, 27 May 2019 11:15:22 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 May 2019 11:14:57 -0700
Message-Id: <20190527181500.17456-5-andrew.smirnov@gmail.com>
In-Reply-To: <20190527181500.17456-1-andrew.smirnov@gmail.com>
References: <20190527181500.17456-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 5/8] ahci: Do not zero out DMA coherent memory
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Memory returned by dma_alloc_coherent() should already be zeroed
out, so there's no need to do this explicitly.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/ata/ahci.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index e6723a337..7dc09d00c 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -342,10 +342,6 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 		goto err_alloc2;
 	}
 
-	memset(ahci_port->cmd_slot, 0, AHCI_CMD_SLOT_SZ * 32);
-	memset((void *)ahci_port->rx_fis, 0, AHCI_RX_FIS_SZ);
-	memset(ahci_port->cmd_tbl, 0, AHCI_CMD_TBL_SZ);
-
 	ahci_port_debug(ahci_port, "cmd_tbl_dma = 0x%p\n", ahci_port->cmd_tbl);
 
 	ahci_port->cmd_tbl_sg = ahci_port->cmd_tbl + AHCI_CMD_TBL_HDR_SZ;
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

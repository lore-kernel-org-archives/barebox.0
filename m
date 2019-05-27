Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVK9Z-0001aU-06
 for barebox@lists.infradead.org; Mon, 27 May 2019 18:15:23 +0000
Received: by mail-pf1-x441.google.com with SMTP id y11so5096178pfm.13
 for <barebox@lists.infradead.org>; Mon, 27 May 2019 11:15:20 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 May 2019 11:14:55 -0700
Message-Id: <20190527181500.17456-3-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/8] nand: nand_mxs: Do not zero out DMA coherent memory
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Memory returned by dma_alloc_coherent() should already be zeroed
out, so there's no need to do this explicitly.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mtd/nand/nand_mxs.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 28a07d4cb..c3b07aa3f 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -1271,8 +1271,6 @@ static int mxs_nand_alloc_buffers(struct mxs_nand_info *nand_info)
 		return -ENOMEM;
 	}
 
-	memset(buf, 0, size);
-
 	nand_info->data_buf = buf;
 	nand_info->oob_buf = buf + NAND_MAX_PAGESIZE;
 
@@ -1284,7 +1282,6 @@ static int mxs_nand_alloc_buffers(struct mxs_nand_info *nand_info)
 		printf("MXS NAND: Error allocating command buffers\n");
 		return -ENOMEM;
 	}
-	memset(nand_info->cmd_buf, 0, MXS_NAND_COMMAND_BUFFER_SIZE);
 	nand_info->cmd_queue_len = 0;
 
 	return 0;
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

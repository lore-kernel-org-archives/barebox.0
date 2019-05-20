Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSn6M-0001Sm-J3
 for barebox@lists.infradead.org; Mon, 20 May 2019 18:33:35 +0000
Received: by mail-pg1-x541.google.com with SMTP id w22so7174348pgi.6
 for <barebox@lists.infradead.org>; Mon, 20 May 2019 11:33:34 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 20 May 2019 11:33:25 -0700
Message-Id: <20190520183325.22546-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] ARM: include: dma: Zero out DMA coherent memory in no-MMU case
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code to match the behavior of dma_alloc_coherent() when CONFIG_MMU
is selected.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/include/asm/dma.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/include/asm/dma.h b/arch/arm/include/asm/dma.h
index bb7e62af0..15999a524 100644
--- a/arch/arm/include/asm/dma.h
+++ b/arch/arm/include/asm/dma.h
@@ -20,6 +20,8 @@ static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 	if (dma_handle)
 		*dma_handle = (dma_addr_t)ret;
 
+	memset(ret, 0, size);
+
 	return ret;
 }
 
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

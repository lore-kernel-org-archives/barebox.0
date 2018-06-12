Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSqJG-0001EG-Q3
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 20:54:36 +0000
Received: by mail-pf0-x242.google.com with SMTP id a22-v6so146880pfo.12
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 13:54:24 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 13:53:03 -0700
Message-Id: <20180612205310.25745-48-andrew.smirnov@gmail.com>
In-Reply-To: <20180612205310.25745-1-andrew.smirnov@gmail.com>
References: <20180612205310.25745-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v5 47/54] ARM: include: dma: Add missing no-MMU stubs
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add stubs for dma_map_single() and dma_unmap_single() that were needed
for no-MMU build for ARM64 to succeed.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/include/asm/dma.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/include/asm/dma.h b/arch/arm/include/asm/dma.h
index a68886b16..bb7e62af0 100644
--- a/arch/arm/include/asm/dma.h
+++ b/arch/arm/include/asm/dma.h
@@ -34,6 +34,17 @@ static inline void dma_free_coherent(void *mem, dma_addr_t dma_handle,
 	free(mem);
 }
 
+static inline dma_addr_t dma_map_single(struct device_d *dev, void *ptr, size_t size,
+					enum dma_data_direction dir)
+{
+	return (dma_addr_t)ptr;
+}
+
+static inline void dma_unmap_single(struct device_d *dev, dma_addr_t addr, size_t size,
+				    enum dma_data_direction dir)
+{
+}
+
 static inline void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
 					   enum dma_data_direction dir)
 {
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

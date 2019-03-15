Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h4ivo-0005q7-GV
 for barebox@lists.infradead.org; Fri, 15 Mar 2019 09:15:15 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 15 Mar 2019 10:14:52 +0100
Message-Id: <20190315091453.22393-14-jbe@pengutronix.de>
In-Reply-To: <20190315091453.22393-1-jbe@pengutronix.de>
References: <20190315091453.22393-1-jbe@pengutronix.de>
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
Subject: [PATCH 14/15] pstore: ramoops: allow zapping invalid buffers in
 read-only mode
To: barebox@lists.infradead.org

From: Philipp Zabel <p.zabel@pengutronix.de>

The FS_PSTORE_RAMOOPS_RO configuration option keeps barebox from zapping
(clearing and fixing header ecc) all ramoops buffers on initialization.
It also stops barebox from zapping invalid buffers. This causes issues
when the console writing code tries to use the uninitialized, invalid
console buffer. Therefore, allow barebox to zap invalid buffers, the
kernel will do so anyway if it finds broken buffers during its
initialization.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 fs/pstore/ram.c      | 2 ++
 fs/pstore/ram_core.c | 6 ------
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index 3daec0d0d8..734d0c3c1d 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -401,7 +401,9 @@ static int ramoops_init_prz(const char *name,
 		return err;
 	}
 
+#ifndef CONFIG_FS_PSTORE_RAMOOPS_RO
 	persistent_ram_zap(*prz);
+#endif /* CONFIG_FS_PSTORE_RAMOOPS_RO */
 
 	*paddr += sz;
 
diff --git a/fs/pstore/ram_core.c b/fs/pstore/ram_core.c
index 0f7003f937..06be47ce53 100644
--- a/fs/pstore/ram_core.c
+++ b/fs/pstore/ram_core.c
@@ -330,18 +330,12 @@ void persistent_ram_free_old(struct persistent_ram_zone *prz)
 	prz->old_log_size = 0;
 }
 
-#ifdef CONFIG_FS_PSTORE_RAMOOPS_RO
-void persistent_ram_zap(struct persistent_ram_zone *prz)
-{
-}
-#else
 void persistent_ram_zap(struct persistent_ram_zone *prz)
 {
 	prz->buffer->start = 0;
 	prz->buffer->size = 0;
 	persistent_ram_update_header_ecc(prz);
 }
-#endif /* CONFIG_PSTORE_RAMOOPS_RO */
 
 static int persistent_ram_buffer_map(phys_addr_t start, phys_addr_t size,
 		struct persistent_ram_zone *prz, int memtype)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

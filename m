Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h4iva-0004sK-5H
 for barebox@lists.infradead.org; Fri, 15 Mar 2019 09:15:00 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 15 Mar 2019 10:14:43 +0100
Message-Id: <20190315091453.22393-5-jbe@pengutronix.de>
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
Subject: [PATCH 05/15] pstore/ram: Do not use stack VLA for parity workspace
To: barebox@lists.infradead.org
Cc: Kees Cook <keescook@chromium.org>

From: Kees Cook <keescook@chromium.org>

Instead of using a stack VLA for the parity workspace, preallocate a
memory region. The preallocation is done to keep from needing to perform
allocations during crash dump writing, etc. This also fixes a missed
release of librs on free.

Signed-off-by: Kees Cook <keescook@chromium.org>
[p.zabel@pengutronix.de: ported to Barebox from Linux commit f2531f1976d9]
Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 fs/pstore/ram_core.c       | 28 +++++++++++++++++++++-------
 include/linux/pstore_ram.h |  1 +
 2 files changed, 22 insertions(+), 7 deletions(-)

diff --git a/fs/pstore/ram_core.c b/fs/pstore/ram_core.c
index 9de6dc614d..ed48dcddd5 100644
--- a/fs/pstore/ram_core.c
+++ b/fs/pstore/ram_core.c
@@ -80,24 +80,23 @@ static void notrace persistent_ram_encode_rs8(struct persistent_ram_zone *prz,
 	uint8_t *data, size_t len, uint8_t *ecc)
 {
 	int i;
-	uint16_t par[prz->ecc_info.ecc_size];
 
 	/* Initialize the parity buffer */
-	memset(par, 0, sizeof(par));
-	encode_rs8(prz->rs_decoder, data, len, par, 0);
+	memset(prz->ecc_info.par, 0,
+	       prz->ecc_info.ecc_size * sizeof(prz->ecc_info.par[0]));
+	encode_rs8(prz->rs_decoder, data, len, prz->ecc_info.par, 0);
 	for (i = 0; i < prz->ecc_info.ecc_size; i++)
-		ecc[i] = par[i];
+		ecc[i] = prz->ecc_info.par[i];
 }
 
 static int persistent_ram_decode_rs8(struct persistent_ram_zone *prz,
 	void *data, size_t len, uint8_t *ecc)
 {
 	int i;
-	uint16_t par[prz->ecc_info.ecc_size];
 
 	for (i = 0; i < prz->ecc_info.ecc_size; i++)
-		par[i] = ecc[i];
-	return decode_rs8(prz->rs_decoder, data, par, len,
+		prz->ecc_info.par[i] = ecc[i];
+	return decode_rs8(prz->rs_decoder, data, prz->ecc_info.par, len,
 				NULL, 0, NULL, 0, NULL);
 }
 
@@ -210,6 +209,15 @@ static int persistent_ram_init_ecc(struct persistent_ram_zone *prz,
 		return -EINVAL;
 	}
 
+	/* allocate workspace instead of using stack VLA */
+	prz->ecc_info.par = kmalloc_array(prz->ecc_info.ecc_size,
+					  sizeof(*prz->ecc_info.par),
+					  GFP_KERNEL);
+	if (!prz->ecc_info.par) {
+		pr_err("cannot allocate ECC parity workspace\n");
+		return -ENOMEM;
+	}
+
 	prz->corrected_bytes = 0;
 	prz->bad_blocks = 0;
 
@@ -393,6 +401,12 @@ void persistent_ram_free(struct persistent_ram_zone *prz)
 		release_sdram_region(prz->res);
 		prz->res = NULL;
 	}
+	if (prz->rs_decoder) {
+		free_rs(prz->rs_decoder);
+		prz->rs_decoder = NULL;
+	}
+	kfree(prz->ecc_info.par);
+	prz->ecc_info.par = NULL;
 
 	persistent_ram_free_old(prz);
 	kfree(prz);
diff --git a/include/linux/pstore_ram.h b/include/linux/pstore_ram.h
index 5ef823a57b..ecdd229dd4 100644
--- a/include/linux/pstore_ram.h
+++ b/include/linux/pstore_ram.h
@@ -29,6 +29,7 @@ struct persistent_ram_ecc_info {
 	int ecc_size;
 	int symsize;
 	int poly;
+	uint16_t *par;
 };
 
 struct persistent_ram_zone {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

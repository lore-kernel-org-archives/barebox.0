Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Ypynx-0004Ud-L5
 for barebox@lists.infradead.org; Wed, 06 May 2015 12:52:04 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed,  6 May 2015 14:51:26 +0200
Message-Id: <1430916691-12459-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 1/6] fdt: of_unflatten_dtb(): remove left over "root" argument
 from inline doc
To: barebox@lists.infradead.org

In commit

    d384b5639fc1 of: Drop devicetree merge support

the signature of of_unflatten_dtb() was changed, but the inline documentation
was forgotten to adjust. This patch removes the left over "root" argument from
the doc.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/of/fdt.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index dfa95c38c801..88f0523260ed 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -48,7 +48,6 @@ static inline char *dt_string(struct fdt_header *f, char *strstart, uint32_t ofs
 
 /**
  * of_unflatten_dtb - unflatten a dtb binary blob
- * @root - node in which the fdt blob should be merged into or NULL
  * @infdt - the fdt blob to unflatten
  *
  * Parse a flat device tree binary blob and return a pointer to the
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

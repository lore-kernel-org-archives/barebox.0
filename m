Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vemyl-0004lH-3e
 for barebox@lists.infradead.org; Fri, 08 Nov 2013 14:24:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Nov 2013 15:23:42 +0100
Message-Id: <1383920623-9803-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] of: fdt: Fix fdt size_dt_struct
To: barebox@lists.infradead.org

size_dt_struct was calculated too big, we have to substract ofs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/fdt.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 5055eee..b136dad 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -409,10 +409,9 @@ void *of_flatten_dtb(struct device_node *node)
 	fdt.dt_nextofs = dt_next_ofs(fdt.dt_nextofs, sizeof(struct fdt_node_header));
 
 	header.size_dt_strings = cpu_to_fdt32(fdt.str_nextofs);
-	header.size_dt_struct = cpu_to_fdt32(fdt.dt_nextofs);
+	header.size_dt_struct = cpu_to_fdt32(fdt.dt_nextofs - ofs);
 
 	header.off_dt_struct = cpu_to_fdt32(ofs);
-
 	header.off_dt_strings = cpu_to_fdt32(fdt.dt_nextofs);
 
 	if (fdt.dt_size - fdt.dt_nextofs < fdt.str_nextofs) {
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

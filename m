Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vemyp-0004lL-V9
 for barebox@lists.infradead.org; Fri, 08 Nov 2013 14:24:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Nov 2013 15:23:43 +0100
Message-Id: <1383920623-9803-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1383920623-9803-1-git-send-email-s.hauer@pengutronix.de>
References: <1383920623-9803-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] of: fdt: reorder fdt_header initialization
To: barebox@lists.infradead.org

No functional change, just reorder the initialization of
the different offset/size members of fdt_header in increasing
order to make it easier to read.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/fdt.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index b136dad..3dc5d47 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -408,11 +408,11 @@ void *of_flatten_dtb(struct device_node *node)
 	nh->tag = cpu_to_fdt32(FDT_END);
 	fdt.dt_nextofs = dt_next_ofs(fdt.dt_nextofs, sizeof(struct fdt_node_header));
 
-	header.size_dt_strings = cpu_to_fdt32(fdt.str_nextofs);
+	header.off_dt_struct = cpu_to_fdt32(ofs);
 	header.size_dt_struct = cpu_to_fdt32(fdt.dt_nextofs - ofs);
 
-	header.off_dt_struct = cpu_to_fdt32(ofs);
 	header.off_dt_strings = cpu_to_fdt32(fdt.dt_nextofs);
+	header.size_dt_strings = cpu_to_fdt32(fdt.str_nextofs);
 
 	if (fdt.dt_size - fdt.dt_nextofs < fdt.str_nextofs) {
 		fdt.dt = memalign_realloc(fdt.dt, fdt.dt_size,
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

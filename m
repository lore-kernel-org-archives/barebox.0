Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YTTUY-0005Hi-Py
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 10:58:59 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu,  5 Mar 2015 11:58:30 +0100
Message-Id: <1425553111-8816-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/2] scripts: socfpga: statify sys_mgr_init_table
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

The preloader import-script misses the sys_mgr_init_table variable.
When multiple boards are build, this will lead to compile errors,
because the variable exists multiple times.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 scripts/socfpga_import_preloader | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/socfpga_import_preloader b/scripts/socfpga_import_preloader
index 9fc657e483e6..b08262cb6c83 100755
--- a/scripts/socfpga_import_preloader
+++ b/scripts/socfpga_import_preloader
@@ -29,6 +29,7 @@ copy_source() {
 	echo "	Fixing extern/static keywords..."
 	# Statify all global variables with missing static keyword
 	sed -i 's/^const /static const /g' $tgt
+	sed -i 's/^unsigned long sys_mgr_init_table/static unsigned long sys_mgr_init_table/g' $tgt
 
 	echo "	Remove unused defines..."
 	sed -i 's/\[CONFIG_HPS_PINMUX_NUM\]/\[\]/g' $tgt
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

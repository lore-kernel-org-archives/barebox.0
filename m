Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOyua-0008Ox-Si
 for barebox@lists.infradead.org; Fri, 10 May 2019 06:21:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 May 2019 08:21:33 +0200
Message-Id: <20190510062135.11534-13-s.hauer@pengutronix.de>
In-Reply-To: <20190510062135.11534-1-s.hauer@pengutronix.de>
References: <20190510062135.11534-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/14] ARM: Layerscape: TQMLS1046a: Support booting from QSPI
To: Barebox List <barebox@lists.infradead.org>

We have to build correct images suitable for QSPI, thus have to call
lspbl_spi_image instead of lspbl_image. In lowlevel code call the
xload function which detects the bootsource rather than hardcoding
SD/MMC.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqmls1046a/lowlevel.c | 2 +-
 images/Makefile.layerscape            | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/tqmls1046a/lowlevel.c b/arch/arm/boards/tqmls1046a/lowlevel.c
index 9815925599..2d0223ce89 100644
--- a/arch/arm/boards/tqmls1046a/lowlevel.c
+++ b/arch/arm/boards/tqmls1046a/lowlevel.c
@@ -257,7 +257,7 @@ static noinline __noreturn void tqmls1046a_r_entry(void)
 
 	ls1046a_errata_post_ddr();
 
-	ls1046a_esdhc_start_image(0, 0, 0);
+	ls1046a_xload_start_image(0, 0, 0);
 
 	pr_err("Booting failed\n");
 
diff --git a/images/Makefile.layerscape b/images/Makefile.layerscape
index 0f892aeb62..d20cc6a37e 100644
--- a/images/Makefile.layerscape
+++ b/images/Makefile.layerscape
@@ -37,7 +37,7 @@ $(obj)/barebox-ls1046ardb-emmc.image: $(obj)/start_ls1046ardb.pblb \
 $(obj)/barebox-ls1046ardb-qspi.image: $(obj)/start_ls1046ardb.pblb \
 		$(board)/ls1046ardb/ls1046ardb_rcw_qspi.cfg \
 		$(board)/ls1046ardb/ls1046ardb_pbi.cfg
-	$(call if_changed,lspbl_image)
+	$(call if_changed,lspbl_spi_image)
 
 image-$(CONFIG_MACH_LS1046ARDB) += barebox-ls1046ardb-sd.image barebox-ls1046ardb-qspi.image \
 	barebox-ls1046ardb-emmc.image barebox-ls1046ardb-2nd.image
@@ -54,7 +54,7 @@ $(obj)/barebox-tqmls1046a-sd.image: $(obj)/start_tqmls1046a.pblb \
 $(obj)/barebox-tqmls1046a-qspi.image: $(obj)/start_tqmls1046a.pblb \
 		$(board)/tqmls1046a/tqmls1046a_rcw_qspi_3333_5559.cfg \
 		$(board)/tqmls1046a/tqmls1046a_pbi.cfg
-	$(call if_changed,lspbl_image)
+	$(call if_changed,lspbl_spi_image)
 
 image-$(CONFIG_MACH_TQMLS1046A) += barebox-tqmls1046a-sd.image \
 	barebox-tqmls1046a-qspi.image barebox-tqmls1046a-2nd.image
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

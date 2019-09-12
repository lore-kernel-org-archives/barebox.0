Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8MLe-0002ap-5C
 for barebox@lists.infradead.org; Thu, 12 Sep 2019 10:29:13 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Sep 2019 12:29:01 +0200
Message-Id: <20190912102905.21307-3-a.fatoum@pengutronix.de>
In-Reply-To: <20190912102905.21307-1-a.fatoum@pengutronix.de>
References: <20190912102905.21307-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/7] ARM: Layerscape: don't generate second-stage 2nd.image
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

For layerscape images, barebox currently generates a second stage
barebox that lacks the RCW and PBI and as such can be bootm'd as
any other barebox ARM image. A previous commit implemented bootm
handlers for the RCW and PBI prefixed images and thus the 2nd.image
no longer serves a real purpose. Drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/Makefile.layerscape | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/images/Makefile.layerscape b/images/Makefile.layerscape
index d20cc6a37e03..806c09d8fbce 100644
--- a/images/Makefile.layerscape
+++ b/images/Makefile.layerscape
@@ -21,8 +21,6 @@ quiet_cmd_lspbl_spi_image = LSPBL-SPI-IMG $@
 			    -m $($(patsubst $(obj)/%.pblb,PBL_CODE_SIZE_%,$<)) -p $(lspbl-pbi-tmp) -i $<
 
 pbl-$(CONFIG_MACH_LS1046ARDB) += start_ls1046ardb.pbl
-$(obj)/barebox-ls1046ardb-2nd.image: $(obj)/start_ls1046ardb.pblb
-	$(call if_changed,shipped)
 
 $(obj)/barebox-ls1046ardb-sd.image: $(obj)/start_ls1046ardb.pblb \
 		$(board)/ls1046ardb/ls1046ardb_rcw_sd.cfg \
@@ -40,11 +38,9 @@ $(obj)/barebox-ls1046ardb-qspi.image: $(obj)/start_ls1046ardb.pblb \
 	$(call if_changed,lspbl_spi_image)
 
 image-$(CONFIG_MACH_LS1046ARDB) += barebox-ls1046ardb-sd.image barebox-ls1046ardb-qspi.image \
-	barebox-ls1046ardb-emmc.image barebox-ls1046ardb-2nd.image
+	barebox-ls1046ardb-emmc.image
 
 pbl-$(CONFIG_MACH_TQMLS1046A) += start_tqmls1046a.pbl
-$(obj)/barebox-tqmls1046a-2nd.image: $(obj)/start_tqmls1046a.pblb
-	$(call if_changed,shipped)
 
 $(obj)/barebox-tqmls1046a-sd.image: $(obj)/start_tqmls1046a.pblb \
 		$(board)/tqmls1046a/tqmls1046a_rcw_sd_3333_5559.cfg \
@@ -57,4 +53,4 @@ $(obj)/barebox-tqmls1046a-qspi.image: $(obj)/start_tqmls1046a.pblb \
 	$(call if_changed,lspbl_spi_image)
 
 image-$(CONFIG_MACH_TQMLS1046A) += barebox-tqmls1046a-sd.image \
-	barebox-tqmls1046a-qspi.image barebox-tqmls1046a-2nd.image
+	barebox-tqmls1046a-qspi.image
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

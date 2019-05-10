Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOyuh-000097-Bt
 for barebox@lists.infradead.org; Fri, 10 May 2019 06:21:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 May 2019 08:21:32 +0200
Message-Id: <20190510062135.11534-12-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/14] ARM: Layerscape: TQMLS1046a: unify pbi files
To: Barebox List <barebox@lists.infradead.org>

This unifies the two different pbi files. With our approach for QSPI
booting differences in the pbi files are not necessary:

- We do not do execute in place for QSPI, so we do not need different
  image execution addresses
- Setting up the QSPI clock doesn't hurt even for SD boot

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 ...mls1046a_pbi_sd.cfg => tqmls1046a_pbi.cfg} |  2 ++
 .../boards/tqmls1046a/tqmls1046a_pbi_qspi.cfg | 33 -------------------
 images/Makefile.layerscape                    |  4 +--
 3 files changed, 4 insertions(+), 35 deletions(-)
 rename arch/arm/boards/tqmls1046a/{tqmls1046a_pbi_sd.cfg => tqmls1046a_pbi.cfg} (94%)
 delete mode 100644 arch/arm/boards/tqmls1046a/tqmls1046a_pbi_qspi.cfg

diff --git a/arch/arm/boards/tqmls1046a/tqmls1046a_pbi_sd.cfg b/arch/arm/boards/tqmls1046a/tqmls1046a_pbi.cfg
similarity index 94%
rename from arch/arm/boards/tqmls1046a/tqmls1046a_pbi_sd.cfg
rename to arch/arm/boards/tqmls1046a/tqmls1046a_pbi.cfg
index 7ac1398123..0a04afa770 100644
--- a/arch/arm/boards/tqmls1046a/tqmls1046a_pbi_sd.cfg
+++ b/arch/arm/boards/tqmls1046a/tqmls1046a_pbi.cfg
@@ -1,3 +1,5 @@
+#Configure QSPI clock
+0957015c 40100000
 #Configure Scratch register
 09570600 00000000
 09570604 10000000
diff --git a/arch/arm/boards/tqmls1046a/tqmls1046a_pbi_qspi.cfg b/arch/arm/boards/tqmls1046a/tqmls1046a_pbi_qspi.cfg
deleted file mode 100644
index 32865ca2d0..0000000000
--- a/arch/arm/boards/tqmls1046a/tqmls1046a_pbi_qspi.cfg
+++ /dev/null
@@ -1,33 +0,0 @@
-#Configure QSPI clock
-0957015c 40100000
-#Configure Scratch register
-09570600 00000000
-09570604 40010000
-#Disable CCI barrier tranaction
-09570178 0000e010
-09180000 00000008
-#USB PHY frequency sel
-09570418 0000009c
-0957041c 0000009c
-09570420 0000009c
-#Serdes SATA
-09eb1300 80104e20
-09eb08dc 00502880
-#PEX gen3 link (errata A-010477)
-09570158 00000300
-89400890 01048000
-89500890 01048000
-89600890 01048000
-#PEX gen3 equalization preset values (errata A-008851)
-894008bc 01000000
-89400154 47474747
-89400158 47474747
-894008bc 00000000
-895008bc 01000000
-89500154 47474747
-89500158 47474747
-895008bc 00000000
-896008bc 01000000
-89600154 47474747
-89600158 47474747
-896008bc 00000000
diff --git a/images/Makefile.layerscape b/images/Makefile.layerscape
index 38e6648729..0f892aeb62 100644
--- a/images/Makefile.layerscape
+++ b/images/Makefile.layerscape
@@ -48,12 +48,12 @@ $(obj)/barebox-tqmls1046a-2nd.image: $(obj)/start_tqmls1046a.pblb
 
 $(obj)/barebox-tqmls1046a-sd.image: $(obj)/start_tqmls1046a.pblb \
 		$(board)/tqmls1046a/tqmls1046a_rcw_sd_3333_5559.cfg \
-		$(board)/tqmls1046a/tqmls1046a_pbi_sd.cfg
+		$(board)/tqmls1046a/tqmls1046a_pbi.cfg
 	$(call if_changed,lspbl_image)
 
 $(obj)/barebox-tqmls1046a-qspi.image: $(obj)/start_tqmls1046a.pblb \
 		$(board)/tqmls1046a/tqmls1046a_rcw_qspi_3333_5559.cfg \
-		$(board)/tqmls1046a/tqmls1046a_pbi_qspi.cfg
+		$(board)/tqmls1046a/tqmls1046a_pbi.cfg
 	$(call if_changed,lspbl_image)
 
 image-$(CONFIG_MACH_TQMLS1046A) += barebox-tqmls1046a-sd.image \
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Delivery-date: Sun, 20 Feb 2022 13:51:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlgn-004x4S-5p
	for lore@lore.pengutronix.de; Sun, 20 Feb 2022 13:51:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlgl-0002U4-2S
	for lore@pengutronix.de; Sun, 20 Feb 2022 13:51:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fUCEBirHSGDYH59dKDADSTAvSV1J+QWlpCVhffy9bCo=; b=Q4LIqO/+o6OZag
	IcCiozmOXR7v46+4ZOt9hpgyTcQ+aPhk87dDRKsVmQlktvTE6Uo9pP6e5Qg3bO+6rdfukD+wSBJRg
	fPUmrAK/mjdUhB4baYMzjdIG7a6ZDklHjU4klCEHb9ncrgbnhO9zoQ6WNV07Fhin3OxJnrcv6dcIE
	MjU/ZNTAdZTPECCRYqsuYeG9TrVu9XvqfAsn9lfYpIjl7nN5f3zRjweUyPfEwR5UuuPNI2DY8rNav
	Opfe8zm/y48ApU87FtC5r2yNq23n/uTR0Hqq7aKnwSKyLeSmVSP5X9GiOUcJ17JMCRHEzXpJ4ReRV
	TDipLCOVAgghhh9TE6Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nLlfD-001JJt-4k; Sun, 20 Feb 2022 12:50:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLld9-001I7T-JP
 for barebox@lists.infradead.org; Sun, 20 Feb 2022 12:48:02 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcs-0000Zx-4H; Sun, 20 Feb 2022 13:47:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcq-00CoPT-UT; Sun, 20 Feb 2022 13:47:40 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Xogium <contact@xogium.me>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 20 Feb 2022 13:47:16 +0100
Message-Id: <20220220124736.3052502-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
References: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220220_044759_704062_6295ABC0 
X-CRM114-Status: GOOD (  13.44  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 04/24] ARM: stm32mp: change stm32image extension to .stm32
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The .img extension for stm32mp1 images is unfortunate. The format is
deprecated and its header makes it not directly executable and thus not
suitable as-is for use in a FIP image where the BL33 is run from offset 0.

To make existence of the STM32 header evident, rename the extension
from .img to .stm32. As it's still supported by TF-A, have symlinks, so
user build script can use the old names for now.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/stm32mp.rst | 29 +++++++++++++++++------------
 arch/arm/mach-stm32mp/Kconfig    |  6 +++---
 images/Makefile.stm32mp          | 11 +++++++----
 3 files changed, 27 insertions(+), 19 deletions(-)

diff --git a/Documentation/boards/stm32mp.rst b/Documentation/boards/stm32mp.rst
index 24b7a19ceb96..2b9dc01b551a 100644
--- a/Documentation/boards/stm32mp.rst
+++ b/Documentation/boards/stm32mp.rst
@@ -10,7 +10,7 @@ The first stage boot loader (FSBL) is loaded by the ROM code into the built-in
 SYSRAM and executed. The FSBL sets up the SDRAM, install a secure monitor and
 then the second stage boot loader (SSBL) is loaded into DRAM.
 
-When building barebox, the resulting ``barebox-${board}.img`` file has the STM32
+When building barebox, the resulting ``barebox-${board}.stm32`` file has the STM32
 header preprended, so it can be loaded directly as SSBL by the ARM TF-A
 (https://github.com/ARM-software/arm-trusted-firmware). Each entry point has a
 header-less image ending in ``*.pblb`` as well.
@@ -25,18 +25,23 @@ as sole defconfig for all STM32MP boards::
 
   make ARCH=arm stm32mp_defconfig
 
-The resulting images will be placed under ``images/``:
+The resulting images will be placed under ``images/``::
 
-::
+  barebox-stm32mp15xx-dkx.stm32
+  barebox-stm32mp15x-ev1.stm32
+  barebox-stm32mp157c-lxa-mc1.stm32
+  barebox-prtt1a.stm32
+  barebox-prtt1s.stm32
+  barebox-prtt1c.stm32
+  barebox-stm32mp157c-seeed-odyssey.stm32
+  barebox-dt-2nd.img
 
-  barebox-stm32mp15xx-dkx.img # both DK1 and DK2
-  barebox-stm32mp157c-lxa-mc1.img
-  barebox-stm32mp157c-seeed-odyssey.img
-  barebox-stm32mp15x-ev1.img # stm32mp157c-ev1 and friends
+In the above output, images with a ``.stm32`` extension feature the (legacy)
+stm32image header. ``barebox-dt-2nd.img`` is a generic barebox image that
+received an external device tree.
 
-
-Flashing barebox
-----------------
+Flashing barebox (legacy stm32image)
+------------------------------------
 
 An appropriate image for a SD-Card can be generated with following
 ``genimage(1)`` config::
@@ -55,7 +60,7 @@ An appropriate image for a SD-Card can be generated with following
           size = 256K
       }
       partition ssbl {
-          image = "barebox-@STM32MP_BOARD@.img"
+          image = "barebox-@STM32MP_BOARD@.stm32"
           size = 1M
       }
       partition barebox-environment {
@@ -69,7 +74,7 @@ partitions may look like this::
 
   image @STM32MP_BOARD@.img {
       partition ssbl {
-          image = "barebox-@STM32MP_BOARD@.img"
+          image = "barebox-@STM32MP_BOARD@.stm32"
           size = 1M
       }
       partition barebox-environment {
diff --git a/arch/arm/mach-stm32mp/Kconfig b/arch/arm/mach-stm32mp/Kconfig
index d059dbda56a9..38c1a44770c9 100644
--- a/arch/arm/mach-stm32mp/Kconfig
+++ b/arch/arm/mach-stm32mp/Kconfig
@@ -14,7 +14,7 @@ config MACH_STM32MP15XX_DKX
 	select ARCH_STM32MP157
 	bool "STM32MP157 DK1 and DK2 boards"
 	help
-	  builds a single barebox-stm32mp15xx-dkx.img that can be deployed
+	  builds a single barebox-stm32mp15xx-dkx.stm32 that can be deployed
 	  as SSBL on both the stm32mp157a-dk1 and stm32mp157c-dk2
 
 config MACH_LXA_MC1
@@ -29,7 +29,7 @@ config MACH_STM32MP15X_EV1
 	select ARCH_STM32MP157
 	bool "STM32MP15X-EV1 board"
 	help
-	  builds a single barebox-stm32mp15x-ev1.img that can be deployed
+	  builds a single barebox-stm32mp15x-ev1.stm32 that can be deployed
 	  as SSBL on any STM32MP15X-EVAL platform, like the
 	  STM32MP157C-EV1
 
@@ -37,7 +37,7 @@ config MACH_PROTONIC_STM32MP1
 	select ARCH_STM32MP157
 	bool "Protonic PRTT1L family of boards"
 	help
-	  Builds all barebox-prtt1*.img that can be deployed as SSBL
+	  Builds all barebox-prtt1*.stm32 that can be deployed as SSBL
 	  on the respective PRTT1L family board
 
 endif
diff --git a/images/Makefile.stm32mp b/images/Makefile.stm32mp
index 558f8c585984..eeb5d9ecf6d3 100644
--- a/images/Makefile.stm32mp
+++ b/images/Makefile.stm32mp
@@ -6,16 +6,19 @@
 # %.stm32 - convert into STM32MP image
 # --------------------------------------
 
-$(obj)/%.stm32: $(obj)/% FORCE
+.SECONDEXPANSION:
+$(obj)/%.stm32: $(obj)/$$(FILE_$$(@F)) FORCE
+	$(Q)if [ -z $(FILE_$(@F)) ]; then echo "FILE_$(@F) empty!"; false; fi
+	@(cd $(obj) && ln -fs $(notdir $@) $(basename $(notdir $@)).img)
 	$(call if_changed,stm32_image)
 
 define build_stm32mp_image =
 $(eval
 ifeq ($($(strip $(1))), y)
 	pblb-y += $(strip $(2))
-	FILE_barebox-$(strip $(3)).img    = $(strip $(2)).pblb.stm32
-	OPTS_$(strip $(2)).pblb.stm32 = -a 0xc0100000 -e 0xc0100000 -v1
-	image-y += barebox-$(strip $(3)).img
+	FILE_barebox-$(strip $(3)).stm32  = $(strip $(2)).pblb
+	OPTS_barebox-$(strip $(3)).stm32 = -a 0xc0100000 -e 0xc0100000 -v1
+	image-y += barebox-$(strip $(3)).stm32
 endif
 )
 endef
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


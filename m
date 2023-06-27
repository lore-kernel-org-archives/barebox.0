Delivery-date: Tue, 27 Jun 2023 07:54:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qE1eX-005Qae-Uz
	for lore@lore.pengutronix.de; Tue, 27 Jun 2023 07:54:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qE1eV-0007pt-HT
	for lore@pengutronix.de; Tue, 27 Jun 2023 07:54:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ucVxNEZI/3XZugR/TRqj7cbmF91QiMZVKjHX6CPe2I=; b=sffVt+B47N63FU
	Lxwi4Qw+7riVBZSKWiQwki5irDZXabGVjiii597x5E95iGfsKouCLhnzj+3/uUkgGnXY2O2q359Ly
	2yFGW69D/1QxYk6tqXGAycmTsPWSHBWfCEjLpHBupBouWm0QZgJR3fOHBYy3LFNprdc4CeqUJTO02
	C7XNiuoZ4eUY8bHZ+GjazTNpUe3bm/f3icMInu1gRslvGWbChPpJa/P4QxcqxDM0Xcmuo2svjtCmo
	pAWobEnJvJVRjbJl0K2GbTQ8OLKgBhXlInKs/ZQSLubuHWUgsR3BFal1hE5Xl5EKzUwimzcTwDPIq
	aBgTtQYaCrTc2eAKaPVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qE1dE-00ByJo-1f;
	Tue, 27 Jun 2023 05:52:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qE1d6-00ByDs-2X
	for barebox@lists.infradead.org;
	Tue, 27 Jun 2023 05:52:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qE1d3-0007LU-SL; Tue, 27 Jun 2023 07:52:41 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qE1d3-00ANDE-7p; Tue, 27 Jun 2023 07:52:41 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qE1d2-00GOtA-14;
	Tue, 27 Jun 2023 07:52:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 27 Jun 2023 07:52:37 +0200
Message-Id: <20230627055239.3908872-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230627055239.3908872-1-a.fatoum@pengutronix.de>
References: <20230627055239.3908872-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230626_225244_822681_460A498D 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
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
Cc: uol@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master v2 5/7] ARM64: Rockchip: gracefully handle missing firmware
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Unlike the Rockchip BL31 images, the sdram-init.bin for Rockchip SoCs isn't
included via the regular firmware mechanism, but instead is passed as an
argument to the rkimg tool. Like done for regular firmware, have the Rockchip
image build rules handle missing firmware gracefully and update the
.missing-firmware file to list what firmware was missing.

Example of a build with CONFIG_MACH_RADXA_ROCK3, but with both firmware
files missing:

  $ find . -name *rock3a*.missing-firmware -exec grep -Hr . {} \;

  start_rock3a.pblb.missing-firmware:firmware/rk3568-bl31.bin
  start_rock3a.pblb.rkimg.missing-firmware:arch/arm/boards/radxa-rock3/sdram-init.bin
  barebox-rock3a.img.missing-firmware:arch/arm/boards/radxa-rock3/sdram-init.bin
  barebox-rock3a.img.missing-firmware:firmware/rk3568-bl31.bin

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/Makefile          |  2 +-
 images/Makefile.rockchip | 68 ++++++++++++++--------------------------
 2 files changed, 25 insertions(+), 45 deletions(-)

diff --git a/images/Makefile b/images/Makefile
index 9f8a9e910174..e26880de50b4 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -220,6 +220,6 @@ $(flash-list): $(image-y-path)
 
 clean-files := *.pbl *.pblb *.map start_*.imximg *.img barebox.z start_*.kwbimg \
 	start_*.kwbuartimg *.socfpgaimg *.mlo *.t20img *.t20img.cfg *.t30img \
-	*.t30img.cfg *.t124img *.t124img.cfg *.mlospi *.mlo *.mxsbs *.mxssd \
+	*.t30img.cfg *.t124img *.t124img.cfg *.mlospi *.mlo *.mxsbs *.mxssd *.rkimg \
 	start_*.simximg start_*.usimximg *.zynqimg *.image *.swapped *.missing-firmware
 clean-files += pbl.lds
diff --git a/images/Makefile.rockchip b/images/Makefile.rockchip
index 47779a7d3585..ea32af42414b 100644
--- a/images/Makefile.rockchip
+++ b/images/Makefile.rockchip
@@ -3,6 +3,24 @@
 # barebox image generation Makefile for Rockchip images
 #
 
+quiet_cmd_rkimg_image = RK-IMG $@
+      cmd_rkimg_image = $(objtree)/scripts/rkimage -o $@ $(word 2,$^) $(word 1,$^)
+
+# params: CONFIG symbol, entry point, sdram-init.bin, board identifier string
+define build_rockchip_image =
+$(eval
+ifeq ($($(strip $(1))), y)
+	pblb-y += $(strip $(2))
+	FILE_barebox-$(strip $(4)).img = $(strip $(2)).pblb.rkimg
+	image-y += barebox-$(strip $(4)).img
+
+$$(obj)/$(strip $(2)).pblb.rkimg: $$(obj)/$(strip $(2)).pblb $$(wildcard $(board)/$(strip $(3))) FORCE
+	$$(Q)$$(if $$(word 3,$$^),rm -f $$@.missing-firmware,echo arch/$(SRCARCH)/boards/$(strip $(3)) >$$@.missing-firmware)
+	$$(call if_changed,$$(if $$(word 3,$$^),rkimg_image,0size))
+endif
+)
+endef
+
 pblb-$(CONFIG_MACH_RADXA_ROCK) += start_radxa_rock
 FILE_barebox-radxa-rock.img = start_radxa_rock.pblb
 image-$(CONFIG_MACH_RADXA_ROCK) += barebox-radxa-rock.img
@@ -11,47 +29,9 @@ pblb-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += start_rk3288_phycore_som
 FILE_barebox-rk3288-phycore-som.img = start_rk3288_phycore_som.pblb
 image-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += barebox-rk3288-phycore-som.img
 
-pblb-$(CONFIG_MACH_RK3568_EVB) += start_rk3568_evb
-image-$(CONFIG_MACH_RK3568_EVB) += barebox-rk3568-evb.img
-
-pblb-$(CONFIG_MACH_RK3568_BPI_R2PRO) += start_rk3568_bpi_r2pro
-image-$(CONFIG_MACH_RK3568_BPI_R2PRO) += barebox-rk3568-bpi-r2pro.img
-
-pblb-$(CONFIG_MACH_PINE64_QUARTZ64) += start_quartz64a
-image-$(CONFIG_MACH_PINE64_QUARTZ64) += barebox-quartz64a.img
-
-pblb-$(CONFIG_MACH_RADXA_ROCK3) += start_rock3a
-image-$(CONFIG_MACH_RADXA_ROCK3) += barebox-rock3a.img
-
-pblb-$(CONFIG_MACH_RADXA_ROCK5) += start_rock5b
-image-$(CONFIG_MACH_RADXA_ROCK5) += barebox-rock5b.img
-
-pblb-$(CONFIG_MACH_RADXA_CM3) += start_radxa-cm3-io.img
-image-$(CONFIG_MACH_RADXA_CM3) += barebox-radxa-cm3-io.img
-
-quiet_cmd_rkimg_image = RK-IMG $@
-      cmd_rkimg_image = $(objtree)/scripts/rkimage -o $@ $(word 2,$^) $(word 1,$^)
-
-$(obj)/barebox-rk3568-evb.img: $(obj)/start_rk3568_evb.pblb \
-                $(board)/rockchip-rk3568-evb/sdram-init.bin
-	$(call if_changed,rkimg_image)
-
-$(obj)/barebox-rk3568-bpi-r2pro.img: $(obj)/start_rk3568_bpi_r2pro.pblb \
-                $(board)/rockchip-rk3568-bpi-r2pro/sdram-init.bin
-	$(call if_changed,rkimg_image)
-
-$(obj)/barebox-quartz64a.img: $(obj)/start_quartz64a.pblb \
-                $(board)/pine64-quartz64/sdram-init.bin
-	$(call if_changed,rkimg_image)
-
-$(obj)/barebox-rock3a.img: $(obj)/start_rock3a.pblb \
-                $(board)/radxa-rock3/sdram-init.bin
-	$(call if_changed,rkimg_image)
-
-$(obj)/barebox-rock5b.img: $(obj)/start_rock5b.pblb \
-                $(board)/radxa-rock5/sdram-init.bin
-	$(call if_changed,rkimg_image)
-
-$(obj)/barebox-radxa-cm3-io.img: $(obj)/start_radxa_cm3_io.pblb \
-                $(board)/radxa-cm3/sdram-init.bin
-	$(call if_changed,rkimg_image)
+$(call build_rockchip_image, CONFIG_MACH_RK3568_EVB, start_rk3568_evb, rockchip-rk3568-evb/sdram-init.bin, rk3568-evb)
+$(call build_rockchip_image, CONFIG_MACH_RK3568_BPI_R2PRO, start_rk3568_bpi_r2pro, rockchip-rk3568-bpi-r2pro/sdram-init.bin, rk3568-bpi-r2pro)
+$(call build_rockchip_image, CONFIG_MACH_PINE64_QUARTZ64, start_quartz64a, pine64-quartz64/sdram-init.bin, quartz64a)
+$(call build_rockchip_image, CONFIG_MACH_RADXA_ROCK3, start_rock3a, radxa-rock3/sdram-init.bin, rock3a)
+$(call build_rockchip_image, CONFIG_MACH_RADXA_ROCK5, start_rock5b, radxa-rock5/sdram-init.bin, rock5b)
+$(call build_rockchip_image, CONFIG_MACH_RADXA_CM3, start_radxa_cm3_io, radxa-cm3/sdram-init.bin, radxa-cm3-io)
-- 
2.39.2




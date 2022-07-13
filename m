Delivery-date: Wed, 13 Jul 2022 11:59:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBZ9D-005uYL-Ca
	for lore@lore.pengutronix.de; Wed, 13 Jul 2022 11:59:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBZ9A-0000Bh-8r
	for lore@pengutronix.de; Wed, 13 Jul 2022 11:59:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s7SvXmtfDaUy1w9URiy+P3GkRZSbLjUDbYADpLVi46w=; b=eEfq45l4iVR+K9xzGHXOP6xl2k
	SOB7zv7i1GSQJBET81w65VWMntwS86+vCuW0eZhi/peDLX/lGL6gkbC3UhDPSqrKYhHUJab4jmU+A
	xyhVss9Rdoh1FNsvKsSt2mhwzZj8WnJQ5QNaLVCdtglNYXj21P5t+xtcfALnS/f46ZsZu+96giexq
	zBCUn978V+0iXKTHZTwAYLrUVQ8pjAyHH8sOVeWYCGcgtS0QU0Z3tFk2EIGX0MJ51TaEdBGXqOFbP
	fTyNXOTIe3EeqkQSYHRzh4BgkRslWQ9rjdOLu5ucjbZAPNhMJJpPpMbWa/ipQu37hggbHEYyWsrX7
	oAVwg+wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBZ7u-002UyF-Au; Wed, 13 Jul 2022 09:57:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBZ7f-002UqG-I3
	for barebox@lists.infradead.org; Wed, 13 Jul 2022 09:57:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZ7d-0008DZ-M7; Wed, 13 Jul 2022 11:57:33 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZ7c-000gTd-UE; Wed, 13 Jul 2022 11:57:32 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZ7b-007spo-PW; Wed, 13 Jul 2022 11:57:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Jul 2022 11:57:28 +0200
Message-Id: <20220713095730.1878941-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220713095730.1878941-1-a.fatoum@pengutronix.de>
References: <20220713095730.1878941-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220713_025735_659130_BDC46569 
X-CRM114-Status: GOOD (  12.64  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 4/6] kbuild: gen-dtb-s: use Makefile.lib instead of duplicating cmd_lzo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

We call lzop in two places: in gen-dtb-s to generate a compressed device
tree symbol and in Makefile.lib, which is used everywhere else.
Replace the duplication in gen-dtb-s by compressing the DT outside with
the existing cmd_lzo command. This will come in handy later when
extending gen-dtb-s to support multiple compression formats.

No functional change intended.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 arch/arm/dts/Makefile  | 2 +-
 arch/mips/dts/Makefile | 2 +-
 scripts/Makefile.build | 4 ++--
 scripts/Makefile.lib   | 5 ++++-
 scripts/gen-dtb-s      | 8 ++------
 5 files changed, 10 insertions(+), 11 deletions(-)

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 34192641dd1f..4e935a763260 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -199,4 +199,4 @@ lwl-$(CONFIG_MACH_TQMLS1046A) += fsl-tqmls1046a-mbls10xxa.dtb.o
 lwl-$(CONFIG_MACH_ZEDBOARD) += zynq-zed.dtb.o
 lwl-$(CONFIG_MACH_MNT_REFORM) += imx8mq-mnt-reform2.dtb.o
 
-clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.lzo
+clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
diff --git a/arch/mips/dts/Makefile b/arch/mips/dts/Makefile
index e4cc3b44a53e..d99c4c63584d 100644
--- a/arch/mips/dts/Makefile
+++ b/arch/mips/dts/Makefile
@@ -18,4 +18,4 @@ pbl-$(CONFIG_BOARD_RZX50) += rzx50.dtb.o
 pbl-$(CONFIG_BOARD_TPLINK_MR3020) += ar9331_tl_mr3020.dtb.o
 pbl-$(CONFIG_BOARD_TPLINK_WDR4300) += ar9344-tl-wdr4300-v1.7.dtb.o
 
-clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.lzo
+clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 1614a1ac58f8..216f03677bd1 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -262,8 +262,8 @@ intermediate_targets = $(foreach sfx, $(2), \
 # %.lex.o <- %.lex.c <- %.l
 # %.tab.o <- %.tab.[ch] <- %.y
 targets += $(call intermediate_targets, .asn1.o, .asn1.c .asn1.h) \
-	   $(call intermediate_targets, .dtb.o, .dtb.S .dtb) \
-	   $(call intermediate_targets, .dtb.pbl.o, .dtb.S .dtb) \
+	   $(call intermediate_targets, .dtb.o, .dtb.S .dtb.z .dtb) \
+	   $(call intermediate_targets, .dtb.pbl.o, .dtb.S .dtb.z .dtb) \
 	   $(call intermediate_targets, .lex.o, .lex.c) \
 	   $(call intermediate_targets, .tab.o, .tab.c .tab.h)
 
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index a830364a8bab..c2301b5370da 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -333,9 +333,12 @@ endif
 # Generate an assembly file to wrap the output of the device tree compiler
 quiet_cmd_dt_S_dtb = DTB     $@
 cmd_dt_S_dtb = $(srctree)/scripts/gen-dtb-s $(subst -,_,$(*F)) $< $(CONFIG_IMD) > $@
-$(obj)/%.dtb.S: $(obj)/%.dtb $(srctree)/scripts/gen-dtb-s FORCE
+$(obj)/%.dtb.S: $(obj)/%.dtb $(obj)/%.dtb.z $(srctree)/scripts/gen-dtb-s FORCE
 	$(call if_changed,dt_S_dtb)
 
+$(obj)/%.dtb.z: $(obj)/%.dtb FORCE
+	$(call if_changed,lzo)
+
 dts-frags = $(subst $(quote),,$(CONFIG_EXTERNAL_DTS_FRAGMENTS))
 quiet_cmd_dtc = DTC     $@
 # For compatibility between make 4.2 and 4.3
diff --git a/scripts/gen-dtb-s b/scripts/gen-dtb-s
index 868d434664ec..eadf4d76f313 100755
--- a/scripts/gen-dtb-s
+++ b/scripts/gen-dtb-s
@@ -51,11 +51,7 @@ echo "__dtb_${name}_end:"
 echo ".global __dtb_${name}_end"
 echo ".balign STRUCT_ALIGNMENT"
 
-lzop -f -9 $dtb -o $dtb.lzo
-if [ $? != 0 ]; then
-	exit 1
-fi
-compressed=$(${CONFIG_SHELL} "${srctree}/scripts/file-size.sh" $dtb.lzo)
+compressed=$(${CONFIG_SHELL} "${srctree}/scripts/file-size.sh" $dtb.z)
 uncompressed=$(${CONFIG_SHELL} "${srctree}/scripts/file-size.sh" $dtb)
 
 echo "#if defined(CONFIG_USE_COMPRESSED_DTB) && defined(__PBL__)"
@@ -66,7 +62,7 @@ echo "__dtb_z_${name}_start:"
 printf ".int 0x%08x\n"  0x7b66bcbd
 printf ".int 0x%08x\n"  $compressed
 printf ".int 0x%08x\n"  $uncompressed
-echo ".incbin \"$dtb.lzo\""
+echo ".incbin \"$dtb.z\""
 echo "__dtb_z_${name}_end:"
 echo ".global __dtb_z_${name}_end"
 echo ".balign STRUCT_ALIGNMENT"
-- 
2.30.2




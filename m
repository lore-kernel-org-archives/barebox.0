Delivery-date: Fri, 10 Mar 2023 10:43:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paZI6-00Fvhf-KE
	for lore@lore.pengutronix.de; Fri, 10 Mar 2023 10:43:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paZI6-0006jw-41
	for lore@pengutronix.de; Fri, 10 Mar 2023 10:43:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=anAyyAHB/dfkI8vzRr424mBsMhMsF2s/m0Em8gJlyEE=; b=dftlm/heIL9BwX39KUZYOrAX+m
	t8xaSY4zggPavD1EpKW/z/VjLF1FMR9uOA2nLqOAritkDu2d0BS27Spjxb1awD9LicXeiWU3cnmff
	bDdC01BynoPJCMXsFtnaiHJ37+CGpfoMAIAU0BGIVRUiRfQJwswIUJP0ouvFHGoGAUdjbfzPQ0oMF
	OoOf80FtAZ1bE6pwAWnF6nhnSvukbqDY7ua1a4rs8hzfl5KBt/taMMib4NWyCSgmnKHxrAlywXzIq
	TvpgtOWFv7NgR7/7LsjLj1IwRPnFjTNrZxpQNvbqAg9XyvHXDKGu0VoOgOAiOfN+l2UjrbLiXNrjP
	1piP80fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paZGr-00DzAn-W0; Fri, 10 Mar 2023 09:42:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paZGd-00Dz4S-Jz
	for barebox@lists.infradead.org; Fri, 10 Mar 2023 09:42:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paZGa-0006LR-Qh; Fri, 10 Mar 2023 10:42:24 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1paZGa-00393r-4D; Fri, 10 Mar 2023 10:42:24 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1paZGZ-00B494-Ey; Fri, 10 Mar 2023 10:42:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Mar 2023 10:42:16 +0100
Message-Id: <20230310094222.2538259-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230310094222.2538259-1-s.hauer@pengutronix.de>
References: <20230310094222.2538259-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_014227_841152_C16352FE 
X-CRM114-Status: GOOD (  13.41  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 1/7] kbuild: Add target to build dtb overlay files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Device tree overlay files have the suffix dtso in source format
and dtbo in binary format. Add the necessary targets to build dtbo
files from dtso files and also dtbo.o files to include into the
barebox binary.
The overlay files shouldn't include the device tree snippets from
CONFIG_EXTERNAL_DTS_FRAGMENTS which makes it necessary to specify
these fragments as an argument to cmd_dtc.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Makefile.build |  2 ++
 scripts/Makefile.lib   | 10 +++++++++-
 scripts/gen-dtbo-s     | 14 ++++++++++++++
 3 files changed, 25 insertions(+), 1 deletion(-)
 create mode 100755 scripts/gen-dtbo-s

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 216f03677b..25347eee01 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -258,11 +258,13 @@ intermediate_targets = $(foreach sfx, $(2), \
 					$(filter %$(strip $(1)), $(targets))))
 # %.asn1.o <- %.asn1.[ch] <- %.asn1
 # %.dtb.o <- %.dtb.S <- %.dtb <- %.dts
+# %.dtbo.o <- %.dtbo.S <- %.dtbo <- %.dtso
 # %.dtb.pbl.o <- %.dtb.S <- %.dtb <- %.dts (Barebox only)
 # %.lex.o <- %.lex.c <- %.l
 # %.tab.o <- %.tab.[ch] <- %.y
 targets += $(call intermediate_targets, .asn1.o, .asn1.c .asn1.h) \
 	   $(call intermediate_targets, .dtb.o, .dtb.S .dtb.z .dtb) \
+	   $(call intermediate_targets, .dtbo.o, .dtbo.S .dtbo.z .dtbo) \
 	   $(call intermediate_targets, .dtb.pbl.o, .dtb.S .dtb.z .dtb) \
 	   $(call intermediate_targets, .lex.o, .lex.c) \
 	   $(call intermediate_targets, .tab.o, .tab.c .tab.h)
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 6e0d92cf75..42c59a072c 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -361,13 +361,18 @@ cmd_dt_S_dtb = $(srctree)/scripts/gen-dtb-s $(subst -,_,$(*F)) $< $(CONFIG_IMD)
 $(obj)/%.dtb.S: $(obj)/%.dtb $(obj)/%.dtb.z $(srctree)/scripts/gen-dtb-s FORCE
 	$(call if_changed,dt_S_dtb)
 
+quiet_cmd_dt_S_dtbo = DTBO    $@
+cmd_dt_S_dtbo = $(srctree)/scripts/gen-dtbo-s $(subst -,_,$(*F)) $< > $@
+$(obj)/%.dtbo.S: $(obj)/%.dtbo $(srctree)/scripts/gen-dtbo-s FORCE
+	$(call if_changed,dt_S_dtbo)
+
 $(obj)/%.dtb.z: $(obj)/%.dtb FORCE
 	$(call if_changed,$(suffix_y))
 
 dts-frags = $(subst $(quote),,$(CONFIG_EXTERNAL_DTS_FRAGMENTS))
 quiet_cmd_dtc = DTC     $@
 # For compatibility between make 4.2 and 4.3
-cmd_dtc = /usr/bin/env echo -e '$(pound)define $(subst -,_,$(*F))_dts 1\n'$(foreach f,$< $(dts-frags),'$(pound)include "$(f)"\n') | \
+cmd_dtc = /usr/bin/env echo -e '$(pound)define $(subst -,_,$(*F))_dts 1\n'$(foreach f,$< $(2),'$(pound)include "$(f)"\n') | \
 	$(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) - ; \
 	$(objtree)/scripts/dtc/dtc -O dtb -o $@ -b 0 \
 		-i $(srctree)/arch/$(SRCARCH)/dts $(DTC_FLAGS) \
@@ -376,6 +381,9 @@ cmd_dtc = /usr/bin/env echo -e '$(pound)define $(subst -,_,$(*F))_dts 1\n'$(fore
 	cat $(depfile).pre $(depfile).dtc > $(depfile)
 
 $(obj)/%.dtb: $(src)/%.dts FORCE
+	$(call if_changed_dep,dtc,$(dts-frags))
+
+$(obj)/%.dtbo: $(src)/%.dtso $(DTC) FORCE
 	$(call if_changed_dep,dtc)
 
 dtc-tmp = $(subst $(comma),_,$(dot-target).dts)
diff --git a/scripts/gen-dtbo-s b/scripts/gen-dtbo-s
new file mode 100755
index 0000000000..06f78609ed
--- /dev/null
+++ b/scripts/gen-dtbo-s
@@ -0,0 +1,14 @@
+#!/usr/bin/env bash
+
+name=$1
+dtbo=$2
+
+echo "#include <asm/barebox.lds.h>"
+
+echo ".section .dtb.rodata.${name}_dtbo,\"a\""
+echo ".balign STRUCT_ALIGNMENT"
+echo ".global __dtbo_${name}_start"
+echo "__dtbo_${name}_start:"
+echo ".incbin \"$dtbo\""
+echo "__dtbo_${name}_end:"
+echo ".global __dtbo_${name}_end"
-- 
2.30.2




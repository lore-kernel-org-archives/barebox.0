Delivery-date: Thu, 30 Nov 2023 08:05:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8b6i-00E5t4-2m
	for lore@lore.pengutronix.de;
	Thu, 30 Nov 2023 08:05:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8b6i-0000m2-TS
	for lore@pengutronix.de; Thu, 30 Nov 2023 08:05:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lM4hRqH2wUcPm2HISNQkQj5I6rocSDU/aLt3Xb+QJS8=; b=r9buFALIA6KdjOtsyJBmSsAzDD
	aM+Tq88dweyi5QUyjlo37xpbus7JO+ijPMJFl11GQyiAhB2SK74l3LJ3pJLtNRBJp73v8TSkiB3yw
	46SkxmwyaoO8HKxnpqonHpZQETemT0xx1nbK0QbCf0ypd6+pfNbPYqQjfNMr8Qi0z0pEZGmuBUlq5
	JhkYOXDHiZ9j+IXtUdpR/S5jvvZwkWAXYuRdCLy0753/Z07GIIC15zsf3riEFnMvBdpR2nqVYPZOZ
	an8TafS9Z8iFNtRV4KEhtf/Sn3C0FnE7VosKa0egMXOcG1zCTljmHzguiD5l+rCz60eNt0lcB2voq
	DFCjn8rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8b5A-00A3gA-0g;
	Thu, 30 Nov 2023 07:03:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8b56-00A3fo-2M
	for barebox@lists.infradead.org;
	Thu, 30 Nov 2023 07:03:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8b55-0000ZI-AV; Thu, 30 Nov 2023 08:03:27 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8b52-00CZZP-DK; Thu, 30 Nov 2023 08:03:24 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8b52-00DpHb-14;
	Thu, 30 Nov 2023 08:03:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 30 Nov 2023 08:03:19 +0100
Message-Id: <20231130070320.3295372-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_230328_774480_F9556FEC 
X-CRM114-Status: GOOD (  10.63  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] kbuild: don't mix overlay and normal DTC and CPP flags
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently conflate flags for *.dtb and *.dtbo targets:

  - -@ doesn't make sense for overlays, but is used there anyway when
    CONFIG_OF_OVERLAY_LIVE

  - DTC_CPP_FLAGS_basetarget.dtbo and DTC_CPP_FLAGS_basetarget.dtb are
    interchangeable

Fix this by allowing flags to be specific to either *.dtb or *.dtbo
generation.

Fixes: 3610ec11f72b ("kbuild: Add target to build dtb overlay files")
Fixes: 5b3d7e66aac0 ("kbuild: support DTC_CPP_FLAGS_file.dtbo")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/Makefile.lib | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 18b4fc1b9dd2..8aa49b1ee1b0 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -220,8 +220,7 @@ dtc_cpp_flags  = -Wp,-MD,$(depfile).pre -nostdinc                        \
 		 -I$(srctree)/include                                    \
 		 -I$(srctree)/dts/include                                \
 		 -I$(srctree)/dts/src/                                   \
-		 $(DTC_CPP_FLAGS_$(basetarget).dtb)                      \
-		 $(DTC_CPP_FLAGS_$(basetarget).dtbo)                     \
+		 $(DTC_CPP_FLAGS_$(basetarget)$(suffix $@))              \
 		 -undef -D__DTS__
 
 ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
@@ -369,7 +368,7 @@ DTC_FLAGS += -Wno-unit_address_vs_reg \
 	 -Wno-interrupt_provider
 
 ifeq ($(CONFIG_OF_OVERLAY_LIVE), y)
-DTC_FLAGS += -@
+DTC_FLAGS.dtb += -@
 endif
 
 # Generate an assembly file to wrap the output of the device tree compiler
@@ -391,7 +390,7 @@ quiet_cmd_dtc = DTC     $@
 cmd_dtc = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) \
 	-D'$(subst -,_,$(*F))_dts=1' $(foreach f,$< $(2),-include '$(f)') /dev/null ; \
 	$(objtree)/scripts/dtc/dtc -O dtb -o $@ -b 0 \
-		-i $(srctree)/arch/$(SRCARCH)/dts $(DTC_FLAGS) \
+		-i $(srctree)/arch/$(SRCARCH)/dts $(DTC_FLAGS) $(DTC_FLAGS$(suffix $@)) \
 		-i $(srctree)/dts/src/$(SRCARCH) \
 		-i $(srctree)/dts/src/arm/ti/omap \
 		-d $(depfile).dtc $(dtc-tmp) ; \
-- 
2.39.2




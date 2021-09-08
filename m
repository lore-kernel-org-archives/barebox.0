Delivery-date: Wed, 08 Sep 2021 21:01:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mO2p6-0000TD-IV
	for lore@lore.pengutronix.de; Wed, 08 Sep 2021 21:01:28 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mO2p5-0004RK-Go
	for lore@pengutronix.de; Wed, 08 Sep 2021 21:01:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WlWjTXEgn0KgVy013wjwOWDRjTVZKU2KGVptMLdrw8U=; b=4eQWOy7RDg8N+F
	wgY8aaWR/hcyNxNIYddxx+x15t3lHWFbPOYj/utqdDkvHsjQ+QiwehHZiUgPRfV//A3Gvr6Wi6Lnt
	m+Husul50OXdluM0lyIggEtANqS/YJuyxxoCttFvnlTismmRR/8zpZ8+9ckTQoHEGXBSI1pzpZ5E9
	qNXt+WcKbTT0WTkRYMgylXz+sHtwL83gTokMeDSeIQS8BtY6lJlO6qchItQfZjyaJA6ukGJPECqFW
	MbWIpr1NX5291CyHl3zCDsl72rCxyXmJ45xDdDwK1Bp8HjiDku9sT217cEn6Sc4wG5sqErynXFTUR
	A84gRZPPr0SObS7L9/HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mO2nc-007RGt-Jz; Wed, 08 Sep 2021 18:59:56 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mO2nX-007RGH-Ud
 for barebox@lists.infradead.org; Wed, 08 Sep 2021 18:59:53 +0000
Received: by mail-pf1-x434.google.com with SMTP id x7so2857805pfa.8
 for <barebox@lists.infradead.org>; Wed, 08 Sep 2021 11:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CMFTddvwbJQ0FM68fZJuYORNS6VEseRXNudKRMz4mC4=;
 b=KXxz039NPlROI/USRjpmyKQurNq0rlhzExcCleCgJpltTfpAExEmf8iM+O9+h8+hvd
 KVCqtT+rH3s3VbzmY0qMnJ2IWMabukbvVkyuHtLez2xevdpYFuBuFDcjVMnAySlxe+Qg
 UBtKdYN/dm+5tzQbjAzIelXRGOTi3297xADYVpjfoTWl8tfz+Rfrl2H3pNV3mcDeXNhs
 YdRt9pAuxLt0aeP36dnrEk2bQjozb4nsW5COfoEFYXFMr/7G3SgttZWPjVamaGIXMbSW
 IsOmTm0HGs/uFCjAoeiE8fidlwL8Jm2aS1IFKLjESeFSb1ToeBILeMwNieByHapdWSBY
 ES7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CMFTddvwbJQ0FM68fZJuYORNS6VEseRXNudKRMz4mC4=;
 b=kn+fdTg4fyn5K7minwHo/YiApUbmmwT4MqvsWwj0CEbpnCY8D3OBZyfmI6l7O22Ax7
 JjTkicZYy7V/Exy4dO3cqAps/kPOXB8c2LCR0d7X1iIFQKj4USaPIaiPU8hVgtTw/vXI
 kAWsfouGd4MGe5YWSHdMgMrI1aXCBjCAl6Xt3xgOVNz/ZxqJvh7CAqg3M+U/JMepUlQ+
 5nGqlfEnMt7hsDX9D/MefjPCkHoncBop1VMGLSHxIWlVHdx7xzFFHjcC1vmM0BdByzj2
 hVWe5xAi53K138hQOLQ8zFmv5ggrjfhAGcShErU++IlTbDEAH8onnf2R8L4jY6zW9QZX
 w2sg==
X-Gm-Message-State: AOAM5338vI1psdB/9zxYxfpch0B5Mc1kHjg/ij189Xoym8jHQnX1NP6U
 hyjWTMlr15u83B68n8/QA+8Ix0xSf9w=
X-Google-Smtp-Source: ABdhPJxIfy6r2fPIVCE826hZjgN3gjyk0CBlmLBtX13IioAqIXXU0+xZR2gN44PGvvAhkSsDOSzhVg==
X-Received: by 2002:a63:9d06:: with SMTP id i6mr5119248pgd.419.1631127589641; 
 Wed, 08 Sep 2021 11:59:49 -0700 (PDT)
Received: from zen.local (97-126-32-173.tukw.qwest.net. [97.126.32.173])
 by smtp.gmail.com with ESMTPSA id a10sm3337461pfg.20.2021.09.08.11.59.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Sep 2021 11:59:49 -0700 (PDT)
From: Trent Piepho <tpiepho@gmail.com>
X-Google-Original-From: Trent Piepho <trent.piepho@igorinstitute.com>
To: barebox@lists.infradead.org
Cc: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Wed,  8 Sep 2021 11:59:46 -0700
Message-Id: <20210908185946.638301-1-trent.piepho@igorinstitute.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210908_115952_050731_CC655518 
X-CRM114-Status: GOOD (  18.16  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,SPF_HELO_NONE,SPF_NONE
	autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH] kbuild: dtc: Allow adding device tree fragments via config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This introduces config variables that allow adding additional fragments
to the Barbox device tree(s).

Example uses are adjusting the flash partition layout, adding barebox
state varibles, or adding an I2C device.  These can be now be done with
build configuration only, without needing to patch the existing dts
files in the Barebox source.

The advantage is greater when an external build system, such as Yocto or
Buildroot, is being used to build Barebox.  The build system can drop in
a dts fragment to partition flash and build from unaltered Barebox
source.  This avoids the need for cumbersome maintenance of patch files
to modify Barebox's source for each flash partition layout.

Two variables are added, which function identically.  The idea is that
one can be used in Barebox in-tree or out-of-tree defconfig files and
the other injected by an external build system.  Injecting the latter
variable will not clobber the value of the former.

Preprocessing the dts file gains another layer, where a generated dts
source consisting of an include directive for the original dts source is
followed by more includes for each fragment.  This is piped to the
existing preprocessor call on stdin to avoid another temporary file.
cpp/dtc will correctly identify errors in the source files they occur
in.  The -MT option is used so the cpp auto-dependencies reference the
original dts source and not the generated code passed on stdin.

Signed-off-by: Trent Piepho <trent.piepho@igorinstitute.com>
---
 common/Kconfig       | 20 ++++++++++++++++++++
 scripts/Makefile.lib |  7 ++++++-
 2 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index a9feae2ae..1b95ded87 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1091,6 +1091,26 @@ config SYSTEMD_OF_WATCHDOG
 	  in the kernel device tree. If the kernel is booted without a device
 	  tree or with one that lacks aliases, nothing is added.
 
+config EXTRA_DTS_FRAGMENTS
+	string "additional dts file fragments"
+	depends on OFTREE
+	help
+	  List of dts fragment files that will be appended to Barebox's device
+	  tree(s) source when building the dtb file(s).  If multiple files are
+	  listed, they will be appended in order.  Relative filenames will use
+	  the dtc include search path.
+
+config EXTERNAL_DTS_FRAGMENTS
+	string "external dts file fragments"
+	depends on OFTREE
+	help
+	  This is like EXTRA_DTS_FRAGMENTS, but it's intended that it not be put
+	  into Barebox defconfig files and instead used by an external build
+	  system, like Yocto or buildroot, to add dts fragments from outside the
+	  Barebox source tree into the Barebox build.  The build system can
+	  override this variable without modifying anything set by the Barebox
+	  defconfig.
+
 menu "OP-TEE loading"
 
 config OPTEE_SIZE
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 80d76b177..093dd3cdd 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -201,6 +201,7 @@ cpp_flags      = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(__cpp_flags)
 ld_flags       = $(KBUILD_LDFLAGS) $(ldflags-y)
 
 dtc_cpp_flags  = -Wp,-MD,$(depfile).pre -nostdinc                        \
+		 -Wp,-MT,$(basename $(notdir $@)).o                      \
 		 -I$(srctree)/arch/$(SRCARCH)/dts/include		 \
 		 -I$(srctree)/dts/include                                \
 		 -I$(srctree)/include                                    \
@@ -335,8 +336,12 @@ cmd_dt_S_dtb = $(srctree)/scripts/gen-dtb-s $(subst -,_,$(*F)) $< $(CONFIG_IMD)
 $(obj)/%.dtb.S: $(obj)/%.dtb $(srctree)/scripts/gen-dtb-s FORCE
 	$(call if_changed,dt_S_dtb)
 
+dts-frags = $(subst $(quote),,$(CONFIG_EXTRA_DTS_FRAGMENTS) $(CONFIG_EXTERNAL_DTS_FRAGMENTS))
 quiet_cmd_dtc = DTC     $@
-cmd_dtc = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
+# For compatibility between make 4.2 and 4.3
+H := \#
+cmd_dtc = /bin/echo -e $(foreach f,$< $(dts-frags),'$(H)include "$(f)"\n') | \
+	$(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) - ; \
 	$(objtree)/scripts/dtc/dtc -O dtb -o $@ -b 0 \
 		-i $(srctree)/arch/$(SRCARCH)/dts $(DTC_FLAGS) \
 		-i $(srctree)/dts/src/$(SRCARCH) \
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


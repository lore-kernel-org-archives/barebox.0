Delivery-date: Wed, 22 Sep 2021 20:15:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mT6mL-0008SG-Mb
	for lore@lore.pengutronix.de; Wed, 22 Sep 2021 20:15:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mT6mK-0001WJ-Jm
	for lore@pengutronix.de; Wed, 22 Sep 2021 20:15:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cmMQg9T3XdzuaGw9pwzUWXZAsR2YJn9oPOcLWUmq+Ng=; b=mBFDiJ+D+rJp9g
	G19sG+ZdRwK3tA1JVAK/CoXkwqK44/YuJedWWJzMNxX2pfhRGH9Q8t2dH4sCS1W65W7yA/TaJdF81
	cHHI8Siname8bestOnzjpxwz0oMdDXxXsKgLVCfeP4PnmsfPR6lYRqM1PIllPAKJLmWjNAw7r6Px5
	LK+brg0QeSuD9UfO6AxBZD4ZcWkJobE7cEYbgCm/XaZ8HyxkgTrwvEL1N6pespR/n4mtdFlmxI2vJ
	o/JVZz5kSAkIZMDoA+nq7mn3Jyq2x2s+qvehljwT7j41dVKVFUSq9wyZeJ09cE3BGnDivIiUcGCoO
	D1zqlLp4Oc5oyg5eYwqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mT6kf-009Pln-Jy; Wed, 22 Sep 2021 18:13:49 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mT6ka-009PlU-AN
 for barebox@lists.infradead.org; Wed, 22 Sep 2021 18:13:45 +0000
Received: by mail-pf1-x434.google.com with SMTP id m26so3437662pff.3
 for <barebox@lists.infradead.org>; Wed, 22 Sep 2021 11:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IeuXgG1JFYMcH+T1Xi/6UVYErpbSSnWx/r58sJUVBgY=;
 b=p1nYgAWXTjlP1UUVhTgUneRIbZe6amNElfkdzWZTRGHHp8JO9sy15ZkTwKsk54jAex
 nH5MJQzncHWXFsoI4YnC5ndelH2p4vFhRlyBGwKOBJmsrx6XZGHuSefaFLrodnCkUdWj
 m9cTVmiDG/48xrKP/b7SgMvTIBAnxGtMsXY3Vt9qiXjDu1wV3SlM90uGnf7p4vWdbusf
 7WR2tVtVBCQe/3UKRFFyf8s+/l22PnPujV//WFvk0rtAmodjm0G3OjFvoy8vF8Gxduq0
 4rxnswyfkEqSsCS3HFGmIsbhA51Iv8cxTGSlGU0wi93g4Ot1j1xfLb+awH4SrJWHlap4
 6xhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IeuXgG1JFYMcH+T1Xi/6UVYErpbSSnWx/r58sJUVBgY=;
 b=L7eRxV5UNUwheKmBlCZhjZacHvpJAsh9oHqQGWXhcnT9RGdF+fouaDBtgRUGANN/28
 JkhYOqsyggjjwPYsNIGLmoIT2zXVrooyf2o4EPsffCrHQhWJGklwCRj8onooLHBYBj1t
 5dc1aGx6PsCxH6c7/YuKD2T1NiiVTTly8b0EQyLm8u0HSPtskTxBZPBaW/9BzJszi1nK
 3F5fYFukG4AEENxSODeEeceJAQxWj8+VnNh7XUHoLxvvUBiPx21l2RIBO1fhWxRFc0zR
 2339XwsVvD6MzSGlSY05w9A2OH51fe9Mu73VAeGvhCtFLIEm1QbV+Hiwh7/LSO70MIBg
 NcjQ==
X-Gm-Message-State: AOAM530Qn8GB1ZlOBz9763Nd5MJdADDk5AczHJklm9yviZAytpMjAkmI
 NrttCComJI3SDZy7WwcTQfk1I0fz4vxRX1ek
X-Google-Smtp-Source: ABdhPJyKPqo9F7eTfr93ubo7ltJwzhsmqfcfA563WESqSFA3e3Y43WQhe41szCbZCrsVjKZiFLhSzA==
X-Received: by 2002:a63:fb49:: with SMTP id w9mr253052pgj.156.1632334421342;
 Wed, 22 Sep 2021 11:13:41 -0700 (PDT)
Received: from zen.local (97-113-90-42.tukw.qwest.net. [97.113.90.42])
 by smtp.gmail.com with ESMTPSA id u9sm3537845pgp.83.2021.09.22.11.13.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 11:13:40 -0700 (PDT)
From: Trent Piepho <trent.piepho@igorinstitute.com>
To: barebox@lists.infradead.org
Cc: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Wed, 22 Sep 2021 11:13:36 -0700
Message-Id: <20210922181336.1350460-1-trent.piepho@igorinstitute.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_111344_587769_4B08225C 
X-CRM114-Status: GOOD (  18.22  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/1] kbuild: dtc: Allow adding device tree fragments via
 config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This introduces a config variable that allows adding additional fragments
to the Barebox device tree(s).

Example uses are adjusting the flash partition layout, adding barebox
state variables, or adding an I2C device.  These can be now be done with
build configuration only, without needing to patch the existing dts
files in the Barebox source.

The advantage is greater when an external build system, such as Yocto or
Buildroot, is being used to build Barebox.  The build system can drop in
a dts fragment to partition flash and build from unaltered Barebox
source.  This avoids the need for cumbersome maintenance of patch files
to modify Barebox's source for each flash partition layout.

Preprocessing the dts file gains another layer, where a generated dts
source consisting of an include directive for the original dts source is
followed by more includes for each fragment.  This is piped to the
existing preprocessor call on stdin to avoid another temporary file.
cpp/dtc will correctly identify errors in the source files they occur
in.  The -MT option is used so the cpp auto-dependencies reference the
original dts source and not the generated code passed on stdin.

A preprocessor macro named after the base dts file, e.g. foo-bar.dts
will define foo_bar_dts, will be defined so that the fragments can
possibly operate differently based on which image's dts is being built.

Signed-off-by: Trent Piepho <trent.piepho@igorinstitute.com>
---
Changes from v1:
  - Remove 2nd config variable for in-tree fragments.
  - Add macro to preproccessed dts

 common/Kconfig       | 18 ++++++++++++++++++
 scripts/Makefile.lib |  8 +++++++-
 2 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index a9feae2ae..6fdc14148 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1091,6 +1091,24 @@ config SYSTEMD_OF_WATCHDOG
 	  in the kernel device tree. If the kernel is booted without a device
 	  tree or with one that lacks aliases, nothing is added.
 
+config EXTERNAL_DTS_FRAGMENTS
+	string "external dts file fragments"
+	depends on OFTREE
+	help
+	  List of dts fragment files that will be appended to Barebox's device
+	  tree(s) source when building the dtb file(s).  If multiple files are
+	  listed, they will be appended in order.  Relative filenames will use
+	  the dtc include search path.
+
+	  A preprocessor macro based on the name of the main dts will be
+	  defined, which allows the dts fragments to based on which image of a
+	  multi image build they are being used in.
+
+	  It not intended that this be put into into Barebox defconfig files.
+	  Instead, it's an external build system, like Yocto or buildroot, to
+	  add dts fragments from outside the Barebox source tree into the
+	  Barebox build.
+
 menu "OP-TEE loading"
 
 config OPTEE_SIZE
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 80d76b177..4496f1a70 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -201,6 +201,7 @@ cpp_flags      = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(__cpp_flags)
 ld_flags       = $(KBUILD_LDFLAGS) $(ldflags-y)
 
 dtc_cpp_flags  = -Wp,-MD,$(depfile).pre -nostdinc                        \
+		 -Wp,-MT,$(basename $(notdir $@)).o                      \
 		 -I$(srctree)/arch/$(SRCARCH)/dts/include		 \
 		 -I$(srctree)/dts/include                                \
 		 -I$(srctree)/include                                    \
@@ -335,8 +336,13 @@ cmd_dt_S_dtb = $(srctree)/scripts/gen-dtb-s $(subst -,_,$(*F)) $< $(CONFIG_IMD)
 $(obj)/%.dtb.S: $(obj)/%.dtb $(srctree)/scripts/gen-dtb-s FORCE
 	$(call if_changed,dt_S_dtb)
 
+dts-frags = $(subst $(quote),,$(CONFIG_EXTERNAL_DTS_FRAGMENTS))
 quiet_cmd_dtc = DTC     $@
-cmd_dtc = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
+# For compatibility between make 4.2 and 4.3
+H := \#
+cmd_dtc = /bin/echo -e '$(H)define $(subst -,_,$(*F))_dts 1\n'$(foreach f,$< $(dts-frags),'$(H)include "$(f)"\n') | \
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


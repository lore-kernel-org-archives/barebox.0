Delivery-date: Thu, 01 Aug 2024 15:48:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZW9z-00596b-1B
	for lore@lore.pengutronix.de;
	Thu, 01 Aug 2024 15:48:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZW9y-00011h-Kf
	for lore@pengutronix.de; Thu, 01 Aug 2024 15:48:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NYR2ECRmnIOl3nhZsvMmzw608mFVlkptDm2fqMp/8WA=; b=3BPBGD41UgzMEYhu2u/cwoLkOR
	a9mwnRpANMEDEZHhhJTFh+eI4QoRdBGGUbS/1lEf03jbPJJgg+TCDAVyBytJr8dNyoVZ5FStrOhMw
	ZZ5T9Yy5YMwNhh51es/drG0mX8Nq/RTi26wUB0akxj2EOeMOdd7MQN0Igm1cvILIfPbGgP4Vbm62J
	0RkJMEq4g54wwpzIqfdZHyAmPLsa0wC4bGCv5Lp3xcSfAT3iT7DaxzJg6tJwj4DeT1IYLEBtqvq+J
	2+9rVCXJwGWFCWrEFShOEtSc0u/+2NlxffYKrTHZf3cgkEtBmk3pB184zQWMAlKSSU5byiu/0rLLZ
	GFlii95A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZW9N-00000005Z8r-1q6H;
	Thu, 01 Aug 2024 13:47:25 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZW9L-00000005Z84-0uDo
	for barebox@lists.infradead.org;
	Thu, 01 Aug 2024 13:47:24 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1fc56fd4de1so16086795ad.0
        for <barebox@lists.infradead.org>; Thu, 01 Aug 2024 06:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722520042; x=1723124842; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NYR2ECRmnIOl3nhZsvMmzw608mFVlkptDm2fqMp/8WA=;
        b=hP3CCBE8xAB68FS6W/b7N5KZUTXLpdcXFiiiF+mhMlxdPXh8PRSI5QBH4zuuch+Ltg
         dazTY1c0w+5OpJythywn0xMotiFnpfiLbz3ra1E2KFf+4XfSU3UgkxPaxjh6Yo62C+R+
         oNc+AuXJv1R7mPyCz7n3wsb3fs4kQnYFalfbUORhVDrcax6wAmFJFZUjhCdADaodbNcG
         wm/2Xhnk5u3r+u4qqEdaI9sonkL5txbJanrJFY1lECUX34Mw1K79G9noE0uswfHJn6C4
         bWNyLzs3bLUgPlqyqTp0Ecmvt0qD1z+3KFHE0UExWdCMISZdN4OfjMVv8Y8CHjmEVq3O
         e+ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722520042; x=1723124842;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NYR2ECRmnIOl3nhZsvMmzw608mFVlkptDm2fqMp/8WA=;
        b=FwhUN+kF0XChAta5KgPGq7zeLLtVddq90JnBkVn8FIsR65GT75lWkTdv/dqpj5gxwU
         ZFfr0QypHUTGOjRIf1++PgrOf77xca9Q4lZt9VDkP/9GruYCJK/9/utGqiFVeZd6dvFb
         nZDLqwsd1vdKMQxtvzUu8pGg3YlG6M0mkp7pLW/skGqIIHTm5+HLOVW3QCcS4P2Whtbh
         +0cSnTnweEw3fefzl42EVmcCw80REDbLA143++NUis203CUmsieq9C2HIHNC9DQtHUC5
         gdtRbLQTdPQp9KYjAZ3GADp7eHpCM7gfPITc24xglK9KiW9NqL9RtScsi4v54YZ7MGGW
         i6Fg==
X-Gm-Message-State: AOJu0YwRUq4HxIEeeR/mt6KoP7pDg4bcURwTHAi7wT9NzichJqe8MorO
	aIBdxCLKJ1m7Ui14VFJchKy4bgfVzB85S6GIyfkl+aaKpKkUIZNYTOg7IA==
X-Google-Smtp-Source: AGHT+IEQDKOCKyo/GjeM4HfgsmTcq7T0m2mWOGknZqDUJuQoVADMPN8JbbBDmgakam1CPLJqjL7faw==
X-Received: by 2002:a17:903:1106:b0:1fa:1be4:1e48 with SMTP id d9443c01a7336-1ff5242861emr24657065ad.11.1722520041662;
        Thu, 01 Aug 2024 06:47:21 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fed7ff622asm139336525ad.301.2024.08.01.06.47.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Aug 2024 06:47:21 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Barebox <barebox@lists.infradead.org>
Cc: Anand Moon <linux.amoon@gmail.com>
Date: Thu,  1 Aug 2024 19:17:07 +0530
Message-ID: <20240801134707.11356-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240801134707.11356-1-linux.amoon@gmail.com>
References: <20240801134707.11356-1-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_064723_278792_BBB99268 
X-CRM114-Status: GOOD (  12.65  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] Fix Makefile coding style from spaces to tab
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Adjust indentation from spaces to tab (+optional two spaces) as in
coding style with command like:
	$ sed -e 's/^        /\t/' -i */Makefile

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 dts/Makefile      | 30 +++++++++++++++---------------
 firmware/Makefile |  4 ++--
 images/Makefile   |  2 +-
 lib/Makefile      |  2 +-
 4 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/dts/Makefile b/dts/Makefile
index fb51acef7c..8695a87333 100644
--- a/dts/Makefile
+++ b/dts/Makefile
@@ -5,18 +5,18 @@ CPP ?= cpp
 # Disable noisy checks by default
 ifeq ($(findstring 1,$(DTC_VERBOSE)),)
 DTC_FLAGS += -Wno-unit_address_vs_reg \
-        -Wno-unit_address_format \
-        -Wno-avoid_unnecessary_addr_size \
-        -Wno-alias_paths \
-        -Wno-graph_child_address \
-        -Wno-simple_bus_reg \
-        -Wno-unique_unit_address \
-        -Wno-pci_device_reg
+	-Wno-unit_address_format \
+	-Wno-avoid_unnecessary_addr_size \
+	-Wno-alias_paths \
+	-Wno-graph_child_address \
+	-Wno-simple_bus_reg \
+	-Wno-unique_unit_address \
+	-Wno-pci_device_reg
 endif
 
 ifneq ($(findstring 2,$(DTC_VERBOSE)),)
 DTC_FLAGS += -Wnode_name_chars_strict \
-        -Wproperty_name_chars_strict
+	-Wproperty_name_chars_strict
 endif
 
 MAKEFLAGS += -rR --no-print-directory
@@ -130,15 +130,15 @@ quiet_cmd_clean    = CLEAN   $(obj)
 dtc-tmp = $(subst $(comma),_,$(dot-target).dts.tmp)
 
 dtc_cpp_flags  = -Wp,-MD,$(depfile).pre.tmp -nostdinc		\
-                 -Iinclude -I$(src) -Isrc -Itestcase-data	\
-                 -undef -D__DTS__
+	         -Iinclude -I$(src) -Isrc -Itestcase-data	\
+	         -undef -D__DTS__
 
 quiet_cmd_dtc = DTC     $@
 cmd_dtc = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
-        $(DTC) -O dtb -o $@ -b 0 \
-                -i $(src) $(DTC_FLAGS) \
-                -d $(depfile).dtc.tmp $(dtc-tmp) ; \
-        cat $(depfile).pre.tmp $(depfile).dtc.tmp > $(depfile)
+	$(DTC) -O dtb -o $@ -b 0 \
+	        -i $(src) $(DTC_FLAGS) \
+	        -d $(depfile).dtc.tmp $(dtc-tmp) ; \
+	cat $(depfile).pre.tmp $(depfile).dtc.tmp > $(depfile)
 
 $(obj)/%.dtb: $(src)/%.dts FORCE
 	$(call if_changed_dep,dtc)
@@ -148,7 +148,7 @@ all_arch: $(ARCH_DTB)
 	@:
 
 RCS_FIND_IGNORE := \( -name SCCS -o -name BitKeeper -o -name .svn -o -name CVS \
-                   -o -name .pc -o -name .hg -o -name .git \) -prune -o
+	           -o -name .pc -o -name .hg -o -name .git \) -prune -o
 
 PHONY += clean_arch
 clean_arch: __clean-files = $(ARCH_DTB)
diff --git a/firmware/Makefile b/firmware/Makefile
index d5e4cee859..7265c55c42 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -125,9 +125,9 @@ $(patsubst %.gen.o,$(obj)/%.gen.o, $(obj-pbl-y)): $(obj)/%.gen.o: $(fwdep-requir
 pbl-y += $(pbl-fwext-y)
 
 targets := $(patsubst $(obj)/%,%, \
-                                $(shell find $(obj) -name \*.gen.S 2>/dev/null))
+	                        $(shell find $(obj) -name \*.gen.S 2>/dev/null))
 targets += $(patsubst $(obj)/%,%, \
-                                $(shell find $(obj) -name \*.extgen.S 2>/dev/null))
+	                        $(shell find $(obj) -name \*.extgen.S 2>/dev/null))
 
 # just to build a built-in.o. Otherwise compilation fails when no
 # firmware is built.
diff --git a/images/Makefile b/images/Makefile
index c0105609ee..9007911278 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -236,5 +236,5 @@ clean-files := *.pbl *.pblb *.elf *.map start_*.imximg *.img barebox.z start_*.k
 	start_*.kwbuartimg *.socfpgaimg *.mlo *.t20img *.t20img.cfg *.t30img \
 	*.t30img.cfg *.t124img *.t124img.cfg *.mlospi *.mlo *.mxsbs *.mxssd *.rkimg \
 	start_*.simximg start_*.usimximg start_*.pimximg start_*.psimximg *.zynqimg \
-        *.image *.swapped *.missing-firmware
+	*.image *.swapped *.missing-firmware
 clean-files += pbl.lds
diff --git a/lib/Makefile b/lib/Makefile
index 0dde52527f..b3d024035c 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -101,7 +101,7 @@ CFLAGS_ubsan.o := -fno-stack-protector
 libfdt_files = fdt.o fdt_ro.o fdt_wip.o fdt_rw.o fdt_sw.o fdt_strerror.o \
 	                      fdt_empty_tree.o
 $(foreach file, $(libfdt_files), \
-        $(eval CFLAGS_$(file) = -I $(srctree)/scripts/dtc/libfdt) \
+	$(eval CFLAGS_$(file) = -I $(srctree)/scripts/dtc/libfdt) \
 	$(eval CFLAGS_$(file:%.o=%.pbl.o) = -I $(srctree)/scripts/dtc/libfdt))
 
 obj-pbl-$(CONFIG_LIBFDT) += $(libfdt_files)
-- 
2.44.0



